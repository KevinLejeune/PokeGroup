<?php
require '../models/database.php';

class Pokestop extends Database{
    
    public function __construct() {
        parent::__construct();
    }

    public function showPokestop(){
        $query = 'SELECT `id`, `image`, `name`, `latitude`, `longitude` FROM `pokestops`';
        $listPokestop = $this->db->query($query);
        $listPokestopTable = json_encode($listPokestop->fetchAll(PDO::FETCH_OBJ));
        echo $listPokestopTable;
    }

}

?>