<?php require __DIR__ . '/../masterheader.php';

if (session_status() == PHP_SESSION_NONE)
	session_start();

//* unset session and remove cookies on logout
if (
	session_status() == PHP_SESSION_ACTIVE
	// && isset($_SESSION['vendorname']) && isset($_COOKIE['vendorname'])
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
?>

<html lang="en" dir="ltr">

<head>
	<!-- layout implemented header tags with higher precedence -->
</head>

<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand" href="index.php">Estately</a>

			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mx-auto mb-2 mb-lg-0">
					<li class="nav-item">
						<a class="nav-link" href="index.php">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="about.php">About</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="contact.php">Contact</a>
					</li>
				</ul>
			</div>
			<div class="ms-auto text-white">
				<span class="btn pe-0 text-light">Login</span>
				<small class="pe-1 fw-bold">|</small>
				<a href="signup.php" class="btn btn-sm btn-outline-light">Sign Up</a>
			</div>
		</div>
	</nav>

</body>

</html>