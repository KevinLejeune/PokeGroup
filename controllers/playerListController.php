<?php
require '../models/database.php';
require '../models/player.php';

$player = new Player();

if(isset($_GET['pseudo'])){
	$pseudo = htmlspecialchars($_GET['pseudo']);
	$player->pseudo = $pseudo;
}else{
	$playerList = $player->showplayers();
}

if(isset($_GET['id'])){
	$id = htmlspecialchars($_GET['id']);
	$player->id = $id;
	if($player->deletePlayer()) {
		header('Location: ../views/playerList.php');
	} else {
		echo "Erreur, veuillez réessayer plus tard";
	}
}