<?php 

namespace Libs\Database;

use PDO;
use PDOException;

class UserTable
{
    private $db = null;

    public function __construct(MySQL $db)
    {
        $this->db = $db->connect();
    }

    public function insert($data)
    {
        try {
            $sql = "INSERT INTO users (name, email, password, created_at) VALUES (:name, :email, :password, NOW())";
            $statement = $this->db->prepare($sql);
            $statement->execute($data);
        } catch(PDOException $e) {
            return $e->getMessage();
        }
    }

    public function getAll()
    {
        $statement = $this->db->query("SELECT * FROM users");

        return $statement->fetchAll();
    }

    public function findByEmailAndPassword($email, $password)
    {
        $statement = $this->db->prepare("SELECT * FROM users WHERE users.email = :email AND users.password = :password");
        $statement->execute([
            ":email" => $email,
            ":password" => $password
        ]);

        return $statement->fetch() ?? false;
    }
}