<?php
require __DIR__ . '/../resources/DB/ORM/instance.php';
foreach (glob(__DIR__ . '/../functionalities/*.php') as $functionalities) require $functionalities;


// property id
$id = $_GET['id'] ?? null;

$sql = "
    SELECT
    *
    FROM
        property p
    JOIN address ad ON
        p.id = ad.id
    JOIN amenity am ON
        p.id = am.id
    LEFT JOIN apartment ap ON
        p.id = ap.id AND p.type = 'Apartment'
    LEFT JOIN studio s ON
        p.id = s.id AND p.type = 'Studio'
    LEFT JOIN rent_info ri ON
        p.id = ri.id AND(
            p.enlisted_for = 'Rent' OR p.enlisted_for = 'Both'
        )
    LEFT JOIN lease_info li ON
        p.id = li.id AND(
            p.enlisted_for = 'Lease' OR p.enlisted_for = 'Both'
        )
    LEFT JOIN application app ON
        p.id = app.id AND app.status != 'Pending'
    WHERE
        p.availability_status = 'vacant' AND p.post = 'public'";

$id ? ($sql .= " AND p.id = '$id'") : null;
// $id ? ($sql .= " AND p.id = '$id'") : header('Location:/project_estately/properties');

// echo $sql;

try {
    // fetch here
    $retrievedData = R::getAssocRow($sql);
    $retrievedData = $retrievedData['0'];
} catch (PDOException $e) {
    consoleError($e->getMessage());
}

consoleLog($retrievedData);

// close connection
R::close();
?>

<!DOCTYPE html>

<head>
    <title>View Property | Estately</title>
</head>
<?php require __DIR__ . '/../layouts/app/headernav.php'; ?>

