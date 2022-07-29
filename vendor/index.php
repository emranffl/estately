<?php
require __DIR__ . '/../resources/DB/ORM/instance.php';
foreach (glob(__DIR__ . '/../functionalities/*.php') as $functionalities) require $functionalities;

try {
    // fetch here
    $var = R::getAll('Select * from vendor');
} catch (PDOException $e) {
    consoleError($e->getMessage());
}

consoleLog($var);

// close connection
R::close();
?>

<!DOCTYPE html>

<head>
    <title>Vendor Login | Estately</title>
</head>
<?php require('../layouts/vendor/headernav.php') ?>

<body>

    <section class="container p-5">
        <div class="row row-cols-1 row-cols-lg-2 mx-0 p-5">
            <div class="col p-5">
                <form class="">
                    <div class="mb-2">
                        <label for="loginEmail" class="form-label">Email</label>
                        <input type="email" class="form-control" id="loginEmail" placeholder="example@domain.com" required>
                        <small class="invalid-feedback" id="loginEmailFeedback"></small>
                    </div>

                    <div class="mb-4">
                        <label for="loginPassword" class="form-label">Password</label>
                        <input type="text" class="form-control" id="loginPassword" placeholder="4-25 characters" required>
                        <small class="invalid-feedback" id="loginPasswordFeedback"></small>
                    </div>

                    <a href="reset.php" class="btn ps-0 pt-0 link-danger">Forgot password?</a>

                    <div class="text-center text-md-start mt-2 pt-2">
                        <button type="submit" class="btn btn-sm btn-primary w-75 w-md-100">Login</button>
                        <small class="d-block fw-bold mt-2">Don't have an account? <a href="signup.php" class="btn ps-0 pt-0 link-primary">Sign Up</a></small>
                    </div>

                </form>
            </div>
            <div class="col">
                <img src="resources/images/login-decoration-image.webp" class="img-fluid" alt="decoration image">
            </div>
        </div>

    </section>

    <?php require('../layouts/vendor/footer.php') ?>
</body>