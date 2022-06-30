<?php
include "../vendor/autoload.php";

use Libs\Database\MySQL;
use Libs\Database\ConversationTable;

$id = $_GET['id'];

$table = new ConversationTable(new MySQL());
$conversation = $table->getAll();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
</head>
<body class="d-flex flex-column min-vh-100">
    <div class="container">
        <?php foreach($conversation as $c): ?>
            <?php if($c->id == $id): ?>
                <ul class="list-group">
                    <li class="list-group-item bg-dark text-light text-center sticky-top"><?= $c->category ?></li>
                    <li class="list-group-item"><?= $c->contex ?></li>
                </ul>
            <?php endif ?>
        <?php endforeach ?>
    </div>

    <?php include "../footer.php" ?>
</body>
</html>