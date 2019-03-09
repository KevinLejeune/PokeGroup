<?php
require_once '../models/database.php';
require_once '../models/player.php';

$players = new Player();

if(COUNT($_POST) > 0){
    $pseudo = htmlspecialchars($_POST['pseudo']);
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
    $mailAddress = htmlspecialchars($_POST['mailAddress']);

    $players->pseudo = $pseudo;
    $players->password = $password;
    $players->mailAddress = $mailAddress;

    if($players->addPlayer()){
        header('location: ../views/home.php');
    }
}
?>