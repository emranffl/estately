<?php
require __DIR__ . '/../resources/DB/ORM/instance.php';
foreach (glob(__DIR__ . '/../functionalities/*.php') as $functionalities) require $functionalities;

$vendor = isset($_GET['vendor']) ? $_GET['vendor'] : null;
// : header('Location: /project_estately/vendor/index.php', true, 307);

if (session_status() == PHP_SESSION_NONE)
    session_start();

//* create a new session if cookies exist

if (
    session_status() != PHP_SESSION_DISABLED && !isset($_COOKIE['vendorname']) && !isset($_COOKIE['vendoremail']) && $vendor
) {
    session_unset();
    header('Location: /project_estately/vendor/index.php', true, 307);
} else if (session_status() != PHP_SESSION_DISABLED && isset($_COOKIE['vendorname']) && isset($_COOKIE['vendoremail']) && !$vendor) {
    $_SESSION['vendorname'] = $_COOKIE['vendorname'];
    $_SESSION['vendoremail'] = $_COOKIE['vendoremail'];

    header('Location: /project_estately/vendor/dashboard.php?vendor=' . $_COOKIE['vendoremail'], true, 307);
}

if (!isClientLoggedIn('vendor'))
    header('Location: /project_estately/vendor/index.php', true, 307);

//* unset session and remove cookies on logout
if (
    session_status() == PHP_SESSION_ACTIVE
    && isset($_SESSION['vendorname']) && isset($_COOKIE['vendorname'])
    && $_GET['session'] == 'end'
) {
    // remove server sessions
    session_unset();
    // remove browser cookies
    setcookie('vendorname', '', time() - 60, '/');
    setcookie('vendoremail', '', time() - 60, '/');

    // redirect to login page
    header('Location: /project_estately/vendor/index.php', true, 307);
    exit();
}

$rentedApartmentDataSQL = "
    SELECT
    *
    FROM
        vendor v
    JOIN property p ON
        v.email = p.vendor_email 
        AND p.post = 'public' 
        AND p.type = 'Apartment' 
        AND p.enlisted_for = 'Rent'
    LEFT JOIN featured f ON f.id = p.id
    LEFT JOIN address ad ON ad.id = p.id
    LEFT JOIN amenity am ON am.id = p.id
    LEFT JOIN apartment ap ON ap.id = p.id
    LEFT JOIN rent_info ri ON ri.id = p.id
    WHERE v.email = '$vendor'";

$leasedApartmentDataSQL = "
    SELECT
    *
    FROM
        vendor v
    JOIN property p ON
        v.email = p.vendor_email 
        AND p.post = 'public' 
        AND p.type = 'Apartment' 
        AND p.enlisted_for = 'Lease'
    LEFT JOIN featured f ON f.id = p.id
    LEFT JOIN address ad ON ad.id = p.id
    LEFT JOIN amenity am ON am.id = p.id
    LEFT JOIN apartment ap ON ap.id = p.id
    LEFT JOIN lease_info li ON li.id = p.id
    WHERE v.email = '$vendor'";

$rentedStudioDataSQL = "
    SELECT
    *
    FROM
        vendor v
    JOIN property p ON
        v.email = p.vendor_email 
        AND p.post = 'public' 
        AND p.type = 'Studio' 
        AND p.enlisted_for = 'Rent'
    LEFT JOIN featured f ON f.id = p.id
    LEFT JOIN address ad ON ad.id = p.id
    LEFT JOIN amenity am ON am.id = p.id
    LEFT JOIN studio st ON st.id = p.id
    LEFT JOIN rent_info ri ON ri.id = p.id
    WHERE v.email = '$vendor'";

$leasedStudioDataSQL = "
    SELECT
    *
    FROM
        vendor v
    JOIN property p ON
        v.email = p.vendor_email 
        AND p.post = 'public' 
        AND p.type = 'Studio' 
        AND p.enlisted_for = 'Lease'
    LEFT JOIN featured f ON f.id = p.id
    LEFT JOIN address ad ON ad.id = p.id
    LEFT JOIN amenity am ON am.id = p.id
    LEFT JOIN studio st ON st.id = p.id
    LEFT JOIN lease_info li ON li.id = p.id
    WHERE v.email = '$vendor'";

$draftPropertyDataSQL = "
    SELECT
    *
    FROM
        vendor v
    JOIN property p ON
        v.email = p.vendor_email 
        AND p.post = 'draft'  
    LEFT JOIN featured f ON f.id = p.id
    LEFT JOIN address ad ON ad.id = p.id
    LEFT JOIN amenity am ON am.id = p.id
    LEFT JOIN apartment ap ON ap.id = p.id
    LEFT JOIN studio st ON st.id = p.id
    LEFT JOIN rent_info ri ON ri.id = p.id
    LEFT JOIN lease_info li ON li.id = p.id
    WHERE v.email = '$vendor'";

$tenantProfileDataSQL = "
    SELECT DISTINCT
        u.email,
        u.name,
        u.mobile_no,
        u.document_id,
        ap.updated_at
    FROM
        user u
    JOIN application ap ON
        u.email = ap.user_email AND ap.status = 'Approved'
    LEFT JOIN property p ON
        ap.property_id = p.id AND p.availability_status <> 'vacant'
    LEFT JOIN vendor v ON
        p.vendor_email = v.email
    WHERE
    v.email = '$vendor'";

$applicationsSQL = "
    SELECT
    *
    FROM
        application a
    JOIN property p ON
        a.property_id = p.id 
        AND p.availability_status = 'vacant' 
        AND p.post = 'public' 
        AND p.type = 'Apartment' 
        AND p.enlisted_for = 'Rent'
    LEFT JOIN vendor v ON v.email = p.vendor_email
    WHERE v.email = '$vendor'
";

// echo $rentedApartmentDataSQL;

try {
    // fetch here
    $vendor = R::getAssocRow("SELECT * FROM vendor WHERE email = '$vendor'")[0];
    $retrievedRentedApartmentData = R::getAssocRow($rentedApartmentDataSQL);
    $retrievedLeasedApartmentData = R::getAssocRow($leasedApartmentDataSQL);
    $retrievedRentedStudioData = R::getAssocRow($rentedStudioDataSQL);
    $retrievedLeasedStudioData = R::getAssocRow($leasedStudioDataSQL);
    $retrievedDraftPropertyData = R::getAssocRow($draftPropertyDataSQL);
    $retrievedTenantProfileData = R::getAssocRow($tenantProfileDataSQL);

    $applications = R::getAssocRow($applicationsSQL);
} catch (PDOException $e) {
    consoleError($e->getMessage());
}

// consoleLog($rentedApartmentDataSQL);
// consoleLog($retrievedRentedApartmentData);
// consoleLog($leasedApartmentDataSQL);
// consoleLog($retrievedLeasedApartmentData);
// consoleLog($rentedStudioDataSQL);
// consoleLog($retrievedRentedStudioData);
// consoleLog($leasedStudioDataSQL);
// consoleLog($retrievedLeasedStudioData);
// consoleLog($draftPropertyDataSQL);
consoleLog($retrievedDraftPropertyData);
// consoleLog($tenantProfileDataSQL);
// consoleLog($retrievedTenantProfileData);

// close connection
R::close();
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <title>Vendor Dashboard | Estately</title>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="./../styles/styles.css">
    <link rel="stylesheet" href="./css/vendor-dashboard.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script defer src="https://kit.fontawesome.com/51c0086ffa.js" crossorigin="anonymous"></script>
    <script defer src="./js/vendor-dashboard.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</head>

