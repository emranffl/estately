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
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Dropdown
						</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
							<li>
								<hr class="dropdown-divider">
							</li>
							<li><a class="dropdown-item" href="#">Something else here</a></li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="">
				<span class="btn px-0" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight">Login</span>
				<small class="pe-1 fw-bold">|</small>
				<a href="user/signup.php" class="btn btn-sm btn-outline-dark">Sign Up</a>
			</div>
		</div>
	</nav>

	<!-- //* login offcanvas -->

	<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
		<div class="offcanvas-header">
			<h5 id="offcanvasRightLabel">Login</h5>
			<button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
		</div>
		<div class="offcanvas-body">

			<div class="container-fluid d-flex flex-column h-100">

				<form class="">
					<div class="mb-2">
						<label for="loginEmail" class="form-label">Email</label>
						<input type="email" class="form-control" id="loginEmail" placeholder="example@domain.com" required>
						<small class="invalid-feedback" id="loginEmailFeedback"></small>
					</div>

					<div class="mb-4">
						<label for="loginPassword" class="form-label">Password</label>
						<input type="text" class="form-control" id="loginPassword" placeholder="4-25 characters" required>
						<small class="invalid-feedback" id="loginPasswordFeedback"></small>
					</div>

					<a href="reset.php" class="btn ps-0 pt-0 link-danger">Forgot password?</a>

					<div class="text-center text-md-start mt-2 pt-2">
						<button type="submit" class="btn btn-sm btn-primary w-75 w-md-100">Login</button>
						<small class="d-block fw-bold mt-2">Don't have an account? <a href="signup.php" class="btn ps-0 pt-0 link-primary">Sign Up</a></small>
					</div>

				</form>

				<div class="d-flex align-items-center mb-3">
					<hr class="flex-grow-1">
					<p class="text-center fw-bold mx-3 mb-0">Or</p>
					<hr class="flex-grow-1">
				</div>

				<h5 class="text-center">Continue with</h5>
				<div class="d-flex flex-row align-items-center justify-content-center mt-3">
					<button type="button" class="btn btn-primary btn-floating mx-1">
						<i class="bi bi-google"></i>
					</button>

					<button type="button" class="btn btn-primary btn-floating mx-1">
						<i class="bi bi-facebook"></i>
					</button>

					<button type="button" class="btn btn-primary btn-floating mx-1">
						<i class="bi bi-twitter"></i>
					</button>
				</div>


				<div class="mt-auto mb-5">
					<img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp" class="img-fluid" alt="decoration image">
				</div>
			</div>

		</div>
	</div>
</body>

</html>