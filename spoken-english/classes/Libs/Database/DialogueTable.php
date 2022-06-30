<?php

namespace Libs\Database;

use PDO;
use PDOException;

class DialogueTable {
    private $db = null;

    public function __construct(MySQL $db)
    {
        $this->db = $db->connect();
    }

    public function insert($data)
    {
        try {
            $statement = $this->db->prepare("INSERT INTO dialogues(category, contex) VALUES (:category, :contex)");
            $statement->execute($data);
        } catch (PDOException $e) {
            return $e->getMessage();
        }
    }

    public function getAll()
    {
        try {
            $statement = $this->db->query("SELECT * FROM dialogues");
            return $statement->fetchAll();
        } catch (PDOException $e) {
            return $e->getMessage();
        }
    }
}