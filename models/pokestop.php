<?php
class Pokestop extends Database{
    
    public function __construct() {
        parent::__construct();
    }

    public function showPokestop(){
        $query = 'SELECT `id`, `image`, `name`, `latitude`, `longitude` FROM `pokestops`';
        $listPokestop = $this->db->query($query);
        $listPokestopTable = $listPokestop->fetchAll(PDO::FETCH_OBJ);
        return $listPokestopTable;
    }

}