<?php
require __DIR__ . '/../resources/DB/ORM/instance.php';
foreach (glob(__DIR__ . '/../functionalities/*.php') as $functionalities) require $functionalities;

//* retrieving location coordinates from the api
$curl = curl_init();
$findIPLocation = getenv('IP_LOCATION_API_KEY');
curl_setopt_array($curl, [
    CURLOPT_URL => "https://find-any-ip-address-or-domain-location-world-wide.p.rapidapi.com/iplocation?apikey=$findIPLocation",
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_ENCODING => "",
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 30,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => "GET",
    CURLOPT_HTTPHEADER => [
        "X-RapidAPI-Host: find-any-ip-address-or-domain-location-world-wide.p.rapidapi.com",
        "X-RapidAPI-Key: 4e5af1f078msh5096b16206fe69ep162351jsn1bbd3c374daf"
    ],
]);

$curlResponse = empty(curl_exec($curl)) ? curl_error($curl) : json_decode(curl_exec($curl), JSON_PRETTY_PRINT);

$ipLat = $curlResponse['latitude'];
$ipLon = $curlResponse['longitude'];

curl_close($curl);

// query string
$q = $_GET['q'] ?? null;
// property district
$location = isset($_GET['location']) ? ucwords($_GET['location']) : null;
// property type
$type = isset($_GET['type']) ? ucwords($_GET['type']) : null;
// property enlisted for
$enlisted = isset($_GET['enlisted']) ? ucwords($_GET['enlisted']) : null;

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
        wifi,
        ROUND(
            6371 * ACOS(
                COS(RADIANS($ipLat)) * COS(RADIANS(latitude)) * COS(RADIANS(longitude) 
                - RADIANS($ipLon)) 
                + SIN(RADIANS($ipLat)) * SIN(RADIANS(latitude)
            ) 
        ),
        2
    ) AS distance
    FROM
        property p
    JOIN address a ON
        p.id = a.id 
    JOIN amenity am ON
        p.id = am.id
    LEFT JOIN application ap ON
        p.id = ap.id AND ap.status != 'Pending'
    WHERE
        p.availability_status = 'vacant' 
    AND 
        p.post = 'public'";

$q ? ($sql .= " AND name LIKE '%$q%'") : null;
$location ? ($sql .= " AND district = '$location'") : null;
$type ? ($sql .= " AND type = '$type'") : null;
$enlisted ? ($sql .= " AND  enlisted_for = '$enlisted'") : null;
$sql .= ' ORDER BY distance ASC';
$limit = 7;
$sql .= " LIMIT $limit";

// echo $sql;

