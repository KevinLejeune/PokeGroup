<?php
require '../models/database.php';
require '../models/pokestop.php';
$pokestop = new Pokestop();
if(COUNT($_POST) > 0){
    $name = htmlspecialchars($_POST['name']);
    $latitude = htmlspecialchars($_POST['latitude']);
    $longitude = htmlspecialchars($_POST['longitude']);
    $pokestop->name = $exploitname;
    $pokestop->latitude = $latitude;
    $pokestop->longitude = $longitude;
    if($pokestop->addPokestop()){
        header('Location: ../index.php');
    }
}