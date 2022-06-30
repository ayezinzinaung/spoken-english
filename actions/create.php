<?php

include "../vendor/autoload.php";

use Libs\Database\MySQL;
use Libs\Database\UserTable;
use Helpers\HTTP;

$data = [
    "name" => $_POST['name'] ?? "Unknown",
    "email" => $_POST['email'] ?? "Unknown",
    "password" => md5($_POST['password']),
];

$table = new UserTable(new MySQL);

if($table) {
    $table->insert($data);
    HTTP::redirect("/index.php", "registered");
} else {
    HTTP::redirect("/register.php", "error");
}