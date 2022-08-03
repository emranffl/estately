<?php
if (session_status() == PHP_SESSION_NONE)
	session_start();
?>

<html lang="en" dir="ltr">

<?php require __DIR__ . '/../masterheader.php'; ?>

<head>
	<!-- layout implemented header tags with higher precedence -->
</head>

<body>
	<!-- //* loading animation -->
	<?php require __DIR__ . '/../../components/global/loadinganimation.php'; ?>

	<nav class="navbar navbar-expand-lg sticky-top navbar-light bg-light">
		<div class="container">
			<button class="navbar-toggler me-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<i class="bi bi-list"></i>
			</button>

			<a class="navbar-brand me-auto px-0" href="index.php">Estately</a>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-5 me-auto mb-2 mb-lg-0">
					<li class="nav-item">
						<a class="nav-link" href="index.php">Home</a>
					</li>
					<li class="nav-item dropdown">
						<div class="btn-group dropend">
							<a class="nav-link" href="properties.php">Properties</a>
							<span class="nav-link dropdown-toggle ps-0 py-0 my-auto" role="button" data-bs-toggle="dropdown">
								<span class="visually-hidden">Toggle Dropdown</span>
							</span>
							<ul class="dropdown-menu dropdown-menu-light">
								<li><a class="dropdown-item" href="properties.php?type=apartment" target="_blank">Apartment</a></li>
								<li>
									<hr class="dropdown-divider">
								</li>
								<li><a class="dropdown-item" href="properties.php?type=studio" target="_blank">Studio</a></li>
							</ul>
						</div>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="about.php">About</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="contact.php">Contact</a>
					</li>
				</ul>
			</div>
			<div class="">
				<?php

				//* create a new session if cookies exist
				if (session_status() != PHP_SESSION_DISABLED && isset($_COOKIE['name']) && isset($_COOKIE['email'])) {
					$_SESSION['name'] = $_COOKIE['name'];
					$_SESSION['email'] = $_COOKIE['email'];
				}

				//* unset session and remove cookies on logout
				if (
					session_status() == PHP_SESSION_ACTIVE
					&& isset($_SESSION['name']) && isset($_COOKIE['name'])
					&& $_SERVER['QUERY_STRING'] == 'session=end'
				) {
					// remove server sessions
					session_unset();

					// remove browser cookies
					setcookie('name', '', time() - 60, '/');
					setcookie('email', '', time() - 60, '/');

					// redirect to login page
					header('Location: /project_estately/user/index.php');
				}



				if (session_status() != PHP_SESSION_DISABLED  && !isset($_SESSION['name']) && !isset($_COOKIE['name'])) {
					echo <<<D1
					<div>
						<a href="user/index.php" class="btn px-0" onclick="(() => {
							//* append redirect link if not in login page
							if(this.href != window.location.origin + window.location.pathname) 
								this.href += '?redirect='+ window.location
							})()">Login</a>
						<small class="pe-1 fw-bold">|</small>
						<a href="user/signup.php" class="btn btn-sm btn-outline-dark">Sign Up</a>
					</div>
					D1;
				} else {
					$profileName = htmlspecialchars($_COOKIE['name']);
					$profileEmail = htmlspecialchars($_COOKIE['email']);

					echo <<<D2
					<div class="text-secondary dropdown">
						<span class="dropdown-toggle text-dark" role="button" data-bs-toggle="dropdown" data-bs-offset="-20,0">
							{$profileName}
						</span>
						<ul class="dropdown-menu dropdown-menu-light">
							<li><a class="dropdown-item" href="user/profile.php?user={$profileEmail}">Profile</a></li>
							<li><a class="dropdown-item" href="user/dashboard.php?user={$profileEmail}">Dashboard</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="layouts/app/headernav.php?session=end">Logout</a></li>
						</ul>
					</div>
				D2;
				}
				?>
			</div>
		</div>
	</nav>

</body>

</html>