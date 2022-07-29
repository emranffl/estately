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
    <title>Vendor Profile | Estately</title>
</head>
<?php require('../layouts/vendor/headernav.php') ?>

<body>

    <section class="container">please design me</section>

    <?php require('../layouts/vendor/footer.php') ?>
</body>