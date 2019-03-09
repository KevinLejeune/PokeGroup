<?php
require_once'../models/database.php';
require_once'../models/player.php';

//Le mot clé NEW crée une instance de la classe users
$user = new player();
$id = $_SESSION['id'];
//Hydrater l'objet = donner des valeurs à mon objet
$user->id = $id;
//J'applique la methode showusers à la variable $listInfo
$listInfo = $user->showUsers();


//Regex : commence par une majuscule puis des minuscules avec ou sans accents/- 
$regexText = '#[A-Z]{1}[a-zÀ-ÿ-]+$#';
//Si la variable est définie et différente de NULL , vérifié sur chaque champs , s'il est rempli et s'il repond à la regex. Sinon afficher le message d'erreur correspondant
if (isset($_POST['edit'])) {
    $errors = [];
    if(empty($_POST['lastName']) || !preg_match($regexText, $_POST['lastName'])){
        $errors['lastName'] = 'Le nom renseigné est invalide, il doit commencer par une majuscule';
    } if (empty($_POST['firstName']) || !preg_match($regexText, $_POST['firstName'])){
        $errors['firstName'] = 'Le prénom renseigné est invalide, il doit commencer par une majuscule';
    } if(empty($_POST['mail']) || !filter_input(INPUT_POST, 'mail', FILTER_VALIDATE_EMAIL)){
        $errors['mail'] = 'L\' email renseigné est invalide';
    } if(empty($_POST['pseudo']) || !preg_match($regexText, $_POST['pseudo'])){
        $errors['pseudo'] = 'Le pseudo renseigné est invalide, il doit commencer par une majuscule';
    }
//Si aucune erreur trouvée on récupere les valeurs des objets et on applique la methode editUsers
    if(count($errors) == 0) {
               
    
    $user->lastName = $_POST['lastName'];
    $user->firstName = $_POST['firstName'];
    $user->pseudo = $_POST['pseudo'];
    $user->mail = $_POST['mail'];

//Si la variable est définie et différente de NULL, je peux appliquer la methode editUsers
        if($user->editUsers()){
            header("location: ../views/myAccount.php");
        } else {
            echo 'Une erreur est survenue';
            
    }
    }
}
//Si la variable est définie et différente de NULL, je peux appliquer la methode deleteUsers
if (isset($_POST['delete'])) {
  if($user->deleteUsers()){
      header ('location: ../controllers/deconnexionController.php');
     } else {
      echo 'Veuillez réessayer ultérieurement';    
    }
}
?>
