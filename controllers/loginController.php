<?php 
require_once '../models/database.php';
require_once '../models/player.php';

if(isset($_POST["login"])){
    $verifPassword = new player();
    $pseudo = $_POST['pseudo'];

    $verifPassword->pseudo = $pseudo;
    $result = $verifPassword->login();
    $passwordCorrect = password_verify($_POST['password'] , $result[0]->password);

    if ($passwordCorrect){
        session_start();
        $_SESSION['id'] = $result[0]->id;
        $_SESSION['pseudo'] = $result[0]->pseudo;
        $_SESSION['mailAdress'] = $mailAdress;
        $_SESSION['id_roles'] = $result[0]->id_roles;
        header('location: ../views/home.php'); 
        exit;
    } else {
        ?>
        <div class="alert alert-danger" role="alert">
            L'identifiant ou le mot de passe renseigné n'est pas correct
        </div>
    <?php
    }
}