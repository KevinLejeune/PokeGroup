<?php
session_start();

require '../controllers/taskListController.php';
?>
<!DOCTYPE html>
<html lang="fr" dir="ltr">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>PokéGroup - Liste des études</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/style.css">
</head>
<body class="background">
	<nav class="navbar navbar-expand-lg navColor">
		<div class="mr-auto">
			<img src="../assets/img/logo.png" height="42" class="margin">
			<a href="home.php" class="text-white margin" role="button" aria-pressed="true">Actualités</a>
			<a href="taskList.php" class="text-white margin" role="button" aria-pressed="true">Liste des études</a>
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
			<div class="card bg-dark text-white" style="margin: 21px 21px 75px 21px;">
				<?php
				if(!empty($taskList)){
					foreach($taskList as $task){
						?>
						<div class="accordion" id="accordionExample">
							<div class="card bg-dark">
								<div class="card-header">
									<p><?= $task->name; ?> - <?= $task->reward; ?></p>
								</div>
								<div class="card-body">
									<?php 
										if(!empty($pokestopList)){
											foreach($pokestopList as $pokestop){
												?>
												<!-- <p><?= $pokestop->name; ?> - <?= $pokestop->latitude; ?>, <?= $pokestop->longitude; ?></p> -->
												<!-- <img src="<?= $pokestop->image; ?>" style="width: 100px"> -->
												<?php
											}
										}
									?>
								</div>
							</div>
						</div>
						<?php
					}
				}
				?>
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