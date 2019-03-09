<?php
class Player extends Database{
    public $id;
    public $pseudo;
    public $password;
    public $mailAddress;
    public $id_roles = 1;
    
    public function __construct() {
        parent::__construct();
    }

    public function addPlayer(){
        $query = 'INSERT INTO `players`(`pseudo`, `password`, `mailAddress`) VALUES (:pseudo, :password, :mailAddress)';
        $addPlayer = $this->db->prepare($query);
        $addPlayer->bindValue(':pseudo', $this->pseudo, PDO::PARAM_STR);
        $addPlayer->bindValue(':password', $this->password, PDO::PARAM_STR);
        $addPlayer->bindValue(':mailAddress', $this->mailAddress, PDO::PARAM_STR);
        if($addPlayer->execute()){
            return true;
        }
    }

    public function login(){
        $query = "SELECT * FROM `players` WHERE `pseudo` = :pseudo";
        $result = $this->db->prepare($query);
        
        $result->bindValue(':pseudo', $this->pseudo, PDO::PARAM_INT);
        if($result->execute()){
            $entireResult = $result->fetchAll(PDO::FETCH_OBJ);
            $this->pseudo = $entireResult[0]->pseudo;
            $this->mailAddress = $entireResult[0]->mailAddress;
            return $entireResult;
        }
    }

    public function showPlayers(){
        $query = 'SELECT `id`, `pseudo`, `trainerCode`, `level`, `id_teams` FROM `players`';
        $showPlayer = $this->db->query($query);
        $showPlayerTable = $showPlayer->fetchAll(PDO::FETCH_OBJ);
        return $showPlayerTable;
    }

    public function showUsers(){
        $query = "SELECT `lastName`,`firstName`,`pseudo`,`mail` FROM `users` WHERE `id` = '$this->id' ";
        $sql= $this->db->query($query);
        $result = $sql->fetchAll(PDO::FETCH_OBJ);
        return $result;
    }
    
    public function showProfile(){
        $query = 'SELECT * FROM `players` WHERE `id` = :id';
        $showProfile = $this->db->prepare($query);
        $showProfile->bindValue(':id', $this->id, PDO::PARAM_INT);
        if($showProfile->execute()){
            $showEntireProfile = $showProfile->fetchAll(PDO::FETCH_OBJ);
            $this->pseudo = $showEntireProfile[0]->pseudo;
            $this->mailAddress = $showEntireProfile[0]->mailAddress;
            return $showEntireProfile;
        }
    }
    
    public function modifPlayer(){
        $query = 'UPDATE `players` SET `pseudo` = :pseudo, `mailAddress` = :mailAddress WHERE `id` = :id';
        $modifyPlayer = $this->db->prepare($query);
        $modifyPlayer->bindValue(':pseudo', $this->pseudo, PDO::PARAM_STR);
        $modifyPlayer->bindValue(':mailAddress', $this->mailAddress, PDO::PARAM_STR);
        $modifyPlayer->bindValue(':id', $this->id, PDO::PARAM_INT);
        if($modifyPlayer->execute()){
            return true;
        }
    }
    
    public function deletePlayer(){
        $query = 'DELETE FROM `players` WHERE `id` = :id';
        $delete = $this->db->prepare($query);
        $delete->bindValue(':id', $this->id, PDO::PARAM_INT);
        if($delete->execute()){
            return true;
        }
    }
}
