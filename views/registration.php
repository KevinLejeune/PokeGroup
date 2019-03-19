<?php
session_start();

require '../controllers/registrationController.php';
?>
<!DOCTYPE html>
<html lang="fr" dir="ltr">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>PokéGroup - Inscription</title>
	<link rel="shortcut icon" href="../assets/img/favicon.png"/>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/style.css">
</head>
<body class="authentification">
	<div class="container-fluid">
		<div class="row">
			<div class="offset-sm-2 col-sm-8">
				<div class="card cardColor cardPosition">
					<div class="card-body">
						<div class="text-center" style="margin-bottom: 21px;">
							<img src="../assets/img/logo.png" class="logo">
						</div>
						<div class="offset-sm-3 col-sm-6">
							<form method="post">
							</form>
							<form method="post" action="../controllers/registrationController.php">
								<div class="form-group">
									<label for="pseudo">Surnom de dresseur</label>
									<input type="text" name="pseudo" class="form-control" id="pseudo">
								</div>
								<div class="form-group">
									<label for="mailAddress">Adresse mail</label>
									<input type="email" name="mailAddress" class="form-control" id="mailAddress">
								</div>
								<div class="form-group">
									<label for="password">Mot de passe</label>
									<input type="password" name="password" class="form-control" id="password">
								</div>
								<div class="form-group">
									<label for="passwordVerif">Vérification du mot de passe</label>
									<input type="password" name="passwordVerif" class="form-control" id="passwordVerif">
								</div><br>
								<div class="text-center">
									<a href="../index.php" class="btn btn-secondary active btn-lg" role="button">Retour</a>
									<input type="submit" class="btn btn-secondary btn-lg active" value="M'inscrire"/>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<nav class="navbar fixed-bottom text-white navColor">
		<span>© 2019 - PokéGroup</span>
		<a href="views/login.php" class="navbar-text text-white">Mentions légales</a>
	</nav>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../assets/js/script.js"></script>
</body>
</html>