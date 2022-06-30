<?php
include "../vendor/autoload.php";

use Libs\Database\MySQL;
use Libs\Database\SalutationTable;

$id = $_GET['id'];

$table = new SalutationTable(new MySQL());
$salutation = $table->getAll();
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
        <?php foreach($salutation as $s): ?>
            <?php if($s->id == $id): ?>
                <ul class="list-group">
                    <li class="list-group-item bg-dark text-light text-center"><?= $s->category ?></li>
                    <li class="list-group-item"><?= $s->contex ?></li>
                </ul>
            <?php endif ?>
        <?php endforeach ?>
    </div>

    <?php include "../footer.php" ?>
</body>
</html>