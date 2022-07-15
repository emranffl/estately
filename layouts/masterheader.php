<head>
	<!-- common header tags accross whole site -->

	<base href="<?php echo
				isset($_SERVER["HTTPS"]) ? 'https://' . $_SERVER['HTTP_HOST'] : 'http://' . $_SERVER['HTTP_HOST'];
				?>/estately/">
	<!-- <base href="http://localhost/real-estate-web-app/"> -->
	<!-- <link rel="shortcut icon" href="favicon.ico" type="image/x-icon"> -->

	<!-- //* icons -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">

	<!-- //* jQuery -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

	<!-- //* styles -->
	<link rel="stylesheet" href="styles/styles.css">
	<script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>