<body>
    <?php
    require __DIR__ . '/../components/global/loadinganimation.php';
    ?>

    <section class="container-fluid g-0" id="master">
        <div class="row g-0" id="master-row">
            <div class="col col-9 d-md-none p-4 primary-bg">
                <a class="text-decoration-none" href="/project_estately/index.php">
                    <h1 class="fs-3 mb-0">Estately</h1>
                </a>
            </div>
            <div class="col col-3 d-md-none d-flex justify-content-center align-items-center primary-bg">
                <div class="user-image"></div>
            </div>
            <div class="col col-12 col-md-3 col-lg-3 order-md-2 p-4 primary-bg" id="greet">
                <span class="fs-5 mb-0 d-md-none">Good day, <?= $vendor['name'] ?>!</span>
                <div class="d-none d-md-flex flex-column justify-content-between h-100" id="greet-md">
                    <div class="wrapper">
                        <span class="fs-5 mb-3">Good day, <?= $vendor['name'] ?>!</span>
                        <div class="tile d-flex py-3 gap-4 align-items-center">
                            <h1><i class="fa-solid fa-wallet"></i></h1>
                            <div class="wrapper">
                                <h1 class="fs-2 mb-0">$450,000</h1>
                                <p class="mb-0">Bank Balance</p>
                            </div>
                        </div>
                        <div class="tile d-flex py-3 gap-4 align-items-center">
                            <h1><i class="fa-solid fa-calendar-check"></i></h1>
                            <div class="wrapper">
                                <h1 class="fs-2 mb-0">230</h1>
                                <p class="mb-0">New Appointments</p>
                            </div>
                        </div>
                    </div>
                    <div class="wrapper">
                        <div class="tile d-flex flex-column align-items-center justify-content-center py-3 quaternary-bg rounded-3">
                            <h1 class="mb-0">54</h1>
                            <p class="mb-0">New Clients</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col col-12 col-md-8 col-lg-8 order-md-3 primary-bg" id="main">

                <!-- //* dashboard -->

                <div class="dashboard p-4" id="dashboard">
                    <h1 class="fs-3 mb-4">Dashboard</h1>
                    <div class="row g-0">
                        <div class="col col-12 col-md-6 col-lg-4 pe-3 mb-3">
                            <div class="current p-4 rounded-3 secondary-bg">
                                <h1 class="fs-4 mb-0">Occupancy</h1>
                                <p>Currently booked properties.</p>
                                <div class="current-summary d-flex justify-content-between align-items-center mb-3">
                                    <div class="wrapper">
                                        <h1 class="mb-0 fs-3">10</h1>
                                        <p class="mb-0">Occupied</p>
                                    </div>
                                    <hr>
                                    <div class="wrapper">
                                        <h1 class="mb-0 fs-3">60%</h1>
                                        <p class="mb-0">Booked</p>
                                    </div>
                                </div>
                                <div class="current-data">
                                    <div class="tiles">
                                        <div class="tile d-flex align-items-center gap-3 mb-3">
                                            <h1 class="fs-2 mb-0"><i class="fa-solid fa-circle-check accent-color"></i></h1>
                                            <div class="wrapper">
                                                <h1 class="fs-5 mb-0">Madisson Beer</h1>
                                                <p class="mb-0">Singer</p>
                                            </div>
                                        </div>
                                        <div class="tile d-flex align-items-center gap-3 mb-3">
                                            <h1 class="fs-2 mb-0"><i class="fa-solid fa-circle-check accent-color"></i></h1>
                                            <div class="wrapper">
                                                <h1 class="fs-5 mb-0">Madisson Beer</h1>
                                                <p class="mb-0">Singer</p>
                                            </div>
                                        </div>
                                        <div class="tile d-flex align-items-center gap-3 mb-3">
                                            <h1 class="fs-2 mb-0"><i class="fa-solid fa-circle-check accent-color"></i></h1>
                                            <div class="wrapper">
                                                <h1 class="fs-5 mb-0">Madisson Beer</h1>
                                                <p class="mb-0">Singer</p>
                                            </div>
                                        </div>
                                        <div class="tile d-flex align-items-center gap-3 mb-3">
                                            <h1 class="fs-2 mb-0"><i class="fa-solid fa-circle-check accent-color"></i></h1>
                                            <div class="wrapper">
                                                <h1 class="fs-5 mb-0">Madisson Beer</h1>
                                                <p class="mb-0">Singer</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col col-12 col-md-6 col-lg-8 pe-3 mb-3">
                            <div class="enlist p-4 rounded-3 secondary-bg">
                                <h1 class="fs-4 mb-0">Add Property</h1>
                                <p>Upload new properties up for rent.</p>
                                <button type="button" class="btn btn-primary shadow-none custom-btn" data-bs-toggle="modal" data-bs-target="#addPropertyModal">Upload</button>
                            </div>
                        </div>
                        <div class="col col-12 col-md-12 col-lg-12 pe-3 mb-3">
                            <div class="uploaded-properties p-4 rounded-3 secondary-bg">
                                <h1 class="fs-4 mb-0">Uploaded</h1>
                                <p>Properties you have enlisted for renting.</p>
                                <div class="uploaded-data">
                                    <div class="tiles">
                                        <div class="tile d-flex align-items-center gap-3 mb-3">
                                            <h1 class="fs-2 mb-0"><i class="fa-solid fa-hourglass-start accent-color"></i></h1>
                                            <div class="wrapper">
                                                <h1 class="fs-5 mb-0">Jackson Heights</h1>
                                                <p class="mb-0">California, USA</p>
                                            </div>
                                        </div>
                                        <div class="tile d-flex align-items-center gap-3 mb-3">
                                            <h1 class="fs-2 mb-0"><i class="fa-solid fa-hourglass-start accent-color"></i></h1>
                                            <div class="wrapper">
                                                <h1 class="fs-5 mb-0">Wt. Boulevard</h1>
                                                <p class="mb-0">Dhaka, Bangladesh</p>
                                            </div>
                                        </div>
                                        <div class="tile d-flex align-items-center gap-3 mb-3">
                                            <h1 class="fs-2 mb-0"><i class="fa-solid fa-hourglass-start accent-color"></i></h1>
                                            <div class="wrapper">
                                                <h1 class="fs-5 mb-0">Wt. Boulevard</h1>
                                                <p class="mb-0">Dhaka, Bangladesh</p>
                                            </div>
                                        </div>
                                        <div class="tile d-flex align-items-center gap-3 mb-3">
                                            <h1 class="fs-2 mb-0"><i class="fa-solid fa-hourglass-start accent-color"></i></h1>
                                            <div class="wrapper">
                                                <h1 class="fs-5 mb-0">Wt. Boulevard</h1>
                                                <p class="mb-0">Dhaka, Bangladesh</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- //* properties and tenants -->

                <div class="customers p-4 d-none" id="customer">
                    <nav>
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                            <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#publishedPropertiesTab" type="button" role="tab">Published Properties</button>
                            <button class="nav-link" data-bs-toggle="tab" data-bs-target="#draftPropertiesTab" type="button" role="tab">Draft Properties</button>
                            <button class="nav-link" data-bs-toggle="tab" data-bs-target="#tenantsTab" type="button" role="tab">Tenants</button>
                        </div>
                    </nav>
                    <div class="tab-content" id="nav-tabContent">

                        <!-- //? published properties -->

                        <div class="tab-pane fade show active" id="publishedPropertiesTab" role="tabpanel">

                            <div class="mb-3 p-4 rounded-bottom-3 secondary-bg" id="customer-summary">
                                <span class="fs-4 mb-0 text-light">You currently have
                                    <?php echo
                                    $count =  count($retrievedRentedApartmentData) + count($retrievedLeasedApartmentData);

                                    $count == 0 ? "no" : $count;
                                    ?>
                                    <wbr>published properties
                                </span>
                            </div>

                            <?php
                            $html = '';
                            foreach ($retrievedRentedApartmentData as $row) {
                                $html .= '<tr><td>' .
                                    ($row['availability_status'] == 'vacant' ? '<a class="text-light" href="/project_estately/properties/view.php?' . $row['id'] . '" target="blank">' . $row['id'] . '</a>' :
                                        $row['id']) . '</td><td>' .
                                    $row['name'] . '</td><td>' .
                                    date_format(new DateTime($row['created_at']), 'D, d-m-y | h:i A') . '</td><td>' .
                                    date_format(new DateTime($row['updated_at']), 'D, d-m-y | h:i A') . '</td><td>' .
                                    $row['availability_status'] .
                                    '</td></tr>';
                            };

                            if ($retrievedRentedApartmentData) {
                                echo <<<CONTENT
                            <div class="my-5">
                                <h5>Apartments listed for rent</h5>
                                <table class="table table-sm table-dark table-bordered table-responsive table-hover cursor-pointer text-light">
                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Created At</th>
                                            <th scope="col">Updated At</th>
                                            <th scope="col">Availability</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       {$html}
                                    </tbody>
                                </table>
                            </div>
CONTENT;
                            }
                            ?>

                            <?php
                            $html = '';
                            foreach ($retrievedLeasedApartmentData as $row) {
                                $html .= '<tr><td>' .
                                    ($row['availability_status'] == 'vacant' ? '<a class="text-light" href="/project_estately/properties/view.php?' . $row['id'] . '" target="blank">' . $row['id'] . '</a>' :
                                        $row['id']) . '</td><td>' .
                                    $row['name'] . '</td><td>' .
                                    date_format(new DateTime($row['created_at']), 'D, d-m-y | h:i A') . '</td><td>' .
                                    date_format(new DateTime($row['updated_at']), 'D, d-m-y | h:i A') . '</td><td>' .
                                    $row['availability_status'] .
                                    '</td></tr>';
                            };

                            if ($retrievedLeasedApartmentData) {
                                echo <<<CONTENT
                            <div class="my-5">
                                <h5>Apartments listed for lease</h5>
                                <table class="table table-sm table-dark table-bordered table-responsive table-hover cursor-pointer text-light">
                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Created At</th>
                                            <th scope="col">Updated At</th>
                                            <th scope="col">Availability</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       {$html}
                                    </tbody>
                                </table>
                            </div>
CONTENT;
                            }
                            ?>

                            <?php
                            $html = '';
                            foreach ($retrievedRentedStudioData as $row) {
                                $html .= '<tr><td>' .
                                    ($row['availability_status'] == 'vacant' ? '<a class="text-light" href="/project_estately/properties/view.php?' . $row['id'] . '" target="blank">' . $row['id'] . '</a>' :
                                        $row['id']) . '</td><td>' .
                                    $row['name'] . '</td><td>' .
                                    date_format(new DateTime($row['created_at']), 'D, d-m-y | h:i A') . '</td><td>' .
                                    date_format(new DateTime($row['updated_at']), 'D, d-m-y | h:i A') . '</td><td>' .
                                    $row['availability_status'] .
                                    '</td></tr>';
                            };

                            if ($retrievedRentedStudioData) {
                                echo <<<CONTENT
                            <div class="my-5">
                                <h5>Studios listed for rent</h5>
                                <table class="table table-sm table-dark table-bordered table-responsive table-hover cursor-pointer text-light">
                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Created At</th>
                                            <th scope="col">Updated At</th>
                                            <th scope="col">Availability</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       {$html}
                                    </tbody>
                                </table>
                            </div>
CONTENT;
                            }
                            ?>

                            <?php
                            $html = '';
                            foreach ($retrievedLeasedStudioData as $row) {
                                $html .= '<tr><td>' .
                                    ($row['availability_status'] == 'vacant' ? '<a class="text-light" href="/project_estately/properties/view.php?' . $row['id'] . '" target="blank">' . $row['id'] . '</a>' :
                                        $row['id']) . '</td><td>' .
                                    $row['name'] . '</td><td>' .
                                    date_format(new DateTime($row['created_at']), 'D, d-m-y | h:i A') . '</td><td>' .
                                    date_format(new DateTime($row['updated_at']), 'D, d-m-y | h:i A') . '</td><td>' .
                                    $row['availability_status'] .
                                    '</td></tr>';
                            };

                            if ($retrievedLeasedStudioData) {
                                echo <<<CONTENT
                            <div class="my-5">
                                <h5>Studios listed for lease</h5>
                                <table class="table table-sm table-dark table-bordered table-responsive table-hover cursor-pointer text-light">
                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Created At</th>
                                            <th scope="col">Updated At</th>
                                            <th scope="col">Availability</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       {$html}
                                    </tbody>
                                </table>
                            </div>
CONTENT;
                            }
                            ?>

                        </div>

                        <!-- //? draft properties -->

                        <div class="tab-pane fade" id="draftPropertiesTab" role="tabpanel">

                            <div class="mb-3 p-4 rounded-bottom-3 secondary-bg" id="customer-summary">
                                <span class="fs-4 mb-0 text-light">You currently have
                                    <?php echo
                                    $count =  count($retrievedDraftPropertyData);

                                    $count == 0 ? "no" : $count;
                                    ?>
                                    <wbr>draft properties
                                </span>
                            </div>

                            <?php

                            if ($retrievedDraftPropertyData)
                                echo <<<CONTENT
                                <div class="my-5">
                                <h5>Draft properties</h5>
                                <table class="table table-sm table-dark table-bordered table-responsive text-light">
                                    <thead>
                                        <tr>
                                            <th scope="col">Name</th>
                                            <th scope="col">Created At</th>
                                            <th scope="col">Last Updated</th>
                                            <th scope="col">Type</th>
                                            <th scope="col">Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody> 
