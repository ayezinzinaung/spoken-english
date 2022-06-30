<?php
include ("vendor/autoload.php");

use Helpers\Auth;

$auth = Auth::check();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
    <nav class="navbar navbar-expand-sm sticky-top navbar-dark bg-dark mb-1 border user-select-none">
        <div class="container">
            <a href="home.php" class="navbar-brand text-light">&Sopf; &Eopf;</a>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a href="#" class="nav-link me-5">|&#9865; <?= $auth->name ?> |</a>
                </li>
                <li class="nav-item">
                    <a href="actions/logout.php" class="nav-link border border-secondary rounded-pill">&LeftArrowBar; Logout</a>
                </li>
            </ul>
        </div>
    </nav>
</body>
</html>