<body>

    <!-- //* rent modal -->
    <div class="modal fade" id="rentModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="rentModal" aria-hidden="true">
        <div class="modal-dialog modal-fullscreen">
            <div class="modal-content">
                <div class="modal-header py-1">
                    <h5 class="modal-title">Rent Information</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div>
                            <div class="input-group input-group-sm mb-3">
                                <span class="input-group-text" id="inputGroup-sizing-sm">Rent</span>
                                <input type="text" class="form-control" value="<?php echo $retrievedData['rent']; ?>" readonly>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer d-flex justify-content-between">
                    <div class="form-check">
                        <input class="form-check-input mt-0" type="checkbox" id="agreeToTerms" onchange="(() => {
                                $('#rentBtn').toggleClass('disabled')
                            })()">
                        <label class="form-check-label text-secondary d-flex align-items-center ms-1" for="agreeToTerms">
                            <small>I have read and agreed to the above mentioned "terms"</small>
                        </label>
                    </div>
                    <div class="">
                        <button type="button" class="btn btn-sm px-4 btn-outline-primary disabled" id="rentBtn" data-bs-toggle="modal" data-bs-target="#rentConfirmationModal">Rent</button>
                        <button type="button" class="btn btn-sm px-4 btn-danger" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- //* rent confirmation modal -->
    <div class="modal fade bf-blur-md" id="rentConfirmationModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="rentConfirmationModal" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content bf-blur-lg bg-light bg-opacity-75">
                <div class="modal-header py-1">
                    <h5 class="modal-title" id="exampleModalLabel">Confirm</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body modal-dialog-centered">
                    <p class="lead">
                        All your personal profile information will be used to registering the rental process. Your privacy will be
                        protected as per our <a class="text-decoration-none" href="privacy.php" target="blank">privacy policy</a>. You can change your profile information at any time.
                        Click confirm to proceed.
                    </p>
                </div>
                <div class="modal-footer py-1">
                    <button type="button" class="btn btn-sm px-3 btn-outline-dark" onclick="rent()">Confirm</button>
                </div>
            </div>
        </div>
    </div>

    <!-- //* info container -->
    <section class="container mt-5">
        <div class="row row-cols-1 row-cols-lg-2">
            <div class="col">
                <div class="m-auto"><img src="resources/images/default-property.png" class="" alt="..."></div>
            </div>
            <div class="col">
                <div class="fw-light">
                    <h4><?php echo $retrievedData['name']; ?></h4>
                    <h6><span class="text-secondary">Type: </span><span class=""><?php echo $retrievedData['type']; ?></span></h6>
                    <h6><span class="text-secondary">Enlisted: </span><span class=""><?php echo $retrievedData['enlisted_for']; ?></span></h6>
                    <h6>
                        <span class="text-secondary">Location: </span><span class="">
                            <?php
                            echo $retrievedData['district'];
                            echo ", ";
                            echo $retrievedData['division'];
                            ?>
                        </span>
                    </h6>
                </div>
                <div class="d-flex gap-2 mt-3">
                    <?php

                    if ($retrievedData['enlisted_for'] == 'Rent' || $retrievedData['enlisted_for'] == 'Both') {
                        echo <<<BTNR
                            <button 
                                type="button" 
                                class="btn btn-sm btn-primary"
                                onclick="redirectOnCheck()"
                                data-bs-toggle="modal"
                                data-bs-target="#rentModal"
                            >Rent Now</button>
BTNR;
                    }

                    if ($retrievedData['enlisted_for'] == 'Lease' || $retrievedData['enlisted_for'] == 'Both') {

                        echo   <<<BTNL
                            <button 
                                type="button" 
                                class="btn btn-sm btn-warning"
                                onclick="redirectOnCheck()"
                                data-bs-toggle="modal"
                                data-bs-target="#leaseModal"    
                            >Lease Now</button>
BTNL;
                    }
                    ?>
                </div>
            </div>
        </div>
    </section>

    <!-- //* location & description container-->
    <section class="mt-5">
        <ul class="nav nav-tabs d-flex justify-content-center" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#location" type="button" role="tab">Location</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" data-bs-toggle="tab" data-bs-target="#description" type="button" role="tab">Description</button>
            </li>

        </ul>
        <div class="tab-content">
            <div class="tab-pane fade show active" id="location" role="tabpanel">
                <div class="position-relative">
                    <div class="position-absolute top-0 end-0 p-3 bf-blur-lg bg-secondary bg-opacity-25" style="border-bottom-left-radius: 0.25rem;">
                        <div class="form-check form-switch">
                            <input class="form-check-input" type="checkbox" role="switch" id="directionMode" onchange="mapViewChanged(this)">
                            <label class="form-check-label font-monospace d-none d-md-inline-block" style="margin-top: 3px;" for="directionMode">Directions Mode</label>
                        </div>
                    </div>
                    <?php
                    // $placeModeMapSrc = "https://www.google.com/maps/embed/v1/place?key=" . getenv('GM_API_KEY');

                    $placeModeMapSrc .= !$retrievedData['latitude'] || !$retrievedData['longitude']
                        ? // when either (or both) of them is null, search by name
                        "&q=" . $retrievedData['name'] . "&zoom=16"
                        : "&q=" . $retrievedData['latitude'] . "," . $retrievedData['longitude'] . "&zoom=15";
                    ?>
                    <iframe id="map" width="100%" height="450px" frameBorder="0" style="border: 0" src="<?php echo $placeModeMapSrc; ?>" allowFullScreen></iframe>
                </div>
            </div>
            <div class="tab-pane fade" id="description" role="tabpanel" aria-labelledby="profile-tab">
                <div class="container my-4">
                    <?php echo $retrievedData['description'] ?? "Not provided"; ?>
                </div>
            </div>
        </div>
    </section>

    <?php require __DIR__ . '/../layouts/app/footer.php'; ?>
    <script type="text/javascript">
        $(function() {
            new bootstrap.Modal(document.getElementById('rentModal')).show()
        })

        let mapViewChanged = (e) => {
                let mapSrc = "<?php echo $placeModeMapSrc; ?>",
                    directionSrc = "https://www.google.com/maps/embed/v1/directions?key=<?php echo getenv('GM_API_KEY'); ?>"

                if (!navigator.geolocation) {
                    $("#map").text(
                        `Your browser doesn\'t support geolocation. Try inputting manually.`
                    )
                    return
                }

                navigator.geolocation.getCurrentPosition(
                    position => {

                        directionSrc +=
                            // when either (or both) of them is null, search by name
                            (!<?php echo $retrievedData['latitude']; ?> ||
                                !<?php echo $retrievedData['longitude']; ?>) ?
                            "&origin=" + position.coords.latitude + "," + position.coords.longitude +
                            "&destination=<?php echo $retrievedData['name']; ?>&mode=driving&units=metric" :
                            // otherwise, search by coordinates
                            "&origin=" + position.coords.latitude + "," + position.coords.longitude +
                            "&destination=<?php echo $retrievedData['latitude']; ?>,<?php echo $retrievedData['longitude']; ?>" +
                            "&mode=driving&units=metric"

                        $('#map').attr('src', $(e).is(':checked') ? directionSrc : mapSrc)
                        return
                    },
                    error => {
                        $("#map").html(error.message)
                        return
                    }
                )

                $('#map').attr('src', mapSrc)
            },
            redirectOnCheck = () => {

                // if (!false<?php echo isClientLoggedIn(); ?>)
                //     window.location.href = `${window.location.origin}/project_estately/user/index.php`
                // window.location.href = `${window.location.origin}/project_estately/user/index.php?redirect=${window.location.href}`


            }
    </script>
</body>