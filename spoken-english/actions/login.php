<?php

session_start();

include "../vendor/autoload.php";

use Libs\Database\MySQL;
use Libs\Database\UserTable;
use Helpers\HTTP;

$email = $_POST['email'];
$password = md5($_POST['password']);

$table = new UserTable(new MySQL());

$user = $table->findByEmailAndPassword($email, $password);

if($user) {
    $_SESSION['user'] = $user;
    HTTP::redirect("/home");
} else {
    HTTP::redirect("/index", "incorrect");
}