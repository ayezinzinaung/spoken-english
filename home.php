<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style>
        .height {
            height: 50vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
    </style>
</head>
<body class="text-center text-center d-flex flex-column min-vh-100">
    <?php include "header.php" ?>
    <div class="container-fluid">
        <div class="bg-dark text-light height">
            <h1>Spoken English</h1>
            <h4>SPOKEN, READING, WRITING, QUIZ, GRAMMAR</h4>
        </div>
        <div class="height alert alert-primary">
            <ul class="list-group">
                <li class="list-group-item my-3 bg-dark rounded-pill">
                    <a href="dialogue/dialogue.php" class="btn text-light">DIALOGUE</a>
                </li>
                <li class="list-group-item mb-3 bg-dark text-light rounded-pill">
                    <a href="conversation/conversation.php" class="btn text-light">CONVERSATION</a>
                </li>
                <li class="list-group-item mb-3 bg-dark text-light rounded-pill">
                    <a href="salutation_words/salutation_words.php" class="btn text-light">SALUTATION WORDS</a>
                </li>
                <li class="list-group-item mb-3 bg-dark text-light rounded-pill">
                    <a href="grammatical_test/grammatical_test.php" class="btn text-light">GRAMMATICAL TEST</a>
                </li>
            </ul>
        </div>
    </div>
    <?php include "footer.php" ?>
</body>
</html>