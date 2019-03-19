<?php
session_start();

require '../controllers/homeController.php';
?>
<!DOCTYPE html>
<html lang="fr" dir="ltr">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>PokéGroup - Accueil</title>
	<link rel="shortcut icon" href="../assets/img/favicon.png"/>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/style.css">
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
			<div class="card cardColor"style="margin: auto; margin-top: 21px; margin-left: 21px; margin-right: 21px;">
				<div class="card-body">
					<h1>En avant pour célébrer la Journée Pokémon.</h1>
					<p>Nous aimons tous nos Pokémon, et toutes les occasions sont bonnes pour les célébrer. La Journée Pokémon a lieu tous les ans le 27 février. Savez-vous pourquoi cette journée est si spéciale ? Elle marque le lancement des premiers jeux vidéo Pokémon, en 1996. Afin de célébrer la #JourneePokemon, nous avons invité des Pokémon bien connus découverts dans la région de Kanto à nous rejoindre.</p>

					<h2>Horaire</h2>

					<p>Du 26 février 2019 à 13h PST (UTC -8) au 28 février 2019 à 13h PST (UTC -8)</p>

					<h2>Particularités</h2>

					<p>Les Pokémon rencontrés par les Dresseurs dans la région de Kanto, au tout début de leurs aventures, apparaîtront plus fréquemment dans la nature.
					D’autres Pokémon découverts dans la région de Kanto pourront être affrontés dans des Raids.
					Des Pikachu et des Évoli coiffés d’une couronne de fleurs feront une apparition spéciale dans la nature et dans vos Études de terrain.
					Au cours de cette Journée Pokémon, vous pourriez même rencontrer des Roucool chromatiques et des Rattata chromatiques.</p>
					
					<p>Nous vous remercions d’être des nôtres dans cette aventure. Ensemble, célébrons la Journée Pokémon.</p>
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
	<script type="text/javascript" src="../assets/js/script.js"></script>
</body>
</html>