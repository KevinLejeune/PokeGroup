<?php
require '../models/database.php';
require '../models/task.php';
require '../models/pokestop.php';

// $showDetails = new Pokestop();
// $name = htmlspecialchars($_GET['name']);

// if(COUNT($_POST) > 0){
//     $name = htmlspecialchars($_POST['name']);
//     $latitude = htmlspecialchars($_POST['latitude']);
//     $longitude = htmlspecialchars($_POST['longitude']);
//     $showDetails->name = $name;
//     $showDetails->latitude = $latitude;
//     $showDetails->longitude = $longitude;
//     if($showDetails->modifyRdv()){
//         header('Location: ../views/pokestopList.php');
//     }
// }


$task = new Task();
$pokestop = new Pokestop();

$taskList = $task->showTask();
$pokestopList = $pokestop->showPokestop();


//Pour task :
// name
// reward
// shiny
// pcMin
// pcMax

//Pour les Pokestop :
// image
// name
// latitude
// longitude