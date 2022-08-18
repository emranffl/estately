<?php
require __DIR__ . '/../resources/DB/ORM/instance.php';
foreach (glob(__DIR__ . '/../functionalities/*.php') as $functionalities) require $functionalities;

try {
    // fetch here
    $var = R::getAll('Select * from vendor');
} catch (PDOException $e) {
    consoleError($e->getMessage());
}

// consoleLog($var);

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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/vendor-dashboard.css">
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script defer src="https://kit.fontawesome.com/51c0086ffa.js" crossorigin="anonymous"></script>
    <script defer src="./js/vendor-dashboard.js"></script>
</head>

<body>

    <section class="container-fluid g-0" id="master">
        <div class="row g-0" id="master-row">
            <div class="col col-9 d-md-none p-4 primary-bg">
                <h1 class="fs-3 mb-0">Estately</h1>
            </div>
            <div class="col col-3 d-md-none d-flex justify-content-center align-items-center primary-bg">
                <div class="user-image"></div>
            </div>
            <div class="col col-12 col-md-3 col-lg-2 order-md-2 p-4 primary-bg" id="greet">
                <h1 class="fs-3 mb-0 d-md-none">Good Morning, Jennifer!</h1>
                <div class="d-none d-md-flex flex-column justify-content-between h-100" id="greet-md">
                    <div class="wrapper">
                        <h1 class="fs-3 mb-3">Good Morning, Jennifer!</h1>
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
            <div class="col col-12 col-md-8 col-lg-9 order-md-3 primary-bg" id="main">
                <!-- dashboard -->
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
                                <button type="button" class="btn btn-primary shadow-none custom-btn" data-bs-toggle="modal" data-bs-target="#exampleModal">Upload</button>
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
                <!-- customers -->
                <div class="customers p-4 d-none" id="customer">
                    <nav>
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                            <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#publishedPropertiesTab" type="button" role="tab">Published Properties</button>
                            <button class="nav-link" data-bs-toggle="tab" data-bs-target="#draftPropertiesTab" type="button" role="tab">Draft Properties</button>
                            <button class="nav-link" data-bs-toggle="tab" data-bs-target="#tenantsTab" type="button" role="tab">Tenants</button>
                        </div>
                    </nav>
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="publishedPropertiesTab" role="tabpanel">
                            <div class="row g-0">
                                <div class="col-12 mb-3 p-4 rounded-bottom-3 secondary-bg" id="customer-summary">
                                    <h4 class="mb-0">You currently have <?php echo ''; ?> <wbr>published properties</h4>
                                </div>
                                <div class="col-12" id="customer-table-wrapper">
                                    <table class="table table-dark table-bordered table-responsive text-light" id="customer-table">
                                        <thead>
                                            <tr>
                                                <th scope="col">Sl.</th>
                                                <th scope="col">Name</th>
                                                <th scope="col">ID</th>
                                                <th scope="col">Contact</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>Mark</td>
                                                <td>Otto</td>
                                                <td>017171</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">2</th>
                                                <td>Jacob</td>
                                                <td>Thornton</td>
                                                <td>0171717</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="draftPropertiesTab" role="tabpanel">...</div>
                        <div class="tab-pane fade" id="tenantsTab" role="tabpanel">...</div>
                    </div>

                    <h1 class="fs-3 mb-4">Customers</h1>
                    <div class="row g-0">
                        <div class="col col-12 col-lg-12 mb-3 p-4 rounded-3 secondary-bg" id="customer-summary">
                            <h1 class="fs-4 mb-0">You currently have 2 active customers.</h1>
                        </div>
                        <div class="col col-12 col-lg-12" id="customer-table-wrapper">
                            <table class="table table-dark table-bordered table-responsive text-light" id="customer-table">
                                <thead>
                                    <tr>
                                        <th scope="col">Sl.</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">ID</th>
                                        <th scope="col">Contact</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>017171</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>Jacob</td>
                                        <td>Thornton</td>
                                        <td>0171717</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- settings -->
                <div class="settings p-4 d-none" id="settings">
                    <h1 class="fs-3 mb-4">Settings</h1>
                    <div class="row g-0">
                        <div class="col col-12 mb-3 p-4" id="settings-form-wrapper">
                            <form id="settings-form">
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label disabled mb-1">Email address</label>
                                    <input class="form-control" type="text" placeholder="example@gmail.com" aria-label="Disabled input example" disabled>
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label mb-1">Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label mb-1">Name</label>
                                    <input class="form-control" type="text" placeholder="Mrs. Karen " aria-label="Disabled input example" disabled>
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label mb-1">Contact No</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                </div>
                                <div class="mb-4">
                                    <label for="exampleInputEmail1" class="form-label mb-1">Document ID</label>
                                    <input class="form-control" type="text" placeholder="AB03210321" aria-label="Disabled input example" disabled>
                                </div>
                                <button type="submit" class="btn btn-primary shadow-none custom-btn">Update</button>
                            </form>
                            <button type="submit" class="btn btn-primary shadow-none border-0 w-100 mt-4 d-md-none" id="settings-logout">Logout</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col col-12 col-md-1 col-lg-1 order-md-1 position-fixed primary-bg" id="nav">
                <h1 class="d-none d-md-block fs-5 mb-0">Estately</h1>
                <div class="nav-links d-flex justify-content-evenly align-items-center p-4">
                    <h1 class="mb-0 active" id="nav-dashboard"><i class="fa-solid fa-clipboard-check"></i></h1>
                    <h1 class="mb-0" id="nav-customer"><i class="fa-solid fa-users"></i></h1>
                    <h1 class="mb-0" id="nav-settings"><i class="fa-solid fa-gear"></i></h1>
                </div>
                <div class="wrapper d-none d-md-flex flex-column align-items-center gap-3">
                    <h1 class="fs-3 mb-0 text-muted" id="logout"><i class="fa-solid fa-right-from-bracket"></i></h1>
                    <div class="user-image"></div>
                </div>
            </div>
        </div>
    </section>

    <!-- //* enlist new property modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary custom-btn">Upload</button>
                </div>
            </div>
        </div>
    </div>

</body>

</html>