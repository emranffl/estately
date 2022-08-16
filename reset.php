<?php
require __DIR__ . '/resources/DB/ORM/instance.php';
foreach (glob(__DIR__ . '/functionalities/*.php') as $functionalities) require $functionalities;

try {
    // fetch here
    $var = R::getAll('Select * from user');
} catch (PDOException $e) {
    consoleError($e->getMessage());
}

consoleLog($var);

// close connection
R::close();
?>

<!DOCTYPE html>

<head>
    <title>Reset Password | Estately</title>
    <style>
        body {
            background: rgb(240, 235, 235);
        }

        .row {
            background: white;
            border-radius: 30px;
        }

        img {
            border-bottom-left-radius: 30px;
            border-top-left-radius: 30px;
        }

        .btn {
            border: none;
            outline: none;
            height: 50px;
            width: 100%;

            border-radius: 4px;
            font-weight: bold;
        }
    </style>
</head>
<?php require('layouts/app/headernav.php') ?>

<body>

    <section class="container">
        <div class="my-4 mx-5">
            <div class="row no-gutters">
                <div class="col-lg-5">
                    <img src="a1.jpg" class="img-fluid" alt="">
                </div>
                <div class="col-lg-7 px-5 pt-5 ">
                    <h1 class="font-weight-bold py-3">Reset Password</h1>
                    <h4>Please choose your new password</h4>
                    <form action="">
                        <div class="form-row">
                            <div class="col-lg-7">
                                <label for="Username">Email</label>
                                <input type="email" placeholder="Email-Address" class="form-control my-3 p-2">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <label for="Username">New Password</label>
                                <input type="password" placeholder="******" class="form-control my-3 p-2">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <label for="Username">Confirm Password</label>
                                <input type="password" placeholder="******" class="form-control my-3 p-2">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <button type="button" class="btn btn-primary">Save New password</button>

                            </div>
                        </div>

                        <div class="form-row">
                            <div class="col-lg-7">
                                <button type="button" class="btn btn-link">Back To Login</button>

                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </section>

    <?php require('layouts/app/footer.php') ?>
</body>