try {
    // fetch here
    $retrievedData = R::getAssocRow($sql);
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
            background-image: url(../resources/images/properties-page-bg.jpg);
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
<?php require __DIR__ . '/../layouts/app/headernav.php'; ?>

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

            <div class="row row-cols-1 row-cols-lg-2 mx-0">
                <div class="col px-md-1 py-1 py-xl-0">
                    <h5 class="text-center mb-3">Find your property</h5>
                </div>
                <div class="col px-md-1 py-1 py-xl-0 d-flex">
                    <input class="form-control form-control-sm border-end-0 rounded-end-0" type="search" placeholder="Search" id="search" value="<?php echo $q; ?>">
                    <button class="btn btn-outline-dark d-flex justify-content-center align-items-center p-2 border border-start- border-secondary rounded-start-0 rounded-end-sm" onclick="search()">
                        <i class="bi bi-search m-0"></i>
                    </button>
                </div>
            </div>
            <div class="row row-cols-1 row-cols-lg-3 mx-0 mt-lg-2">
                <div class="col px-md-1 py-1 py-xl-0 d-flex">
                    <select class="form-select form-select-sm border-end-0 rounded-end-0" id="location" onchange="districtUpdated(this)">
                        <option value="null" hidden>Location</option>
                    </select>
                    <label class="d-flex justify-content-center align-items-center p-2 border rounded-end-sm" for="location">
                        <i class="bi bi-geo-fill m-0"></i>
                    </label>
                </div>
                <div class="col px-md-1 py-1 py-xl-0 d-flex">
                    <select class="form-select form-select-sm border-end-0 rounded-end-0" id="type" onchange="typeUpdated(this)">
                        <option value="null" hidden>Type</option>
                        <option value="apartment">Apartment</option>
                        <option value="studio">Studio</option>
                    </select>
                    <label class="d-flex justify-content-center align-items-center p-2 border rounded-end-sm" for="type">
                        <i class="bi bi-house-door-fill m-0"></i>
                    </label>
                </div>
                <div class="col px-md-1 py-1 py-xl-0 d-flex">
                    <select class="form-select form-select-sm border-end-0 rounded-end-0" id="enlisted" onchange="enlistedUpdated(this)">
                        <option value="null" hidden>Enlisted For</option>
                        <option value="rent">Rent</option>
                        <option value="lease">Lease</option>
                        <option value="both">Both</option>
                    </select>
                    <label class="d-flex justify-content-center align-items-center p-2 border rounded-end-sm" for="budget">
                        <div class="d-flex">
                            <i class="bi bi-currency-dollar fw-bold m-0"></i>
                            <i class="bi bi-file-text-fill fw-bold ms-n2 mt-2 bg-light"></i>
                        </div>
                    </label>
                </div>
            </div>
            <div class="d-flex gap-2 mt-3 justify-content-center align-items-center" id="filters">
                <?php
                if ($location || $type || $enlisted)
                    echo <<<CONTENT
                        <h6 class="mb-0 me-1">Active filters:</h6>
CONTENT;
                ?>
                <div class="d-flex align-items-center gap-1">
                    <?php
                    echo $location ? "<span class='badge badge-light shadow p-2 text-info font-monospace'>$location | Location<i class='bi bi-x-lg ps-2 pt-1 mb-0 cursor-pointer' data-parent='location'></i></span>" : null;
                    echo $type ? "<span class='badge badge-light shadow p-2 text-info font-monospace'>$type | Type<i class='bi bi-x-lg ps-2 pt-1 mb-0 cursor-pointer' data-parent='type'></i></span>" : null;
                    echo $enlisted ? "<span class='badge badge-light shadow p-2 text-info font-monospace'>$enlisted | Enlisted<i class='bi bi-x-lg ps-2 pt-1 mb-0 cursor-pointer' data-parent='enlisted'></i></span>" : null;
                    ?>
                </div>
            </div>
        </div>
    </section>

    <!-- //* page content -->
    <section class="container mt-5">

        <div class="row row-cols-1 row-cols-lg-3 row-cols-xl-4" id="propertyGrid">

            <?php
            include __DIR__ . '/../components/app/propertycard.php';

            //* print property cards from the fetched data with helper component
            if ($retrievedData) {
                echo getPropertyCards($retrievedData);

                //* load more properties button
                if (sizeof($retrievedData) == $limit)
                    echo <<<BTN
                            <div class="col p-2 d-flex justify-content-center align-items-center">
                                <div 
                                    class="d-flex justify-content-center align-items-center bf-blur hvr-grow w-75 border rounded shadow" 
                                    style="min-height: 12rem;" 
                                    onclick="(async () => {
                                        $('#loadingAnimation').removeClass('d-none').addClass('d-flex');

                                        await fetch('api/app/fetch/loadmoreproperties.php', { 
                                            method: 'GET' , 
                                            headers: { 
                                                'content-type': 'application/json', 
                                                'offset': $('#propertyGrid').children().length - 1,
                                                'query': new URLSearchParams(window.location.search).get('q'),
                                                'district': new URLSearchParams(window.location.search).get('location'),
                                                'type': new URLSearchParams(window.location.search).get('type'),
                                                'enlisted': new URLSearchParams(window.location.search).get('enlisted')
                                            } 
                                        }) 
                                        .then(response => response.json())
                                        .then(res => {
                                            if(res?.error) 
                                                return console.error(res.error)

                                            //* insert html
                                            $('#propertyGrid').children().last('div.col').before(res.data)

                                            res.eoq ? $(this).siblings('span').removeClass('d-none').siblings('div').remove() : null

                                            // reinitialize tooltips for new view
                                            window.parent.initializeTooltips()
                                        })
                                        .catch(error => console.error(error))

                                        $('#loadingAnimation').addClass('d-none').removeClass('d-flex')
                                    })()"
                                >
                                    <i class="bi bi-plus fs-1"></i>
                                </div>
                                <span class="d-none bf-blur h-75 w-75 border rounded shadow">
                                    <lottie-player src="https://assets7.lottiefiles.com/packages/lf20_gokdsgco.json" mode="bounce" background="transparent" speed="1.5" style="width: 100%; height: 75%;" loop autoplay></lottie-player>
                                    <h5 class="fw-light text-center">End of query!</h5>
                                </span>
                            </div>
