<?php
include "../vendor/autoload.php";

use Libs\Database\MySQL;
use Libs\Database\SalutationTable;

$table = new SalutationTable(new MySQL());
$salutation = $table->getAll();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Salutation Words</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
</head>
<body class="text-center d-flex flex-column min-vh-100">
    <header class="bg-dark text-light py-3 h3 sticky-top">Salutation Words</header>
    <div class="container">
        <?php foreach($salutation as $s): ?>
            <a href="contex.php?id=<?= $s->id ?>" class="btn d-block">
                <table class="table">
                    <tr>
                        <td class="table-dark">Part <?= $s->id ?></td>
                    </tr>
                    <tr>
                        <td class="table-primary"><?= $s->category ?></td>
                    </tr>
                </table>
            </a>
        <?php endforeach ?>
    </div>

    <?php include "../footer.php" ?>
</body>
</html>