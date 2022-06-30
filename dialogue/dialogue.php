<?php
include "../vendor/autoload.php";

use Libs\Database\MySQL;
use Libs\Database\DialogueTable;

$table = new DialogueTable(new MySQL());
$dialogs = $table->getAll();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dialogue</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
</head>
<body class="text-center d-flex flex-column min-vh-100">
    <header class="bg-dark text-light py-3 h3 sticky-top border">Dialogue</header>
    <div class="container">
        <?php foreach($dialogs as $dialog): ?>
            <a href="contex.php?id=<?= $dialog->id ?>" class="btn d-block">
                <table class="table">
                    <tr>
                        <th class="table-dark">Part <?= $dialog->id ?></th>
                    </tr>
                    <tr>
                        <td class="table-primary"><?= $dialog->category ?></td>
                    </tr>
                </table>
            </a>
        <?php endforeach ?>
    </div>

    <?php include "../footer.php" ?>
</body>
</html>