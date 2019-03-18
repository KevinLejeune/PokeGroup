<?php
require '../controllers/playerProfileController.php';
?>
<ul>
    <li>Pseudo : <?= $_SESSION['pseudo']?></li>

</ul>
<input type="button" value="Modifier les informations du dresseur" onclick="showForm()">
<form id="modifPlayer" method="post" hidden>
    <label>Pseudo du dresseur : </label>
    <input type="text" name="pseudo" value="<?= $_SESSION['pseudo']?>">
    <input type="submit">
</form>
<p><a href='playerList.php'>Retour à la liste des dresseurs</a></p>
<script src="../assets/js/script.js"></script>