<?php
	class Database{
		public $db;

		public function __construct() {
			$this->db = new PDO('mysql:dbname=PokeGroup;host=localhost', 'Arceus', 'L@M@nuIsBest!', [PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION]);
		}
	}
?>