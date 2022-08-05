<?php
require __DIR__ . '/resources/DB/ORM/instance.php';
foreach (glob(__DIR__ . '/functionalities/*.php') as $functionalities) {
    require $functionalities;
}

// property district
$location = $_GET['location'] ?? null;
// property type
$type = $_GET['type'] ?? null;
// property id
$id = $_GET['id'] ?? null;

$sql = "
    SELECT
        p.id AS 'id',
        name,
        type,
        enlisted_for,
        district,
        division,
        ac_type,
        elevator,
        gym,
        laundry,
        microwave,
        parking,
        pharmacy,
        prayer_area,
        refrigerator,
        tv,
        wheelchair,
        wifi
    FROM
        property p
    JOIN address a ON
        p.id = a.id 
    JOIN amenity am ON
        p.id = am.id
    WHERE
        p.availability_status = 'vacant' 
    AND 
        p.post = 'public'";

$location ? ($sql .= " AND district = '$location'") : null;
$type ? ($sql .= " AND type = '$type'") : null;
$id ? ($sql .= " AND p.id = '$id'") : null;

$sql .= " LIMIT 7";

// echo $sql;

try {
    // fetch here
    $retrievedData = R::getAll($sql);
} catch (PDOException $e) {
    consoleError($e->getMessage());
}

consoleLog($retrievedData['0']);

// close connection
R::close();
?>

<!DOCTYPE html>

<head>
    <title>Properties | Estately</title>
    <style>
        .hero-section {
            background-image: url(resources/images/properties-page-bg.jpg);
            background-size: cover;
            background-position: right 30%;
            background-repeat: no-repeat;
            min-height: 45vh;
            position: relative;
        }

        .hero-section>div {
            height: 100%;
            width: 100%;
            top: 0;
            left: 0;
            position: absolute;
            background:
                linear-gradient(270deg, rgba(0, 0, 0, 0.01) 5%, rgba(0, 0, 0, 0.65) 96%);
        }
    </style>
</head>
<?php require 'layouts/app/headernav.php'; ?>

