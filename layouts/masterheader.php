<head>
	<!-- common header tags across whole site -->

	<base href="<?php echo
				isset($_SERVER["HTTPS"]) ?
					'https://' . $_SERVER['HTTP_HOST'] : 'http://' . $_SERVER['HTTP_HOST'];
				?>/project_estately/">
	<!-- <link rel="shortcut icon" href="favicon.ico" type="image/x-icon"> -->

	<!-- //* icons -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
	<script defer src="https://kit.fontawesome.com/58511d02f2.js" crossorigin="anonymous"></script>

	<!-- //* jQuery -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

	<!-- //* styles -->
	<link rel="stylesheet" href="styles/styles.css">
	<script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script defer src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>

	<!-- //* initializations -->
	<script defer type="module">
		let tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]')),
			tooltipList = tooltipTriggerList.map(function(tooltipTriggerEl) {
				return new window.bootstrap.Tooltip(tooltipTriggerEl)
			})
	</script>
</head>

<!-- //* loading animation -->
<?php require __DIR__ . '/../components/global/loadinganimation.php'; ?>