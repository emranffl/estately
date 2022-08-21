<?php
require __DIR__ . '/../resources/DB/ORM/instance.php';
foreach (glob(__DIR__ . '/../functionalities/*.php') as $functionalities) require $functionalities;

if (session_status() == PHP_SESSION_NONE)
    session_start();

// redirect on login page visit after logged in
if (isClientLoggedIn())
    header('Location: /project_estately/index.php');

$email = $password = '';
$errors = array('email' => '', 'password' => '');

//* on form submit
if (isset($_POST['login']) && $_POST['login'] == 'true') {
    $email = $_POST['email'];
    $password = $_POST['password'];

    // check email
    if (empty($email)) {
        $errors['email'] = 'email cannot be empty';
    } else if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $errors['email'] = 'email must be valid';
    }

    // check password
    if (empty($password)) {
        $errors['password'] = 'password cannot be empty';
    } elseif (strlen($password) < 4 || strlen($password) > 25) {
        $errors['password'] = 'password length out of range';
    }

    // on valid credential input
    if (!array_filter($errors)) {

        try {
            // fetch here
            /**
             * returns user credentials as object
             * like {name: 'John Doe' email: 'example@example.com' password: 'user_password'}
             */
            $user = R::getAssocRow(
                "SELECT name, email, password FROM user WHERE email = '" . $email . "'"
            );
            $user = $user[0]; // extract user from array 
        } catch (PDOException $e) {
            consoleError($e->getMessage());
        }

        // close connection
        R::close();


        //* validate user
        if ($user) {
            if ($user['password'] != $password)
                $errors['password'] = 'password mismatch';
            else {
                $errors['password'] = '';

                //* set server sessions 
                $_SESSION['name'] = $user['name'];
                $_SESSION['email'] = $user['email'];

                //* set browser cookies
                setcookie('name', $user['name'], time() + (86400 * 30), '/');
                setcookie('email', $user['email'], time() + (86400 * 30), '/');

                //* redirect after login
                header('Location: /project_estately/user/dashboard.php', true, 307);

                // stop further php execution
                exit();
            }
        } else {
            $errors['email'] = 'user not found';
        }
    }
}

?>

<!DOCTYPE html>

<head>
    <title>Login | Estately</title>
</head>
<?php require('../layouts/app/headernav.php') ?>

<body>

    <section class="container p-5">

        <div class="row row-cols-1 row-cols-lg-2 ">
            <div class="col">
                <h4 class="text-center">Login</h4>
                <form class="mt-5" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" enctype="application/x-www-form-urlencoded">
                    <div class="mb-2">
                        <label for="loginEmail" class="form-label">Email</label>
                        <input type="email" name="email" value="<?php echo htmlspecialchars($email) ?>" class="form-control <?php echo $errors['email'] ? 'is-invalid' : '' ?>" id="loginEmail" placeholder="example@domain.com">
                        <small class="invalid-feedback" id="loginEmailFeedback"><?php echo $errors['email']; ?></small>
                    </div>

                    <div class="mb-4">
                        <label for="loginPassword" class="form-label">Password</label>
                        <input type="password" name="password" value="<?php echo htmlspecialchars($password) ?>" class="form-control <?php echo $errors['password'] ? 'is-invalid' : '' ?>" id="loginPassword" placeholder="4-25 characters">
                        <small class="invalid-feedback" id="loginPasswordFeedback"><?php echo $errors['password'] ?></small>
                    </div>

                    <a href="reset.php" class="link-danger text-decoration-none fs-6">Forgot password?</a>

                    <div class="text-center text-md-start mt-2 pt-2">
                        <button type="submit" name="login" value="true" class="btn btn-sm btn-primary w-75 w-md-100">Login</button>
                        <small class="d-block mt-2 me-1">Don't have an account?
                            <a href="user/signup.php" class="link-primary text-decoration-none fs-6">Sign Up</a>
                        </small>
                    </div>

                </form>

                <div class="d-flex align-items-center mb-3">
                    <hr class="flex-grow-1">
                    <p class="text-center fw-bold mx-3 mb-0">Or</p>
                    <hr class="flex-grow-1">
                </div>

                <h5 class="text-center">Continue with</h5>
                <div class="d-flex flex-row align-items-center justify-content-center mt-3">
                    <button type="button" class="btn btn-primary btn-floating mx-1">
                        <i class="bi bi-google"></i>
                    </button>

                    <button type="button" class="btn btn-primary btn-floating mx-1">
                        <i class="bi bi-facebook"></i>
                    </button>

                    <button type="button" class="btn btn-primary btn-floating mx-1">
                        <i class="bi bi-twitter"></i>
                    </button>
                </div>
            </div>
            <div class="col">
                <div class="d-flex justify-content-center align-items-center h-100">
                    <img src="resources/images/login-decoration-image.svg" class="img-fluid" alt="decoration image">
                </div>
            </div>
        </div>

    </section>

    <?php require('../layouts/app/footer.php') ?>
</body>