CONTENT;
                            foreach ($retrievedDraftPropertyData as $row) :;
                            ?>
                                <tr id="$row['id']">
                                    <td>
                                        <?= $row['name'] ?>
                                    </td>
                                    <td>
                                        <?= date_format(new DateTime($row['created_at']), 'D, d-m-y | h:i A') ?>
                                    </td>
                                    <td>
                                        <?= date_format(new DateTime($row['updated_at']), 'D, d-m-y | h:i A') ?>
                                    </td>
                                    <td>
                                        <?= $row['type'] ?>
                                    </td>
                                    <td>
                                        <div class="d-flex justify-content-center align-items-center">
                                            <button class="btn btn-sm text-warning" data-bs-toggle="modal" data-bs-target="#<?= $row['id'] ?>editPropertyModal">
                                                Edit
                                            </button>

                                            <!-- //* draft property edit modal -->
                                            <div class="modal fade" tabindex="-1" id="<?= $row['id'] ?>editPropertyModal" data-bs-backdrop="static" data-bs-keyboard="false">
                                                <div class="modal-dialog modal-fullscreen modal-dialog-centered">
                                                    <div class="modal-content bg-secondary bf-blur-lg">
                                                        <div class="modal-header py-1">
                                                            <h5 class="modal-title">Edit Draft</h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body">

                                                            <form class="d-flex flex-column gap-2">
                                                                <h3>Property Info</h3>
                                                                <div class="row row-cols-1 row-cols-lg-3">
                                                                    <div class="col py-2">
                                                                        <div class="form-group">
                                                                            <label class="form-label" for="<?= $row['id'] ?>editPropertyName">Name</label>
                                                                            <input type="text" class="form-control" id="<?= $row['id'] ?>editPropertyName" name="" value="<?= $row['name'] ?>" placeholder="e.g. John's Studio">
                                                                            <small class="invalid-feedback"></small>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col py-2">
                                                                        <div class="form-group">
                                                                            <label class="form-label" for="<?= $row['id'] ?>editPropertyType">Type</label>
                                                                            <select class="form-select" id="<?= $row['id'] ?>editPropertyType" onchange="(() => {
                                                                                    
                                                                                        $('#<?= $row['id'] ?>editDraftApartmentInfoSection').toggleClass('d-none')
                                                                                        $('#<?= $row['id'] ?>editDraftStudioInfoSection').toggleClass('d-none')
                                                                                    
                                                                                })()">
                                                                                <option value="Apartment" <?= $row['type'] == 'Apartment' ? 'selected' : null ?>>Apartment</option>
                                                                                <option value="Studio" <?= $row['type'] == 'Studio' ? 'selected' : null ?>>Studio</option>
                                                                            </select>
                                                                            <small class="invalid-feedback"></small>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col py-2">
                                                                        <div class="form-group">
                                                                            <label class="form-label" for="<?= $row['id'] ?>editPropertyEnlistFor">Enlist For</label>
                                                                            <select class="form-select" id="<?= $row['id'] ?>editPropertyEnlistFor">
                                                                                <option value="Rent" <?= $row['enlisted_for'] == 'Rent' ? 'selected' : null ?>>Rent</option>
                                                                                <option value="Lease" <?= $row['enlisted_for'] == 'Lease' ? 'selected' : null ?>>Lease</option>
                                                                                <option value="Both" <?= $row['enlisted_for'] == 'Both' ? 'selected' : null ?>>Both</option>
                                                                            </select>
                                                                            <small class="invalid-feedback"></small>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col py-2">
                                                                        <div class="form-group">
                                                                            <label class="form-label" for="<?= $row['id'] ?>editPropertyAddress">Street Address</label>
                                                                            <input type="text" class="form-control" name="" value="<?= $row['street_address'] ?>" id="<?= $row['id'] ?>editPropertyAddress" placeholder="e.g. 430/B, West Avenue">
                                                                            <small class="invalid-feedback"></small>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col py-2">
                                                                        <div class="form-group">
                                                                            <label class="form-label" for="P<?= $row['id'] ?>editPropertyDistrict">District</label>
                                                                            <select class="form-select district" id="<?= $row['id'] ?>editPropertyDistrict"></select>
                                                                            <small class="invalid-feedback"></small>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col py-2">
                                                                        <div class="form-group">
                                                                            <label class="form-label" for="P<?= $row['id'] ?>editPropertyDivision">Division</label>
                                                                            <select class="form-select division" id="<?= $row['id'] ?>editPropertyDivision"></select>
                                                                            <small class="invalid-feedback"></small>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row row-cols-1 row-cols-lg-2">
                                                                    <div class="col d-flex justify-content-between gap-1">
                                                                        <div class="form-group">
                                                                            <label class="form-label" for="<?= $row['id'] ?>editPropertyLatitude">Latitude</label>
                                                                            <input type="number" class="form-control" name="" value="<?= $row['latitude'] ?>" id="<?= $row['id'] ?>editPropertyLatitude" value="<?= $row['latitude'] ?>" placeholder="e.g. 23.32351">
                                                                            <small class="invalid-feedback"></small>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label class="form-label" for="<?= $row['id'] ?>editPropertyLongitude">Longitude</label>
                                                                            <input type="number" class="form-control" name="" value="<?= $row['longitude'] ?>" id="<?= $row['id'] ?>editPropertyLongitude" value="<?= $row['longitude'] ?>" placeholder="e.g. 90.81356">
                                                                            <small class="invalid-feedback"></small>
                                                                        </div>
                                                                        <div class="d-flex align-items-center">
                                                                            <button class="btn btn-sm btn-primary py-1" onclick="">Get <i class="bi bi-geo-fill mb-0"></i></button>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col py-2">
                                                                        <div class="form-group">
                                                                            <label class="form-label" for="<?= $row['id'] ?>editPropertyDescription">Description</label>
                                                                            <textarea class="form-control" name="" id="<?= $row['id'] ?>editPropertyDescription" rows="2"><?= $row['description'] ?></textarea>
                                                                            <small class="invalid-feedback"></small>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <h3>Amenities</h3>
                                                                <div class="row row-cols-2 row-cols-lg-4 row-cols-xl-6">
                                                                    <div class="col pb-3">
                                                                        <div class="form-group">
                                                                            <select class="form-select" id="<?= $row['id'] ?>editPropertyAmenity1">
                                                                                <option value="null" hidden selected>Select AC Type</option>
                                                                                <option value="null" <?= $row['ac_type'] == 'null' ? 'selected' : null ?>>Null</option>
                                                                                <option value="Central" <?= $row['ac_type'] == 'Central' ? 'selected' : null ?>>Central</option>
                                                                                <option value="Split" <?= $row['ac_type'] == 'Split' ? 'selected' : null ?>>Split</option>
                                                                                <option value="Window" <?= $row['ac_type'] == 'Window' ? 'selected' : null ?>>Window</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col py-2">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="<?= $row['id'] ?>editPropertyAmenity2" <?= $row['elevator'] == '1' ? 'checked' : null ?>>
                                                                            <label class="form-check-label" for="<?= $row['id'] ?>editPropertyAmenity2">
                                                                                Elevator
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col py-2">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="<?= $row['id'] ?>editPropertyAmenity3" <?= $row['gym'] == '1' ? 'checked' : null ?>>
                                                                            <label class="form-check-label" for="<?= $row['id'] ?>editPropertyAmenity3">
                                                                                Gym
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col py-2">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="<?= $row['id'] ?>editPropertyAmenity4" <?= $row['laundry'] == '1' ? 'checked' : null ?>>
                                                                            <label class="form-check-label" for="<?= $row['id'] ?>editPropertyAmenity4">
                                                                                Laundry
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col py-2">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="<?= $row['id'] ?>editPropertyAmenity5" <?= $row['microwave'] == '1' ? 'checked' : null ?>>
                                                                            <label class="form-check-label" for="<?= $row['id'] ?>editPropertyAmenity5">
                                                                                Microwave
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col py-2">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="<?= $row['id'] ?>editPropertyAmenity6" <?= $row['parking'] == '1' ? 'checked' : null ?>>
                                                                            <label class="form-check-label" for="<?= $row['id'] ?>editPropertyAmenity6">
                                                                                Parking
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col py-2">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="<?= $row['id'] ?>editPropertyAmenity7" <?= $row['pharmacy'] == '1' ? 'checked' : null ?>>
                                                                            <label class="form-check-label" for="<?= $row['id'] ?>editPropertyAmenity7">
                                                                                Pharmacy
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col py-2">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="<?= $row['id'] ?>editPropertyAmenity8" <?= $row['prayer_area'] == '1' ? 'checked' : null ?>>
                                                                            <label class="form-check-label" for="<?= $row['id'] ?>editPropertyAmenity8">
                                                                                Prayer Area
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col py-2">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="<?= $row['id'] ?>editPropertyAmenity9" <?= $row['refrigerator'] == '1' ? 'checked' : null ?>>
                                                                            <label class="form-check-label" for="<?= $row['id'] ?>editPropertyAmenity9">
                                                                                Refrigerator
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col py-2">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="<?= $row['id'] ?>editPropertyAmenity10" <?= $row['tv'] == '1' ? 'checked' : null ?>>
                                                                            <label class="form-check-label" for="<?= $row['id'] ?>editPropertyAmenity10">
                                                                                TV
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col py-2">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="<?= $row['id'] ?>editPropertyAmenity11" <?= $row['wheelchair'] == '1' ? 'checked' : null ?>>
                                                                            <label class="form-check-label" for="<?= $row['id'] ?>editPropertyAmenity11">
                                                                                Wheelchair
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col py-2">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="<?= $row['id'] ?>editPropertyAmenity12" <?= $row['wifi'] == '1' ? 'checked' : null ?>>
                                                                            <label class="form-check-label" for="<?= $row['id'] ?>editPropertyAmenity12">
                                                                                Wifi
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <span class="<?= $row['type'] == 'Apartment' ? '' : 'd-none' ?>" id="<?= $row['id'] ?>editDraftApartmentInfoSection">
                                                                    <h3 class="mt-3">Apartment Info</h3>
                                                                    <div class="row row-cols-1 row-cols-lg-3">
                                                                        <div class="col py-2">
                                                                            <div class="form-group">
                                                                                <label class="form-label" for="<?= $row['id'] ?>editApartmentArea">Area</label>
                                                                                <input class="form-control" type="number" name="" value="<?= $row['area'] ?>" id="<?= $row['id'] ?>editApartmentArea">
                                                                                <small class="invalid-feedback"></small>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col py-2">
                                                                            <div class="form-group">
                                                                                <label class="form-label" for="<?= $row['id'] ?>editApartmentBedroom">Bedroom</label>
                                                                                <input class="form-control" type="number" name="" value="<?= $row['bedroom'] ?>" id="<?= $row['id'] ?>editApartmentBedroom">
                                                                                <small class="invalid-feedback"></small>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col py-2">
                                                                            <div class="form-group">
                                                                                <label class="form-label" for="<?= $row['id'] ?>editApartmentBathroom">Bathroom (total)</label>
                                                                                <input class="form-control" type="number" name="" value="<?= $row['bathroom'] ?>" id="<?= $row['id'] ?>editApartmentBathroom">
                                                                                <small class="invalid-feedback"></small>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col py-2">
                                                                            <div class="form-group">
                                                                                <label class="form-label" for="<?= $row['id'] ?>editApartmentAttachedBathroom">Attached Bathroom</label>
                                                                                <input class="form-control" type="number" name="" value="<?= $row['attached_bathroom'] ?>" id="<?= $row['id'] ?>editApartmentAttachedBathroom">
                                                                                <small class="invalid-feedback"></small>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col py-2">
                                                                            <div class="form-group">
                                                                                <label class="form-label" for="<?= $row['id'] ?>editApartmentBalcony">Balcony</label>
                                                                                <input class="form-control" type="number" name="" value="<?= $row['balcony'] ?>" id="<?= $row['id'] ?>editApartmentBalcony">
                                                                                <small class="invalid-feedback"></small>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col py-2">
                                                                            <div class="form-group">
                                                                                <label class="form-label" for="<?= $row['id'] ?>editApartmentKitchen">Kitchen</label>
                                                                                <input class="form-control" type="number" name="" value="<?= $row['kitchen'] ?>" id="<?= $row['id'] ?>editApartmentKitchen">
                                                                                <small class="invalid-feedback"></small>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </span>

                                                                <span class="<?= $row['type'] == 'Studio' ? '' : 'd-none' ?>" id="<?= $row['id'] ?>editDraftStudioInfoSection">
                                                                    <h3 class="mt-3">Studio Info</h3>
                                                                    <div class="row row-cols-1 row-cols-lg-3">
                                                                        <div class="col py-2">
                                                                            <div class="form-group">
                                                                                <label class="form-label" for="<?= $row['id'] ?>editStudioArea">Area</label>
                                                                                <input class="form-control" type="number" name="" value="<?= $row['area'] ?>" id="<?= $row['id'] ?>editStudioArea">
                                                                                <small class="invalid-feedback"></small>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col py-2">
                                                                            <div class="form-group">
                                                                                <label class="form-label" for="<?= $row['id'] ?>editStudioLength">Length (m)</label>
                                                                                <input class="form-control" type="number" name="" value="<?= $row['length'] ?>" id="<?= $row['id'] ?>editStudioLength">
                                                                                <small class="invalid-feedback"></small>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col py-2">
                                                                            <div class="form-group">
                                                                                <label class="form-label" for="<?= $row['id'] ?>editStudioBreadth">Breadth (m)</label>
                                                                                <input class="form-control" type="number" name="" value="<?= $row['breadth'] ?>" id="<?= $row['id'] ?>editStudioBreadth">
                                                                                <small class="invalid-feedback"></small>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col py-2">
                                                                            <div class="form-check">
                                                                                <input class="form-check-input" type="checkbox" name="" <?= $row['separate_bathroom'] ? 'checked' : null ?> id="<?= $row['id'] ?>editStudioSeparateBath">
                                                                                <label class="form-check-label" for="<?= $row['id'] ?>editStudioSeparateBath">Separate Bathroom</label>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col py-2">
                                                                            <div class="form-check">
                                                                                <input class="form-check-input" type="checkbox" name="" <?= $row['balcony'] ? 'checked' : null ?> id="<?= $row['id'] ?>editStudioBalcony">
                                                                                <label class="form-check-label" for="<?= $row['id'] ?>editStudioBalcony">Balcony</label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </span>

                                                                <span class="<?= ($row['enlisted_for'] == 'Rent' || $row['enlisted_for'] == 'Both') ? '' : 'd-none' ?>" id="<?= $row['id'] ?>editDraftRentSection">
                                                                    <h3 class="mt-3">Rent Info</h3>
                                                                    <div class="row">
                                                                        <div class="col-12 py-2">
                                                                            <div class="form-group">
                                                                                <label class="form-label" for="<?= $row['id'] ?>editRentTerms">Term(s) for renting</label>
                                                                                <textarea class="form-control" name="" id="<?= $row['id'] ?>editRentTerms"><?= $row['rent_info.terms'] ?></textarea>
                                                                                <small class="invalid-feedback"></small>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-12 col-lg-3 py-2">
                                                                            <div class="form-group">
                                                                                <label class="form-label" for="<?= $row['id'] ?>editRent">Rent</label>
                                                                                <div class="input-group">
                                                                                    <span class="input-group-text">BDT</span>
                                                                                    <input class="form-control" type="number" name="" value="<?= $row['rent'] ?>" id="<?= $row['id'] ?>editRent">
                                                                                </div>
                                                                                <small class="invalid-feedback"></small>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </span>

                                                                <span class="<?= ($row['enlisted_for'] == 'Lease' || $row['enlisted_for'] == 'Both') ? '' : 'd-none' ?>" id="<?= $row['id'] ?>editDraftLeaseSection">
                                                                    <h3 class="mt-3">Lease Info</h3>
                                                                    <div class="row">
                                                                        <div class="col-12 py-2">
                                                                            <div class="form-group">
                                                                                <label class="form-label" for="<?= $row['id'] ?>editLeaseTerms">Term(s) for leasing</label>
                                                                                <textarea class="form-control" name="" id="<?= $row['id'] ?>editLeaseTerms"><?= $row['lease_info.terms'] ?></textarea>
                                                                                <small class="invalid-feedback"></small>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row row-cols-1 row-cols-lg-3">
                                                                        <div class="col py-2">
                                                                            <div class="form-group">
                                                                                <label class="form-label" for="<?= $row['id'] ?>editLease">Lease Sum</label>
                                                                                <div class="input-group">
                                                                                    <span class="input-group-text">BDT</span>
                                                                                    <input class="form-control" type="number" name="" value="<?= $row['lease'] ?>" id="<?= $row['id'] ?>editLease">
                                                                                </div>
                                                                                <small class="invalid-feedback"></small>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col py-2">
                                                                            <div class="form-group">
                                                                                <label class="form-label" for="<?= $row['id'] ?>editTenure">Tenure</label>
                                                                                <div class="input-group">
                                                                                    <input class="form-control" type="number" name="" value="<?= $row['tenure_months'] ?>" id="<?= $row['id'] ?>editTenure">
                                                                                    <span class="input-group-text">Month(s)</span>
                                                                                </div>
                                                                                <small class="invalid-feedback"></small>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col py-2">
                                                                            <div class="form-group">
                                                                                <label for="<?= $row['id'] ?>editTerminationPercentage" class="form-label">Termination %</label>
                                                                                <div class="input-group">
                                                                                    <div class="form-control">
                                                                                        <input type="range" class="form-range" value="5" min="0" max="100" step="1" id="<?= $row['id'] ?>editTerminationPercentage" onchange="(() => {
                                                                                            $('#<?= $row['id'] ?>editTerminationPercentage').parent().siblings('span').html($('#<?= $row['id'] ?>editTerminationPercentage').val() + '%')
                                                                                        })()">
                                                                                    </div>
                                                                                    <span class="input-group-text">%</span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </span>

                                                                <h4 class="text-info">Feature your property</h4>
                                                                <div class="row">
                                                                    <div class="col py-2">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="<?= $row['id'] ?>editFeatureOptIn">
                                                                            <label class="form-check-label lead" for="<?= $row['id'] ?>editFeatureOptIn">
                                                                                Feature this property to the nearby customers in the featured properties section of the landing page and gain more exposure with as little as <strong>BDT 499</strong>
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </form>

                                                        </div>
                                                        <div class="modal-footer py-1 d-flex justify-content-between">
                                                            <div>
                                                                <button type="button" class="btn btn-sm btn-light" onclick="saveDraftProperty('<?= $row['id'] ?>')">Save</button>
                                                                <button type="button" class="btn btn-sm btn-dark" data-bs-dismiss="modal">Cancel</button>
                                                            </div>
                                                            <button class="btn btn-sm btn-success" onclick="publishProperty('<?= $row['id'] ?>')">Publish</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <span class="">|</span>

                                            <button class="btn btn-sm text-danger" data-bs-toggle="modal" data-bs-target="#deletePropertyModal">
                                                Delete
                                            </button>

                                            <!-- //* draft property delete confirmation modal -->
                                            <div class="modal fade bf-blur-lg" tabindex="-1" id="deletePropertyModal" data-bs-backdrop="static" data-bs-keyboard="false">
                                                <div class="modal-dialog modal-dialog-centered">
                                                    <div class="modal-content bg-secondary bg-opacity-50 bf-blur-lg">
                                                        <div class="modal-header py-1">
                                                            <h5 class="modal-title">Confirm Delete Draft</h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <p class="lead">The action is irreversible indicating the data will be lost upon
                                                                deletion. Confirm to continue.</p>
                                                        </div>
                                                        <div class="modal-footer py-1">
                                                            <button type="button" class="btn btn-sm btn-light" onclick="deleteDraftProperty('<?= $row['id'] ?>')">Confirm</button>
                                                            <button type="button" class="btn btn-sm btn-dark" data-bs-dismiss="modal">Cancel</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                <?php endforeach;
                            if ($retrievedDraftPropertyData)
                                echo <<<CONTENT
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
CONTENT;
                                ?>

                                <!-- //? tenants -->

                                <div class="tab-pane fade" id="tenantsTab" role="tabpanel">

                                    <div class="mb-3 p-4 rounded-bottom-3 secondary-bg" id="customer-summary">
                                        <span class="fs-4 mb-0 text-light">You currently have
                                            <?php echo
                                            $count =  count($retrievedTenantProfileData);

                                            $count == 0 ? "no" : $count;
                                            ?>
                                            <wbr>tenants
                                        </span>
                                    </div>

                                    <?php

                                    if ($retrievedTenantProfileData) {
                                        echo '<div class="row row-cols-1 row-cols-lg-3 g-0 gap-2">';
                                        foreach ($retrievedTenantProfileData as $tenantProfile) :;
                                    ?>
                                            <div class="col p-0">
                                                <div class="card bg-dark text-light">
                                                    <div class="card-body p-4 pb-0">
                                                        <h5 class="card-title mb-0"><?= $tenantProfile['name'] ?></h5>
                                                        <small class="card-subtitle text-info"><?= date_format(new DateTime($tenantProfile['updated_at']), 'M, Y') ?></small>
                                                        <div class="mt-3">
                                                            <ul class="list-group list-group-flush">
                                                                <li class="list-group-item bg-dark text-white p-0 border-secondary">
                                                                    <form class="form-floating mt-2 mb-0">
                                                                        <input type="tel" class="form-control bg-dark text-light border-0 p-3 disabled" placeholder="+8801612345678" value="<?= $tenantProfile['mobile_no'] ?>" readonly>
                                                                        <label class="p-0">Mobile</label>
                                                                    </form>
                                                                </li>
                                                                <li class="list-group-item bg-dark text-white p-0 border-secondary">
                                                                    <form class="form-floating mt-3 mb-0">
                                                                        <input type="number" class="form-control bg-dark text-light border-0 p-3 disabled" placeholder="+8801612345678" value="<?= $tenantProfile['document_id'] ?>" readonly>
                                                                        <label class="p-0">Document ID</label>
                                                                    </form>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="card-footer py-1 d-flex justify-content-end">
                                                        <a class="btn btn-sm btn-outline-light px-4" href="mailto:<?= $tenantProfile['email'] ?>">
                                                            Mail
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                    <?php
                                        endforeach;
                                        echo  '</div>';
                                    }
                                    ?>
                                </div>
                        </div>
                    </div>

                    <!-- //* settings -->

                    <div class="settings p-4 d-none" id="settings">
                        <h1 class="fs-3 mb-4">Settings</h1>
                        <div class="row g-0">
                            <div class="col col-12 mb-3 p-4" id="settings-form-wrapper">
                                <form id="settings-form">
                                    <div class="mb-3">
                                        <label for="vendorEmail" class="form-label disabled mb-1">Email</label>
                                        <input class="form-control" id="vendorEmail" type="text" value="<?= $vendor['email'] ?>" placeholder="example@gmail.com" disabled>
                                    </div>
                                    <div class="mb-3">
                                        <label for="vendorPassword" class="form-label mb-1">Password</label>
                                        <input class="form-control" type="password" id="vendorPassword">
                                    </div>
                                    <div class="mb-3">
                                        <label for="vendorName" class="form-label mb-1">Name</label>
                                        <input class="form-control" id="vendorName" type="text" value="<?= $vendor['name'] ?>" placeholder="Mrs. Karen" disabled>
                                    </div>
                                    <div class="mb-3">
                                        <label for="vendorMobile" class="form-label mb-1">Mobile</label>
                                        <input type="tel" value="<?= $vendor['mobile_no'] ?>" class="form-control" id="vendorMobile" aria-describedby="emailHelp">
                                    </div>
                                    <div class="mb-4">
                                        <label for="exampleInputEmail1" class="form-label mb-1">Document ID</label>
                                        <input class="form-control" type="number" value="<?= $vendor['document_id'] ?>" placeholder="0321032132" disabled>
                                    </div>
                                    <button type="button" class="btn btn-primary shadow-none custom-btn" onclick="updateVendor()">Update</button>
                                </form>
                                <a class="btn btn-primary shadow-none border-0 w-100 mt-4 d-md-none" href="/project_estately/vendor/dashboard.php?session=end" id="settings-logout">Logout</a>
                            </div>
                        </div>
                    </div>
                </div>


                <nav class="col col-12 col-md-1 col-lg-1 order-md-1 position-fixed primary-bg" id="nav">
                    <a class="text-decoration-none text-light" href="/project_estately/index.php">
                        <h1 class="d-none d-md-block fs-5 mb-0">Estately</h1>
                    </a>
                    <div class="nav-links d-flex justify-content-evenly align-items-center p-4">
                        <h1 class="mb-0 active" id="nav-dashboard"><i class="fa-solid fa-clipboard-check"></i></h1>
                        <h1 class="mb-0" id="nav-customer"><i class="fa-solid fa-users"></i></h1>
                        <h1 class="mb-0" id="nav-settings"><i class="fa-solid fa-gear"></i></h1>
                    </div>
                    <div class="wrapper d-none d-md-flex flex-column align-items-center gap-3">
                        <h1 class="fs-3 mb-0 text-muted" id="logout">
                            <a class="text-decoration-none" href="/project_estately/vendor/dashboard.php?session=end">
                                <i class="fa-solid fa-right-from-bracket"></i>
                            </a>
                        </h1>
                        <div class="user-image"></div>
                    </div>
                </nav>
            </div>
    </section>

    <!-- //* enlist new property modal -->
    <div class="modal fade" id="addPropertyModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1">
        <div class="modal-dialog modal-fullscreen">
            <div class="modal-content bf-blur-lg bg-dark bg-opacity-75">
                <div class="modal-header py-1">
                    <h5 class="modal-title">Add New Property</h5>
                    <button type="button" class="btn" data-bs-dismiss="modal" aria-label="Close">
                        <i class="bi bi-x text-light h5"></i>
                    </button>
                </div>
                <div class="modal-body">

                    <form class="d-flex flex-column gap-2" id="editPropertyForm">
                        <h3>Property Info</h3>
                        <div class="row row-cols-1 row-cols-lg-3">
                            <div class="col py-2">
                                <div class="form-group">
                                    <label class="form-label" for="editPropertyName">Name</label>
                                    <input type="text" class="form-control" id="editPropertyName" name="p.name" value="test" data-table="property" data-column="name" placeholder="e.g. John's Studio" required>
                                    <small class="invalid-feedback"></small>
                                </div>
                            </div>
                            <div class="col py-2">
                                <div class="form-group">
                                    <label class="form-label" for="editPropertyType">Type</label>
                                    <select class="form-select" id="editPropertyType" name="p.type" data-table="property" data-column="type" onchange="(() => {
                            if($('#editPropertyType').val() == 'Apartment'){
                                $('#editDraftApartmentInfoSection').removeClass('d-none')
                                $('#editDraftStudioInfoSection').addClass('d-none')
                            } else {
                                $('#editDraftApartmentInfoSection').addClass('d-none')
                                $('#editDraftStudioInfoSection').removeClass('d-none')
                            }
                            
                        })()" required>
                                        <option value="null" selected hidden>Select Type</option>
                                        <option value="Apartment">Apartment</option>
                                        <option value="Studio">Studio</option>
                                    </select>
                                    <small class="invalid-feedback"></small>
                                </div>
                            </div>
                            <div class="col py-2">
                                <div class="form-group">
                                    <label class="form-label" for="editPropertyEnlistFor">Enlist For</label>
                                    <select class="form-select" id="editPropertyEnlistFor" name="p.enlist" data-table="property" data-column="enlisted_for" onchange="(() => {
                                                                                    
                            if($('#editPropertyEnlistFor').val() == 'Rent'){
                                $('#editDraftRentSection').removeClass('d-none')
                                $('#editDraftLeaseSection').addClass('d-none')
                            } 
                            
                            if($('#editPropertyEnlistFor').val() == 'Lease') {
                                $('#editDraftRentSection').addClass('d-none')
                                $('#editDraftLeaseSection').removeClass('d-none')
                            }

                            if($('#editPropertyEnlistFor').val() == 'Both') {
                                $('#editDraftRentSection').removeClass('d-none')
                                $('#editDraftLeaseSection').removeClass('d-none')
                            }
                            
                        })()" required>
                                        <option value="null" selected hidden>Select Enlist For</option>
                                        <option value="Rent">Rent</option>
                                        <option value="Lease">Lease</option>
                                        <option value="Both">Both</option>
                                    </select>
                                    <small class="invalid-feedback"></small>
                                </div>
                            </div>
                            <div class="col py-2">
                                <div class="form-group">
                                    <label class="form-label" for="editPropertyAddress">Street Address</label>
                                    <input type="text" class="form-control" name="ad.address" value="test" id="editPropertyAddress" data-table="address" data-column="street_address" placeholder="e.g. 430/B, West Avenue" required>
                                    <small class="invalid-feedback"></small>
                                </div>
                            </div>
                            <div class="col py-2">
                                <div class="form-group">
                                    <label class="form-label" for="PeditPropertyDivision">Division</label>
                                    <select class="form-select division" id="editPropertyDivision" name="ad.division" data-table="address" data-column="division" onchange="divisionChanged()" required>
                                        <option value="null">Select Division</option>
                                    </select>
                                    <small class="invalid-feedback"></small>
                                </div>
                            </div>
                            <div class="col py-2">
                                <div class="form-group">
                                    <label class="form-label" for="PeditPropertyDistrict">District</label>
                                    <select class="form-select district" id="editPropertyDistrict" name="ad.district" data-table="address" data-column="district" required>
                                        <option value="null">Select District</option>
                                    </select>
                                    <small class="invalid-feedback"></small>
                                </div>
                            </div>
                        </div>
                        <div class="row row-cols-1 row-cols-lg-2">
                            <div class="col d-flex justify-content-between gap-1">
                                <div class="form-group">
                                    <label class="form-label" for="editPropertyLatitude">Latitude</label>
                                    <input type="number" class="form-control" name="ad.lat" value="0" data-table="address" data-column="latitude" id="editPropertyLatitude" placeholder="e.g. 23.32351" required>
                                    <small class="invalid-feedback"></small>
                                </div>
                                <div class="form-group">
                                    <label class="form-label" for="editPropertyLongitude">Longitude</label>
                                    <input type="number" class="form-control" name="ad.lon" value="0" data-table="address" data-column="longitude" id="editPropertyLongitude" placeholder="e.g. 90.81356" required>
                                    <small class="invalid-feedback"></small>
                                </div>
                                <div class="d-flex align-items-center">
                                    <button type="button" class="btn btn-sm btn-primary py-1" onclick="getCoordinates()">Get <i class="bi bi-geo-fill mb-0"></i></button>
                                </div>
                            </div>
                            <div class="col py-2">
                                <div class="form-group">
                                    <label class="form-label" for="editPropertyDescription">Description</label>
                                    <textarea class="form-control" name="p.description" data-table="property" data-column="description" id="editPropertyDescription" rows="2"></textarea>
                                    <small class="invalid-feedback"></small>
                                </div>
                            </div>
                        </div>

                        <h3>Amenities</h3>
                        <div class="row row-cols-2 row-cols-lg-4 row-cols-xl-6">
                            <div class="col pb-3">
                                <div class="form-group">
                                    <select class="form-select" id="editPropertyAmenity1" name="am.ac" data-table="amenities" data-column="ac_type">
                                        <option value="null" hidden="">Select AC Type</option>
                                        <option value="null">Null</option>
                                        <option value="Central">Central</option>
                                        <option value="Split">Split</option>
                                        <option value="Window">Window</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col py-2">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="am.elevator" data-table="amenities" data-column="elevator" id="editPropertyAmenity2">
                                    <label class="form-check-label" for="editPropertyAmenity2">
                                        Elevator
                                    </label>
                                </div>
                            </div>
                            <div class="col py-2">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="am.gym" data-table="amenities" data-column="gym" id="editPropertyAmenity3">
                                    <label class="form-check-label" for="editPropertyAmenity3">
                                        Gym
                                    </label>
                                </div>
                            </div>
                            <div class="col py-2">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="am.laundry" data-table="amenities" data-column="laundry" id="editPropertyAmenity4">
                                    <label class="form-check-label" for="editPropertyAmenity4">
                                        Laundry
                                    </label>
                                </div>
                            </div>
                            <div class="col py-2">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="am.microwave" data-table="amenities" data-column="microwave" id="editPropertyAmenity5">
                                    <label class="form-check-label" for="editPropertyAmenity5">
                                        Microwave
                                    </label>
                                </div>
                            </div>
                            <div class="col py-2">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="am.parking" data-table="amenities" data-column="parking" id="editPropertyAmenity6">
                                    <label class="form-check-label" for="editPropertyAmenity6">
                                        Parking
                                    </label>
                                </div>
                            </div>
                            <div class="col py-2">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="am.pharmacy" data-table="amenities" data-column="pharmacy" id="editPropertyAmenity7">
                                    <label class="form-check-label" for="editPropertyAmenity7">
                                        Pharmacy
                                    </label>
                                </div>
                            </div>
                            <div class="col py-2">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="am.prayerarea" data-table="amenities" data-column="prayer_area" id="editPropertyAmenity8">
                                    <label class="form-check-label" for="editPropertyAmenity8">
                                        Prayer Area
                                    </label>
                                </div>
                            </div>
                            <div class="col py-2">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="am.refrigerator" data-table="amenities" data-column="refrigerator" id="editPropertyAmenity9">
                                    <label class="form-check-label" for="editPropertyAmenity9">
                                        Refrigerator
                                    </label>
                                </div>
                            </div>
                            <div class="col py-2">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="am.tv" data-table="amenities" data-column="tv" id="editPropertyAmenity10">
                                    <label class="form-check-label" for="editPropertyAmenity10">
                                        TV
                                    </label>
                                </div>
                            </div>
                            <div class="col py-2">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="am.wheelchair" data-table="amenities" data-column="wheelchair" id="editPropertyAmenity11">
                                    <label class="form-check-label" for="editPropertyAmenity11">
                                        Wheelchair
                                    </label>
                                </div>
                            </div>
                            <div class="col py-2">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="am.wifi" data-table="amenities" data-column="wifi" id="editPropertyAmenity12">
                                    <label class="form-check-label" for="editPropertyAmenity12">
                                        Wifi
                                    </label>
                                </div>
                            </div>
                        </div>

                        <span class="d-none" id="editDraftApartmentInfoSection">
                            <h3 class="mt-3">Apartment Info</h3>
                            <div class="row row-cols-1 row-cols-lg-3">
                                <div class="col py-2">
                                    <div class="form-group">
                                        <label class="form-label" for="editApartmentArea">Area</label>
                                        <input class="form-control" type="number" name="ap.area" data-table="apartment" data-column="area" id="editApartmentArea">
                                        <small class="invalid-feedback"></small>
                                    </div>
                                </div>
                                <div class="col py-2">
                                    <div class="form-group">
                                        <label class="form-label" for="editApartmentBedroom">Bedroom</label>
                                        <input class="form-control" type="number" name="ap.bedroom" data-table="apartment" data-column="bedroom" id="editApartmentBedroom">
                                        <small class="invalid-feedback"></small>
                                    </div>
                                </div>
                                <div class="col py-2">
                                    <div class="form-group">
                                        <label class="form-label" for="editApartmentBathroom">Bathroom (total)</label>
                                        <input class="form-control" type="number" name="ap.bathroom" data-table="apartment" data-column="bathroom" id="editApartmentBathroom">
                                        <small class="invalid-feedback"></small>
                                    </div>
                                </div>
                                <div class="col py-2">
                                    <div class="form-group">
                                        <label class="form-label" for="editApartmentAttachedBathroom">Attached Bathroom</label>
                                        <input class="form-control" type="number" name="ap.attachedbathroom" data-table="apartment" data-column="attached_bathroom" id="editApartmentAttachedBathroom">
                                        <small class="invalid-feedback"></small>
                                    </div>
                                </div>
                                <div class="col py-2">
                                    <div class="form-group">
                                        <label class="form-label" for="editApartmentBalcony">Balcony</label>
                                        <input class="form-control" type="number" name="ap.balcony" data-table="apartment" data-column="balcony" id="editApartmentBalcony">
                                        <small class="invalid-feedback"></small>
                                    </div>
                                </div>
                                <div class="col py-2">
                                    <div class="form-group">
                                        <label class="form-label" for="editApartmentKitchen">Kitchen</label>
                                        <input class="form-control" type="number" name="ap.kitchen" data-table="apartment" data-column="kitchen" id="editApartmentKitchen">
                                        <small class="invalid-feedback"></small>
                                    </div>
                                </div>
                            </div>
                        </span>

                        <span class="d-none" id="editDraftStudioInfoSection">
                            <h3 class="mt-3">Studio Info</h3>
                            <div class="row row-cols-1 row-cols-lg-3">
                                <div class="col py-2">
                                    <div class="form-group">
                                        <label class="form-label" for="editStudioArea">Area</label>
                                        <input class="form-control" type="number" name="st.area" data-table="studio" data-column="area" id="editStudioArea">
                                        <small class="invalid-feedback"></small>
                                    </div>
                                </div>
                                <div class="col py-2">
                                    <div class="form-group">
                                        <label class="form-label" for="editStudioLength">Length (m)</label>
                                        <input class="form-control" type="number" name="st.length" data-table="studio" data-column="length" id="editStudioLength">
                                        <small class="invalid-feedback"></small>
                                    </div>
                                </div>
                                <div class="col py-2">
                                    <div class="form-group">
                                        <label class="form-label" for="editStudioBreadth">Breadth (m)</label>
                                        <input class="form-control" type="number" name="st.breadth" data-table="studio" data-column="breadth" id="editStudioBreadth">
                                        <small class="invalid-feedback"></small>
                                    </div>
                                </div>
                                <div class="col py-2">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="st.seperatebathroom" data-table="studio" data-column="seperate_bathroom" id="editStudioSeparateBath">
                                        <label class="form-check-label" for="editStudioSeparateBath">Separate Bathroom</label>
                                    </div>
                                </div>
                                <div class="col py-2">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="st.balcony" data-table="studio" data-column="balcony" id="editStudioBalcony">
                                        <label class="form-check-label" for="editStudioBalcony">Balcony</label>
                                    </div>
                                </div>
                            </div>
                        </span>

                        <span class="d-none" id="editDraftRentSection">
                            <h3 class="mt-3">Rent Info</h3>
                            <div class="row">
                                <div class="col-12 py-2">
                                    <div class="form-group">
                                        <label class="form-label" for="editRentTerms">Term(s) for renting</label>
                                        <textarea class="form-control" name="ri.terms" data-table="rent_info" data-column="terms" id="editRentTerms"></textarea>
                                        <small class="invalid-feedback"></small>
                                    </div>
                                </div>
                                <div class="col-12 col-lg-3 py-2">
                                    <div class="form-group">
                                        <label class="form-label" for="editRent">Rent</label>
                                        <div class="input-group">
                                            <span class="input-group-text">BDT</span>
                                            <input class="form-control" type="number" name="ri.rent" data-table="rent_info" data-column="rent" id="editRent">
                                        </div>
                                        <small class="invalid-feedback"></small>
                                    </div>
                                </div>
                            </div>
                        </span>

                        <span class="d-none" id="editDraftLeaseSection">
                            <h3 class="mt-3">Lease Info</h3>
                            <div class="row">
                                <div class="col-12 py-2">
                                    <div class="form-group">
                                        <label class="form-label" for="editLeaseTerms">Term(s) for leasing</label>
                                        <textarea class="form-control" name="li.terms" data-table="lease_info" data-column="terms" id="editLeaseTerms"></textarea>
                                        <small class="invalid-feedback"></small>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-cols-1 row-cols-lg-3">
                                <div class="col py-2">
                                    <div class="form-group">
                                        <label class="form-label" for="editLease">Lease Sum</label>
                                        <div class="input-group">
                                            <span class="input-group-text">BDT</span>
                                            <input class="form-control" type="number" name="li.lease" data-table="lease_info" data-column="lease" id="editLease">
                                        </div>
                                        <small class="invalid-feedback"></small>
                                    </div>
                                </div>
                                <div class="col py-2">
                                    <div class="form-group">
                                        <label class="form-label" for="editTenure">Tenure</label>
                                        <div class="input-group">
                                            <input class="form-control" type="number" name="li.tenure" data-table="lease_info" data-column="tenure_months" id="editTenure">
                                            <span class="input-group-text">Month(s)</span>
                                        </div>
                                        <small class="invalid-feedback"></small>
                                    </div>
                                </div>
                                <div class="col py-2">
                                    <div class="form-group">
                                        <label for="editTerminationPercentage" class="form-label">Termination %</label>
                                        <div class="input-group">
                                            <div class="form-control">
                                                <input type="range" class="form-range" value="5" min="0" max="100" step="1" id="editTerminationPercentage" name="li.terminationpercentage" data-table="lease_info" data-column="termination_percentage" onchange="(() => {
                                    $('#editTerminationPercentage').parent().siblings('span').html($('#editTerminationPercentage').val() + '%')
                                    })()">
                                            </div>
                                            <span class="input-group-text">%</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </span>

                        <h4 class="text-info">Feature your property</h4>
                        <div class="row">
                            <div class="col py-2">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="editFeatureOptIn">
                                    <label class="form-check-label lead" for="editFeatureOptIn">
                                        Feature this property to the nearby customers in the featured properties section of the landing page and gain more exposure with as little as <strong>BDT 499</strong>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <!-- <button type="button" onclick="addProperty()">OK</button> -->
                    </form>



                </div>
                <div class="modal-footer py-1 d-flex justify-content-between">
                    <div>
                        <button type="button" class="btn btn-sm btn-outline-light me-2 px-3">Save as Draft</button>
                        <button type="button" class="btn btn-sm btn-dark px-3" data-bs-dismiss="modal">Cancel</button>
                    </div>
                    <button type="button" class="btn btn-sm btn-success px-2">Publish</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(function() {


            fetch('https://bdapi.p.rapidapi.com/v1.1/divisions', {
                    method: 'GET',
                    headers: {
                        'X-RapidAPI-Key': '4e5af1f078msh5096b16206fe69ep162351jsn1bbd3c374daf',
                        'X-RapidAPI-Host': 'bdapi.p.rapidapi.com'
                    }
                })
                .then(response => response.json())
                .then(response => {
                    response.data.map(arr => {
                        $('#editPropertyDivision').append(`<option value="${arr.division}">${arr.division}</option>`)
                    })
                })
                .catch(err => console.error(err))
        })

        let divisionChanged = async () => {
            $('#loadingAnimation').removeClass('d-none')

            await fetch(`https://bdapi.p.rapidapi.com/v1.1/division/${$('#editPropertyDivision').val()}`, {
                    method: 'GET',
                    headers: {
                        'X-RapidAPI-Key': '4e5af1f078msh5096b16206fe69ep162351jsn1bbd3c374daf',
                        'X-RapidAPI-Host': 'bdapi.p.rapidapi.com'
                    }
                })
                .then(response => response.json())
                .then(response => {
                    let html = `<option value="null">Select District</option>`
                    response.data.map(arr => {
                        html += `<option value="${arr.district}">${arr.district}</option>`
                    })

                    $('#editPropertyDistrict').html(html)
                })
                .catch(err => console.error(err))

            $('#loadingAnimation').addClass('d-none')
        }, getCoordinates = () => {

            // get position coordinates from browser navigator if exists
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function(position) {
                    var pos = {
                        lat: position.coords.latitude,
                        lng: position.coords.longitude
                    };
                    console.log(pos)
                    // set position coordinates to form inputs
                    $('#editPropertyLatitude').val(pos.lat)
                    $('#editPropertyLongitude').val(pos.lng)
                });
            }
        }, addProperty = () => {
            let uuid = ((length = 10) => {
                    return Math.random().toString(16).substr(2, length);
                })(),
                dataset = {
                    property: {
                        id: uuid,
                        vendor_email: new URLSearchParams(window.location.search).get('vendor'),

                    },
                    address: {
                        id: uuid
                    },
                    apartment: {
                        id: uuid
                    },
                    studio: {
                        id: uuid
                    },
                    rent_info: {
                        id: uuid,
                        reservation_percentage: 0.05
                    },
                    lease_info: {
                        id: uuid,
                        reservation_percentage: 0.05
                    }
                }

            for (const table of ['property', 'address', 'apartment', 'studio', 'amenity', 'rent_info', 'lease_info']) {

                $('#editPropertyForm').
                find(`input[data-table=${table}], 
                    textarea[data-table=${table}], 
                    select[data-table=${table}]`).each((ind, item) => {
                    dataset[table][$(item).attr('data-column')] = $(item).is(':checkbox') ? $(item).is(':checked') : $(item).val()
                })
            }

            let formData = {
                property: dataset.property,
                address: dataset.address,
                ...($('#editPropertyType').val() == 'Apartment' ? {
                    apartment: dataset.apartment
                } : null),
                ...($('#editPropertyType').val() == 'Studio' ? {
                    studio: dataset.studio
                } : null),
                ...($('#editPropertyEnlistFor').val() == 'Rent' || $('#editPropertyEnlistFor').val() == 'Both' ? {
                    rent_info: dataset.rent_info
                } : null),
                ...($('#editPropertyEnlistFor').val() == 'Lease' || $('#editPropertyEnlistFor').val() == 'Both' ? {
                    lease_info: dataset.lease_info
                } : null)
            }

            fetch('./api/vendor/create/newproperty.php', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        ...{
                            formData
                        }
                    },
                })
                .then(response => response.json())
                .then(response => {
                    console.log(response)
                }).catch(err => console.error(err))
        }
    </script>
    <script>
        // $(function() {
        //     new bootstrap.Modal(document.getElementById('addPropertyModal')).show()
        // })

        let saveDraftProperty = propertyID => {
                console.log(propertyID)
            },
            deleteDraftProperty = propertyID => {
                console.log(propertyID)
            },
            publishProperty = propertyID => {
                console.log(propertyID)
            },
            updateVendor = async () => {
                $('#loadingAnimation').removeClass('d-none')

                await fetch('./../api/vendor/update/vendorprofile.php', {
                        method: 'POST',
                        headers: {
                            'content-type': 'application/json',
                            'email': $('#vendorEmail').val(),
                            'password': $('#vendorPassword').val(),
                            'mobile': $('#vendorMobile').val(),
                        }
                    })
                    .then(response => response.json())
                    .then(res => {
                        // console.log(res)
                        $('#loadingAnimation').addClass('d-none')
                    })

            }
    </script>
</body>

</html>