<?php
require __DIR__ . '/../resources/DB/ORM/instance.php';
require __DIR__ . '/../functionalities/console.php';

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
	<title>Vendor Signup | Estately</title>
</head>
<?php require('../layouts/vendor/headernav.php') ?>

<body>
    
    <section class="container">please design me</section>
    
    <?php require('../layouts/vendor/footer.php') ?>
</body>