<body>
    <!-- //* hero section -->
    <section class="container-fluid hero-section">
        <div class="bf-blur">
            <div class="container h-100 d-flex align-items-center"><span class="text-light fs-1">Properties</span></div>
        </div>
    </section>

    <!-- //* search container -->
    <section class=" mt-5">
        <div class="container mt-n py-4 bg-light shadow rounded">
            <h5 class="text-center mb-3">Find your property</h5>

            <div class="row row-cols-1 row-cols-lg-2 row-cols-xl-4 mx-0">
                <div class="col px-md-1 py-1 py-xl-0 d-flex">
                    <select class="form-select form-select-sm border-end-0 rounded-end-0" id="location" onchange="districtUpdated(this)">
                        <option value="null" hidden>Location</option>
                    </select>
                    <label class="d-inline-block p-2 border rounded-end-sm" for="location">
                        <i class="bi bi-geo-fill m-0"></i>
                    </label>
                </div>
                <div class="col px-md-1 py-1 py-xl-0 d-flex">
                    <select class="form-select form-select-sm border-end-0 rounded-end-0" id="type" onchange="typeUpdated(this)">
                        <option value="null" hidden>Type</option>
                        <option value="apartment">Apartment</option>
                        <option value="studio">Studio</option>
                    </select>
                    <label class="d-inline-block p-2 border rounded-end-sm" for="type">
                        <i class="bi bi-house-door-fill m-0"></i>
                    </label>
                </div>
                <div class="col px-md-1 py-1 py-xl-0 d-flex">
                    <select class="form-select form-select-sm border-end-0 rounded-end-0" id="enlisted" onchange="enlistedUpdated(this)">
                        <option value="null" hidden>Enlisted For</option>
                        <option value="rent">Rent</option>
                        <option value="lease">Lease</option>
                        <option value="rent+lease">Both</option>
                    </select>
                    <label class="d-inline-block p-2 border rounded-end-sm" for="budget">
                        <i class="bi bi-currency-dollar fw-bold m-0"></i>
                    </label>
                </div>
                <div class="col px-md-1 py-1 py-xl-0">
                    <button class="btn btn-outline-dark hvr-float w-100">Search</button>
                </div>
            </div>
        </div>
    </section>

    <!-- //* page content -->
    <section class="container mt-5">

        <div class="row row-cols-1 row-cols-lg-3 row-cols-xl-4" id="propertyGrid">

            <?php
            include __DIR__ . '/components/app/propertycard.php';

            //* print property cards from the fetched data with helper component
            echo getPropertyCards($retrievedData);
            ?>

            <!-- //* load more properties button -->
            <div class="col p-2 d-flex justify-content-center align-items-center">
                <div class="d-flex justify-content-center align-items-center bf-blur hvr-grow w-75 border rounded shadow" style="min-height: 12rem;" onclick="(async () => {
                    $('#loadingAnimation').removeClass('d-none').addClass('d-flex')

                    await fetch('api/app/fetch/loadmoreproperties.php', { 
                        method: 'GET' , 
                        headers: { 
                            'content-type': 'application/json', 
                            'offset': $('#propertyGrid').children().length - 1,
                            'type': window.location.search.match(/type=apartment$/) ? 
                                'Apartment' : window.location.search.match(/type=studio$/) ?
                                'Studio' : null
                        } 
                    }) 
                    .then(response => response.json())
                    .then(res => {
                        if(res?.error) 
                            return console.error(res.error)

                        // insert html
                        $('#propertyGrid').children().last('div.col').before(res.data)

                        res.eoq ? $(this).siblings('span').removeClass('d-none').siblings('div').remove() : null

                        // reinitialize tooltips for new view
                        window.parent.initializeTooltips()
                    })
                    .catch(error => console.error(error))

                    $('#loadingAnimation').addClass('d-none').removeClass('d-flex')
                })()">
                    <i class="bi bi-plus fs-1"></i>
                </div>
                <span class="d-none bf-blur h-75 w-75 border rounded shadow">
                    <lottie-player src="https://assets7.lottiefiles.com/packages/lf20_gokdsgco.json" mode="bounce" background="transparent" speed="1.5" style="width: 100%; height: 75%;" loop autoplay></lottie-player>
                    <h5 class="fw-light text-center">End of query!</h5>
                </span>
            </div>
    </section>

    <?php require 'layouts/app/footer.php'; ?>
    <script type="text/javascript">
        $(function() {
            let locationQuery = new URLSearchParams(window.location.search).get('location'),
                typeQuery = new URLSearchParams(window.location.search).get('type'),
                enlistedQuery = new URLSearchParams(window.location.search).get('enlisted')

            window.sessionStorage.clear()

            //* fetch district names from api and display as location
            $.ajax({
                async: true,
                crossDomain: true,
                url: "https://bdapi.p.rapidapi.com/v1.1/districts",
                method: "GET",
                headers: {
                    "x-rapidapi-key": "cbf862913cmshaa46309e036812ap179cb1jsna79dc0cf751a",
                    "x-rapidapi-host": "bdapi.p.rapidapi.com",
                },
            }).done(function(response) {
                let html = `<option value="null" hidden>Location</option>`

                response.data.map((obj, index) => {
                    html +=
                        `<option 
                        value="${obj._id}" 
                        ${locationQuery.match(new RegExp(obj.district, 'i')) ? 'selected' : ''}
                    >
                        ${obj.district}
                    </option>`

                    // persisting valid location query on page refresh in browser sessions
                    locationQuery.match(new RegExp(obj.district, 'i')) ?
                        window.sessionStorage.setItem('district', obj._id) : null
                })
                $("#location").html(html)
            })
            
            // persisting valid type query on page refresh in browser sessions
            $('#type').children('option').each((index, option) => {
                if (typeQuery.match(new RegExp(option.value, 'i'))) {
                    window.sessionStorage.setItem('type', option.value)

                    // set select option
                    option.setAttribute('selected', '')
                }
            })

            // persisting valid enlisted query on page refresh in browser sessions
            $('#enlisted').children('option').each((index, option) => {
                if (enlistedQuery.match(new RegExp(option.value, 'i'))) {
                    window.sessionStorage.setItem('enlisted', option.value)

                    // set select option
                    option.setAttribute('selected', '')
                }
            })
        })

        let districtUpdated = (e) => {
                window.location = `${window.location.origin + window.location.pathname}?location=${e.value}`
            },
            typeUpdated = (e) => {
                let location = window.sessionStorage.getItem('district')

                if (location)
                    window.location = `${window.location.origin + window.location.pathname}?location=${location}&type=${e.value}`
                else
                    window.location = `${window.location.origin + window.location.pathname}?type=${e.value}`

            },
            enlistedUpdated = (e) => {
                let location = window.sessionStorage.getItem('district'),
                    type = window.sessionStorage.getItem('type')

                if (location && type)
                    window.location =
                    `${window.location.origin + window.location.pathname}?location=${location}&type=${type}&enlisted=${e.value}`
                else if (location)
                    window.location = `${window.location.origin + window.location.pathname}?type=${type}&enlisted=${e.value}`
                else
                    window.location = `${window.location.origin + window.location.pathname}?enlisted=${e.value}`
            }
    </script>
</body>