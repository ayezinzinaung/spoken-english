<?php

namespace Libs\Database;

use PDO;
use PDOException;

class PartsOfSpeechTable {
    private $db = null;

    public function __construct(MySQL $db)
    {
        $this->db = $db->connect();
    }

    public function getAll()
    {
        try {
            $statement = $this->db->query("SELECT * FROM parts_of_speech");
            return $statement->fetchAll();
        } catch (PDOException $e) {
            return $e->getMessage();
        }
    }
}