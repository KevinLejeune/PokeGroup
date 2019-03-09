<?php
require '../controllers/addPokestopController.php';
?>
<form method="post" action="../controllers/addPokestopController.php">
    <label>Nom du Pokéstop : </label>
    <input type="text" name="name" placeholder="nom dans le jeu">
    <label>Latitude : </label>
    <input type="number" name="latitude" placeholder="41°24'12.2 N">
    <label>Longitude : </label>
    <input type="number" name="longitude" placeholder="2°10'26.5 E">
    <input type="submit" value="Ajouter">
</form>
<p><a href='adminGestion.php'>Retour à l'espace administrateur</a></p>