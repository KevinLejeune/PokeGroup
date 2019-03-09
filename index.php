<?php
session_start();
?>
<!DOCTYPE html>
<html lang="fr" dir="ltr">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>PokéGroup</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
</head>
<body class="authentification">
	<div class="container-fluid">
		<div class="row">
			<div class="offset-sm-2 col-sm-8">
				<div class="card text-center cardColor cardPosition">
					<div class="card-body">
						<img src="assets/img/logo.png" class="logo"><br><br>
						<div class="offset-sm-2 col-sm-8">
							<p>Bienvenue sur le site qui vous permettra de suivre les informations de votre communauté Pokémon GO</p>
							<a>- Liste des membres avec leurs codes dresseurs</a></br>
							<a>- Liste des études, par Pokéstop, actualisée par les joueurs</a></br>
							<a>- Actualités liées au jeu et la communauté</a></br></br>
							<p>A terme, ce site intégrera un système de messagerie instantané, la possibilité de savoir ce que tes amis proposent en échange et bien plus encore...</p>
							<a href="views/registration.php" class="btn btn-secondary active btn-lg" role="button">Inscription</a>
							<a href="views/login.php" class="btn btn-secondary active btn-lg" role="button">Connexion</a>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		<nav class="navbar fixed-bottom text-white navColor">
			<span>© 2019 - PokéGroup</span>
			<a href="views/login.php" class="navbar-text text-white">Mentions légales</a>
		</nav>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/script.js"></script>
</body>
</html>