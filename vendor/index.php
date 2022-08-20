<?php
require __DIR__ . '/../resources/DB/ORM/instance.php';
foreach (glob(__DIR__ . '/../functionalities/*.php') as $functionalities) require $functionalities;

if (session_status() == PHP_SESSION_NONE)
    session_start();

// redirect on login page visit after logged in
if (isClientLoggedIn('vendor_'))
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
             * returns vendor credentials as object
             * like {name: 'John Doe' email: 'example@example.com' password: 'vendor_password'}
             */
            $vendor = R::getAssocRow(
                "SELECT name, email, password FROM vendor WHERE email = '" . $email . "'"
            );
            $vendor = $vendor[0]; // extract vendor from array 
        } catch (PDOException $e) {
            consoleError($e->getMessage());
        }

        // close connection
        R::close();


        //* validate vendor
        if ($vendor) {
            if ($vendor['password'] != $password)
                $errors['password'] = 'password mismatch';
            else {
                $errors['password'] = '';

                //* set server sessions 
                $_SESSION['vendor_name'] = $vendor['vendor_name'];
                $_SESSION['vendor_email'] = $vendor['vendor_email'];

                //* set browser cookies
                setcookie('vendor_name', $vendor['name'], time() + (86400 * 30), '/');
                setcookie('vendor_email', $vendor['email'], time() + (86400 * 30), '/');

                //* redirect after login
                header('Location: /project_estately/vendor/dashboard.php?vendor=' . $vendor['email'], true, 307);

                // stop further php execution
                exit();
            }
        } else {
            $errors['email'] = 'vendor not found';
        }
    }
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vendor Login | Estately</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/vendor-signup-signin.css">
</head>

<body>

    <section class="container-fluid vh-100 vw-100">
        <div class="row h-100 p-2 d-flex">
            <div class="col col-12 col-lg-3 d-lg-flex flex-column justify-content-between gap-5 p-4" id="left">
                <div class="top">
                    <a href="../index.php">
                        <h1 class="fs-4 fw-bold">Estately</h1>
                    </a>
                </div>
                <div class="mid">
                    <h1 class="fs-1 fw-bold lh-1">Start your journey with us.</h1>
                    <p class="mb-0">Discover the world's best real estate management service.</p>
                </div>
                <div class="bot d-none d-lg-block">
                    <div id="carouselExampleSlidesOnly" class="carousel slide carousal-item-bg border-radius-12 p-3" data-bs-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <p>Amazing service, simply. Would 10/10 recommend. Estately has allowed me to carry my business to the next level.</p>
                                <div class="reviewer d-flex align-items-center gap-3">
                                    <div class="reviewer-image" id="item1"></div>
                                    <div class="reviewer-info d-flex flex-column">
                                        <h1 class="mb-0 fs-5">Stacey Thewys</h1>
                                        <p class="mb-0 fs-6 text-muted">Senior Sales Associate</p>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item ">
                                <p>Fantastic customer support and super satisfying UI. Love using this piece of masterpiece for management.</p>
                                <div class="reviewer d-flex align-items-center gap-3">
                                    <div class="reviewer-image" id="item2"></div>
                                    <div class="reviewer-info d-flex flex-column">
                                        <h1 class="mb-0 fs-5 fw-bold">Cathy Goodwyn</h1>
                                        <p class="mb-0 fs-6 text-muted">Tax Accountant</p>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item ">
                                <p>Excellently built system, and has allowed me to seamlessly keep track of my properties, with very good UX.</p>
                                <div class="reviewer d-flex align-items-center gap-3">
                                    <div class="reviewer-image" id="item3"></div>
                                    <div class="reviewer-info d-flex flex-column">
                                        <h1 class="mb-0 fs-5 fw-bold">Randie Cello</h1>
                                        <p class="mb-0 fs-6 text-muted">Executive Secretary</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col col-12 col-lg-9 p-4 p-lg-5" id="right">
                <h1 class="mb-3 fs-3">Login to you vendor account with Estately.</h1>
                <p class="mb-3">Don't have an account? <a href="./signup.php">Sign Up</a> instead.</p>
                <!-- Signup form -->
                <form class="mt-5" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" enctype="application/x-www-form-urlencoded" id="signup-form">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label mb-0">Email address</label>
                        <input type="email" name="email" value="<?php echo htmlspecialchars($email) ?>" class="form-control <?php echo $errors['email'] ? 'is-invalid' : '' ?>" id="exampleInputEmail1">
                        <small class="invalid-feedback" id="loginEmailFeedback"><?php echo $errors['email']; ?></small>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label mb-0">Password</label>
                        <input type="password" name="password" value="<?php echo htmlspecialchars($password) ?>" class="form-control <?php echo $errors['password'] ? 'is-invalid' : '' ?>" id="exampleInputPassword1">
                        <small class="invalid-feedback" id="loginPasswordFeedback"><?php echo $errors['password'] ?></small>
                    </div>
                    <button type="submit" name="login" value="true" class="btn custom-btn px-5 py-3 shadow-none fw-bold">Login</button>
                </form>
            </div>
        </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>

</html>