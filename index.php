<?php
require __DIR__ . '/resources/DB/ORM/instance.php';
require __DIR__ . '/functionalities/console.php';

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
	<title>Estately</title>
	<script defer src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>

	<style>
		.hero-section {
			background-image: url(resources/images/landing-page-bg.jpg);
			background-size: cover;
			background-position: left top;
			background-repeat: no-repeat;
		}

		.hero-section>div {
			max-width: clamp(375px, 550px, 75%);
		}

		.ml4 {
			position: relative;
			width: -webkit-min-content;
			width: -moz-min-content;
			width: min-content;
			font-size: 4.7rem;
		}

		.ml4 .letters {
			position: absolute;
			margin: auto;
			left: 0;
			right: 0;
			opacity: 0;
		}
	</style>
</head>
<?php require 'layouts/app/headernav.php'; ?>

<body>

	<section class="container-fluid min-vh-65 d-flex align-items-start align-items-xl-center hero-section">
		<div class="ps-3 ps-lg-5 py-5">
			<h1>Searching for your dream
				<span class="text-primary ml4" id="hero-text-property-type">
					<span class="opacity-0">apartment?</span>
					<span class="letters letters-1">apartment?</span>
					<span class="letters letters-2">studio?</span>
					<!-- <span class="letters letters-3">condo?</span> -->
				</span>
			</h1>
			<h3>Secure through our digital contract</h3>
			<p class="text-secondary pt-2">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Et voluptas quos voluptatum dolorum autem modi atque consectetur corrupti, amet corporis.</p>
			<div class="d-flex gap-2">
				<h5>Own a property?</h5>
				<a href="vendor/signup.php" target="blank" class="btn btn-sm btn-outline-primary hvr-float">
					Sign Up as Vendor
				</a>
			</div>
		</div>
	</section>

	<section class="">
		<div class="container mt-n5 py-4 bg-light shadow rounded">
			<h3 class="text-center mb-3">Find your custom real estate</h3>

			<div class="row row-cols-1 row-cols-lg-2 row-cols-xl-4 mx-0">
				<div class="col px-md-1 py-1 py-xl-0 d-flex">
					<select class="form-select form-select-sm border-end-0 rounded-end-0" id="location" onchange="locationOnChange(this)">
						<option value="null" hidden>Location</option>
					</select>
					<label class="d-inline-block p-2 border rounded-end-sm" for="location">
						<i class="bi bi-geo-fill m-0"></i>
					</label>
				</div>
				<div class="col px-md-1 py-1 py-xl-0 d-flex">
					<select class="form-select form-select-sm border-end-0 rounded-end-0" id="type">
						<option value="null" hidden>Type</option>
						<option value="apartment">Apartment</option>
						<option value="studio">Studio</option>
					</select>
					<label class="d-inline-block p-2 border rounded-end-sm" for="type">
						<i class="bi bi-house-door-fill m-0"></i>
					</label>
				</div>
				<div class="col px-md-1 py-1 py-xl-0 d-flex">
					<select class="form-select form-select-sm border-end-0 rounded-end-0" id="budget">
						<option value="null" hidden>Budget</option>
						<option value="1">5000 - 10000</option>
						<option value="2">10000 - 15000</option>
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

	<section class="container mt-5 px-0">
		<h3 class="d-flex align-items-center"><span class="vr me-2"></span> Featured</h3>

		<div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 mt-5">
			<div class="col p-2">
				<div class="card hvr-float">
					<img src="https://images.unsplash.com/photo-1611095210561-67f0832b1ca3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
			</div>

			<div class="col p-2">
				<div class="card">
					<img src="https://images.unsplash.com/photo-1611095210561-67f0832b1ca3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
			</div>

			<div class="col p-2">
				<div class="card">
					<img src="https://images.unsplash.com/photo-1611095210561-67f0832b1ca3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
			</div>

			<div class="col p-2">
				<div class="card">
					<img src="https://images.unsplash.com/photo-1611095210561-67f0832b1ca3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
			</div>

		</div>
	</section>


	<?php require 'layouts/app/footer.php'; ?>
	<script defer type="text/javascript">
		$(function() {
			console.log("ready!")

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
				response.data.map((elem, index) => {
					html += `<option value="${elem.district}">${elem.district}</option>`
				})
				$("#location").html(html)
			})

			// * animation specific
			let ml4 = {}
			ml4.opacityIn = [0, 1]
			ml4.scaleIn = [0.2, 1]
			ml4.scaleOut = 3
			ml4.durationIn = 800
			ml4.durationOut = 600
			ml4.delay = 800

			anime.timeline({
					loop: true
				})
				.add({
					targets: '.ml4 .letters-1',
					opacity: ml4.opacityIn,
					scale: ml4.scaleIn,
					duration: ml4.durationIn
				}).add({
					targets: '.ml4 .letters-1',
					opacity: 0,
					scale: ml4.scaleOut,
					duration: ml4.durationOut,
					easing: "easeInExpo",
					delay: ml4.delay
				}).add({
					targets: '.ml4 .letters-2',
					opacity: ml4.opacityIn,
					scale: ml4.scaleIn,
					duration: ml4.durationIn
				}).add({
					targets: '.ml4 .letters-2',
					opacity: 0,
					scale: ml4.scaleOut,
					duration: ml4.durationOut,
					easing: "easeInExpo",
					delay: ml4.delay
				})
				// .add({
				// 	targets: '.ml4 .letters-3',
				// 	opacity: ml4.opacityIn,
				// 	scale: ml4.scaleIn,
				// 	duration: ml4.durationIn
				// }).add({
				// 	targets: '.ml4 .letters-3',
				// 	opacity: 0,
				// 	scale: ml4.scaleOut,
				// 	duration: ml4.durationOut,
				// 	easing: "easeInExpo",
				// 	delay: ml4.delay
				// })
				.add({
					targets: '.ml4',
					opacity: 0,
					duration: 500,
					delay: 500
				})

		})

		let locationOnChange = (e) => {
			console.log("location changed " + e.value)
		}
	</script>
</body>