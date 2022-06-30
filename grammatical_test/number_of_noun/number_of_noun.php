<?php
include "../../vendor/autoload.php";

use Libs\Database\MySQL;
use Libs\Database\NumberOfNounTable;

$table = new NumberOfNounTable(new MySQL());
$number = $table->getAll();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <style>
        .wrap {
            width: 100%;
            max-width: 500px;
            margin: 50px auto;
        }
    </style>
</head>
<body class="">
    <header class="bg-dark text-light h3 py-3 sticky-top text-center">Number of Noun</header>
    <div class="wrap">
        <?php foreach($number as $n): ?>
            <ul class="list-group mb-3">
                <li class="list-group-item"><?= $n->question ?></li>
                <li class="list-group-item text-danger">
                    <h6 class="collapse" id="a<?= $n->id ?>"><?= $n->answer ?></h6>
                    <a class="btn btn-dark w-100 rounded-pill" data-bs-toggle="collapse" href="#a<?= $n->id ?>">Answer</a>
                </li>
            </ul>
        <?php endforeach ?>
    </div>

    <script src="../../js/bootstrap.bundle.min.js"></script>
</body>
</html>