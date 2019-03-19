<?php
session_start();

?>
<!DOCTYPE html>
<html lang="fr" dir="ltr">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>PokéGroup - Liste des études</title>
	<link rel="shortcut icon" href="../assets/img/favicon.png"/>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
	<link rel="stylesheet" media="screen" href="../assets/css/portals.css" />
</head>
<body class="background">
	<nav class="navbar navbar-expand-lg navColor">
		<div class="mr-auto">
			<img src="../assets/img/logo.png" height="42" class="margin">
			<a href="home.php" class="text-white margin" role="button" aria-pressed="true">Actualités</a>
			<a href="portals.php" class="text-white margin" role="button" aria-pressed="true">Liste des études</a>
			<a href="playerList.php" class="text-white margin" role="button" aria-pressed="true">Liste des joueurs</a>
		</div>
		<div class="nav justify-content-end">
			<div class="dropdown">
				<a class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"><?= $_SESSION['pseudo']?> </a>
				<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
					<a class="dropdown-item" href="#">Gérer son profil</a>
					<a class="dropdown-item" href="#">Déconnexion</a>
				</div>
			</div>
		</div>
	</nav>
	<div class="container-fluid">
		<div class="row">
			<div id="map">
			<div id="popup">
				<h5></h5>

				<p></p>

				<div>
					<form method="post" action="">
						<input type="hidden" name="latlong" value="" />
						<input type="image" src="../assets/img/unconfirmed.png" data-state="unconfirmed" title="Unconfirmed" />
						<input type="image" src="../assets/img/pokestop.png" data-state="pokestop" title="PokéStop" />
						<input type="image" src="../assets/img/gym.png" data-state="gym" title="Gym" />
					</form>
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
	<script src="../assets/js/openlayers.js"></script>
	<script src="../assets/js/portals.js"></script>
</body>
</html>