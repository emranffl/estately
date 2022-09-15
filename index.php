<?php
require __DIR__ . '/resources/DB/ORM/instance.php';
foreach (glob(__DIR__ . '/functionalities/*.php') as $functionalities) require $functionalities;


try {
	// fetch here
	$var = R::getAll('Select * from user');
} catch (PDOException $e) {
	consoleError($e->getMessage());
}

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
			min-height: 65vh;
		}

		.hero-section>div {
			max-width: clamp(375px, 550px, 75%);
		}

		.ml4 {
			position: relative;
			width: -webkit-min-content;
			width: -moz-min-content;
			width: min-content;
			font-size: 4.2rem;
		}

		.ml4 .letters {
			position: absolute;
			margin: auto;
			left: 0;
			right: 0;
			opacity: 0;
		}
		.test{
			height: 40% !important;
		}
	</style>
</head>
<?php require 'layouts/app/headernav.php'; ?>

<body>

	<section class="container-fluid d-flex align-items-start align-items-xl-center hero-section">
		<div class="ps-3 ps-lg-5 py-5 bf-blur-lg bg-light bg-opacity-75">
			<div class="p-3">
				<h1>Searching for your dream
					<span class="text-primary ml4 d-none d-md-block" id="hero-text-property-type">
						<span class="opacity-0">apartment?</span>
						<span class="letters letters-1">Apartment?</span>
						<span class="letters letters-2">Studio?</span>
					</span>
				</h1>
				<h3>Secure through our digital contract</h3>
				<p class="text-secondary pt-2 lead">
					Estately is a real estate platform that allows you to search for your dream home
					and secure your future with our digital contract.
				</p>
				<div class="d-flex gap-2">
					<h4>Own a property?</h4>
					<a href="vendor/signup.php" target="blank" class="btn btn-sm btn-outline-primary hvr-float">
						Sign Up as Vendor
					</a>
				</div>
			</div>
		</div>
	</section>

	<!-- Featured Section -->
	<section class="container mt-5 px-0">
		<h3 class="d-flex align-items-center mb-0" id="featured"><span class="vr me-2"></span>Featured</h3>

		<div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 mt-5 px-4">
			<?php
			$featuredSQL = "SELECT p.id, name, description from property p JOIN featured f ON p.id = f.id WHERE f.status = 'active' ORDER BY paid_amount DESC LIMIT 4";
			$retrievedFeaturedData = R::getAssocRow($featuredSQL);

			$imgArr = array(
				"https://images.unsplash.com/photo-1611095210561-67f0832b1ca3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
				"https://images.pexels.com/photos/1571460/pexels-photo-1571460.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
				"https://images.pexels.com/photos/4078615/pexels-photo-4078615.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
				"https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load"
			);

			foreach ($retrievedFeaturedData as $counter => $row) {
				echo <<<BLOCK
					<div class="col p-2" id="featured-card">
						<div class="card hvr-float shadow h-100">
							
							<img class="test card-img-top" style="height: 8rem!important" src="$imgArr[$counter]"  alt="...">
							
						
							<div class="card-body h-100 d-flex flex-column justify-content-between">
								<h5 class="card-title">{$row['name']}</h5>
								<p class="card-text fs-7">{$row['description']}</p>
								<a href="/project_estately/properties/view.php?id={$row['id']}" class="btn btn-sm text-primary shadow-sm py-1">View</a>
							</div>
						</div>
					</div>
BLOCK;
			}

			?>
		</div>
	</section>


	<?php require 'layouts/app/footer.php'; ?>
	<script type="text/javascript">
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

			//* animation specific
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