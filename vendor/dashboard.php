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
    <title>Vendor Dashboard | Estately</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="./styles/vendor-dashboard.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>

<body>

    <section class="container-fluid">
        <div class="row vh-100">
            <div class="col col-12 col-lg-1 bg-primary position-sticky">1</div>
            <div class="col col-12 bg-secondary">2</div>
            <div class="col col-12 bg-primary">3</div>
        </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>