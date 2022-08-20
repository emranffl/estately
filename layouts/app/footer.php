
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<style>
		.custom-bg{
			background-color: #F3F3F3;
		}
		#footer-links .links a, #terms-conditions a{
			text-decoration: none;
			color: #000;
		}
		#footer-links .links a:hover, #terms-conditions a:hover{
			border-bottom: 1px solid black;
		}
		/* Media Queries */
		@media only screen and (min-width: 768px){
			#footer-links .links{
				justify-content: end;
			}
			#terms-conditions{
				text-align: end;
			}
		}
	</style>
	<footer class="container-fluid p-5 mt-5 custom-bg">
		<div class="row g-0">
			<div class="col col-12 col-md-6">
				<h1>Estately</h1>
				<p>Discover the world's best real estate management service.</p>
			</div>
			<div class="col col-12 col-md-6" id="footer-links">
				<div class="links d-flex flex-wrap gap-3">
					<a href="">Facebook</a>
					<a href="">Instagram</a>
					<a href="">LinkedIn</a>
					<a href="">Twitter</a>
				</div>
			</div>
			<div class="col col-12"><hr></div>
			<div class="col col-12 col-md-6">
				<p>ⓒ Estately</p>
			</div>
			<div class="col col-12 col-md-6" id="terms-conditions">
				<a href="">Terms of use and privary policy</a>
			</div>
		</div>
	</footer>
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>