BTN;
            } else echo <<<NO_RESULTS
                            <div class="col mx-auto d-flex justify-content-center align-items-center">
                                <span class="bf-blur border rounded shadow">
                                    <lottie-player src="https://assets7.lottiefiles.com/packages/lf20_aKRZfw.json" mode="bounce" background="transparent" speed="1.5" style="width: 100%; height: 75%;" loop autoplay></lottie-player>
                                    <h5 class="fw-light text-center">Search didn't match any result!</h5>
                                </span>
                            </div>
NO_RESULTS;
            ?>
    </section>

    <?php require __DIR__ . '/../layouts/app/footer.php'; ?>
    <script defer type="text/javascript">
        $(function() {
            let locationQuery = new URLSearchParams(window.location.search).get('location'),
                typeQuery = new URLSearchParams(window.location.search).get('type'),
                enlistedQuery = new URLSearchParams(window.location.search).get('enlisted')?.replace(/ /g, '+')

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
                        ${locationQuery?.match(new RegExp(obj.district, 'i')) ? 'selected' : ''}
                    >
                        ${obj.district}
                    </option>`

                    // persist valid location query on page refresh in browser sessions
                    locationQuery?.match(new RegExp(obj.district, 'i')) ?
                        window.sessionStorage.setItem('district', obj._id) : null
                })
                $("#location").html(html)
            })

            // persist valid type query on page refresh in browser sessions
            $('#type').children('option').each((index, option) => {
                if (typeQuery?.match(new RegExp(option.value, 'i'))) {
                    window.sessionStorage.setItem('type', option.value)

                    // set select option
                    option.setAttribute('selected', '')
                }
            })

            // persist valid enlisted query on page refresh in browser sessions
            $('#enlisted').children('option').each((index, option) => {
                if (enlistedQuery?.match(new RegExp(option.value, 'i'))) {
                    window.sessionStorage.setItem('enlisted', option.value)

                    // set select option
                    option.setAttribute('selected', '')
                }
            })

            // remove active filters onclick of clear button
            $('#filters').find('i').on('click', (elem) => {
                let params = new URLSearchParams(window.location.search)

                params.delete(elem.currentTarget.dataset.parent)
                window.location = `${window.location.origin + window.location.pathname}?${params.toString()}`
            })
        })

        let search = () => {
                if ($('#search').val())
                    window.location = `${window.location.origin + window.location.pathname}?q=${$('#search').val()}`
            },
            districtUpdated = (e) => {
                let query = new URLSearchParams(window.location.search).get('q')

                if (query)
                    window.location = `${window.location.origin + window.location.pathname}?q=${query}&location=${e.value}`
                else
                    window.location = `${window.location.origin + window.location.pathname}?location=${e.value}`

            },
            typeUpdated = (e) => {
                let query = new URLSearchParams(window.location.search).get('q'),
                    location = window.sessionStorage.getItem('district')

                if (query && location)
                    window.location = `${window.location.origin + window.location.pathname}?q=${query}&location=${location}&type=${e.value}`
                else if (query)
                    window.location = `${window.location.origin + window.location.pathname}?q=${query}&type=${e.value}`
                else
                    window.location = `${window.location.origin + window.location.pathname}?type=${e.value}`

            },
            enlistedUpdated = (e) => {
                let query = new URLSearchParams(window.location.search).get('q'),
                    location = window.sessionStorage.getItem('district'),
                    type = window.sessionStorage.getItem('type')

                if (query && location && type)
                    window.location = `${window.location.origin + window.location.pathname}?q=${query}&location=${location}&type=${type}&enlisted=${e.value}`
                else if (query && location)
                    window.location = `${window.location.origin + window.location.pathname}?q=${query}&location=${location}&enlisted=${e.value}`
                else if (query)
                    window.location = `${window.location.origin + window.location.pathname}?q=${query}&enlisted=${e.value}`
                else
                    window.location = `${window.location.origin + window.location.pathname}?enlisted=${e.value}`
            }
    </script>
</body>