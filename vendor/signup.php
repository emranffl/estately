<?php
require __DIR__ . '/../resources/DB/ORM/instance.php';
foreach (glob(__DIR__ . '/../functionalities/*.php') as $functionalities) require $functionalities;

if (session_status() == PHP_SESSION_NONE)
    session_start();

// redirect on signup page visit after logged in
if (isClientLoggedIn('vendor'))
    header('Location: /project_estately/index.php');

$name = $mobile = $documentId = $email = $password = '';
$errors = array('name' => '', 'mobile' => '', 'documentId' => '', 'email' => '', 'password' => '');

//* on form submit
if (isset($_POST['signup']) && $_POST['signup'] == 'true') {
    $name = $_POST['name'];
    $mobile = $_POST['mobile'];
    $documentId = $_POST['documentId'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    // check name
    if (empty($name)) {
        $errors['name'] = 'name cannot be empty';
    }
    // elseif (strlen($name) < 4 || strlen($name) > 25) {
    //     $errors['name'] = 'name length out of range';
    // }

    // check mobile
    if (empty($mobile)) {
        $errors['mobile'] = 'mobile cannot be empty';
    } elseif (strlen($mobile) != 11) {
        $errors['mobile'] = 'mobile length out of range';
    }

    // check documentId
    if (empty($documentId)) {
        $errors['documentId'] = 'document ID cannot be empty';
    } else {
        if (strlen($documentId) != 17)
            if (strlen($documentId) != 13)
                if (strlen($documentId) != 10)
                    $errors['documentId'] = 'document ID length out of range';
    }

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
            $status = R::exec("
                INSERT INTO vendor (name, mobile_no, document_id, email, password)
                VALUES ('" . $name . "', '" . $mobile . "', '" . $documentId . "', '" . $email . "', '" . $password . "')
            ");
        } catch (PDOException $e) {
            consoleError($e->getMessage());
        }

        // close connection
        R::close();

        if ($status) {
            //* set server sessions 
            $_SESSION['vendorname'] = $name;
            $_SESSION['vendoremail'] = $email;

            //* set browser cookies
            setcookie('vendorname', $name, time() + (86400 * 30), '/');
            setcookie('vendoremail', $email, time() + (86400 * 30), '/');

            //* redirect after signup
            header('Location: /project_estately/vendor/dashboard.php?vendor=' . $email, true, 307);

            // stop further php execution
            exit();
        } else consoleError('Facing trouble while signing up, try again later.');
    }
}
?>

<!DOCTYPE html>

<head>
    <title>Vendor Signup | Estately</title>
    <link rel="stylesheet" href="./css/vendor-signup-signin.css">
</head>
<?php require('../layouts/masterheader.php') ?>

<body>

    <section class="container-fluid vh-100 vw-100">
        <div class="row h-100 p-2 d-flex">
            <div class="col col-12 col-lg-4 d-lg-flex flex-column justify-content-between gap-5 p-4" id="left">
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
            <div class="col col-12 col-lg-8 p-4 p-lg-5" id="right">
                <h1 class="mb-3 fs-3">Set up your vendor account with Estately.</h1>

                <form class="" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" enctype="application/x-www-form-urlencoded">
                    <div class="mb-3">
                        <label for="name" class="form-label mb-0">Name</label>
                        <input type="text" name="name" class="form-control <?php echo $errors['name'] ? 'is-invalid' : '' ?>" placeholder="John Doe" value="<?php echo htmlspecialchars($name) ?>" id="name">
                        <small class="invalid-feedback" id="nameFeedback"><?php echo $errors['name']; ?></small>
                    </div>
                    <div class="mb-3">
                        <label for="mobile" class="form-label mb-0">Mobile</label>
                        <div class="input-group <?php echo $errors['mobile'] ? 'is-invalid' : '' ?>">
                            <span class="input-group-text">+88</span>
                            <input type="tel" name="mobile" class="form-control" placeholder="01612345678" value="<?php echo htmlspecialchars($mobile) ?>" id="mobile">
                        </div>
                        <small class="invalid-feedback" id="mobileFeedback"><?php echo $errors['mobile']; ?></small>
                    </div>
                    <div class="mb-3">
                        <label for="documentId" class="form-label mb-0">Document ID</label>
                        <input type="text" name="documentId" class="form-control <?php echo $errors['documentId'] ? 'is-invalid' : '' ?>" placeholder="19972628204000004" value="<?php echo htmlspecialchars($documentId) ?>" id="documentId">
                        <small class="invalid-feedback" id="documentIdFeedback"><?php echo $errors['documentId']; ?></small>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label mb-0">Email</label>
                        <input type="email" name="email" class="form-control <?php echo $errors['email'] ? 'is-invalid' : '' ?>" placeholder="example@domain.com" value="<?php echo htmlspecialchars($email) ?>" id="email">
                        <small class="invalid-feedback" id="emailFeedback"><?php echo $errors['email']; ?></small>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label mb-0">Password</label>
                        <input type="password" name="password" class="form-control <?php echo $errors['password'] ? 'is-invalid' : '' ?>" placeholder="4-25 characters" value="<?php echo htmlspecialchars($password) ?>" id="password">
                        <small class="invalid-feedback" id="passwordFeedback"><?php echo $errors['password']; ?></small>
                    </div>

                    <div class="mt-2 d-flex gap-2 align-items-end">
                        <button type="submit" name="signup" value="true" class="btn px-3 py-2 shadow-none fw-bold custom-btn">Create Account</button>
                        <span>Already have an account? <a href="vendor/index.php">Login</a> instead.</span>
                    </div>
                </form>
            </div>
        </div>
    </section>

</body>