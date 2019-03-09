<?php
class Task extends Database{
    
    public function __construct() {
        parent::__construct();
    }

	public function showTask(){
        $query = 'SELECT `id`, `name`, `reward` FROM `tasks`';
        $listTask = $this->db->query($query);
        $listTaskTable = $listTask->fetchAll(PDO::FETCH_OBJ);
        return $listTaskTable;
    }

}
