<?php
require __DIR__ . '/../resources/DB/ORM/instance.php';
foreach (glob(__DIR__ . '/../functionalities/*.php') as $functionalities) require $functionalities;

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
    <title>Sign Up | Estately</title>
</head>
<?php require('../layouts/app/headernav.php') ?>

<body>

    <section class="container">please design me</section>

    <?php require('../layouts/app/footer.php') ?>
</body>