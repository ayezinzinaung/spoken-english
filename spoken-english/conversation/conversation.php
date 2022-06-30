<?php
include "../vendor/autoload.php";

use Libs\Database\MySQL;
use Libs\Database\ConversationTable;

$table = new ConversationTable(new MySQL());
$conversation = $table->getAll();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conversation</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
</head>
<body class="text-center d-flex flex-column min-vh-100">
    <header class="bg-dark text-light py-3 h3 sticky-top">Conversation</header>
    <div class="container">
        <?php foreach($conversation as $c): ?>
            <a href="contex.php?id=<?= $c->id ?>" class="btn d-block">
                <table class="table">
                    <tr>
                        <td class="table-dark">Part <?= $c->id ?></td>
                    </tr>
                    <tr>
                        <td class="table-primary"><?= $c->category ?></td>
                    </tr>
                </table>
            </a>
        <?php endforeach ?>
    </div>

    <?php include "../footer.php" ?>
</body>
</html>