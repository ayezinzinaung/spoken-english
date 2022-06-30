<?php
include "../vendor/autoload.php";

use Libs\Database\MySQL;
use Libs\Database\GrammaticalTable;

$table = new GrammaticalTable(new MySQL());
$grammatical = $table->getAll();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grammatical Test</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
</head>
<body class="text-center d-flex flex-column min-vh-100">
    <header class="bg-dark text-light py-3 h3 sticky-top">Grammatical Test</header>
    <div class="container">
        <div class="row">
            <?php foreach($grammatical as $g): ?>
                <div class="col-6 bg-dark my-1 p-5 border border-secondary rounded-pill">
                    <a href="<?= $g->connect ?>/<?= $g->connect ?>.php" class="btn d-block text-light">
                        <?= $g->category ?>
                    </a>
                </div>
            <?php endforeach ?>
        </div>
    </div>

    <?php include "../footer.php" ?>
</body>
</html>