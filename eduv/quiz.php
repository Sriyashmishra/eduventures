<?php
session_start();
require "partials/_dbconnect.php";


if (!isset($_SESSION['username']) || $_SESSION['loggedin'] != true || !isset($_SESSION['user_id'])) {
    header("location:login.php");
    exit;
}

$user_id = $_SESSION['user_id'];
$blog_id = isset($_GET['blog_id']) ? intval($_GET['blog_id']) : 1;


$query = "SELECT * FROM quiz_questions WHERE blog_id = $blog_id";
$result = mysqli_query($conn, $query);

$title_query = "SELECT title FROM blogs WHERE blog_id = $blog_id";
$title_result = mysqli_query($conn, $title_query);
$title_row = mysqli_fetch_assoc($title_result);
$quiz_title = $title_row ? $title_row['title'] : 'Unknown Quiz';

$display_results = false;
$incorrect_answers = [];

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $score = 0;
    $total_questions = mysqli_num_rows($result);

    mysqli_data_seek($result, 0);

    while ($question = mysqli_fetch_assoc($result)) {
        $q_id = $question['question_id'];
        $user_answer = isset($_POST["answer_$q_id"]) ? $_POST["answer_$q_id"] : '';

        if ($user_answer == $question['correct_option']) {
            $score++;
        } else {
            $incorrect_answers[] = [
                'question' => $question['question'],
                'user_answer' => $user_answer ? $question["option$user_answer"] : 'No Answer',
                'correct_answer' => $question["option" . $question['correct_option']]
            ];
        }
    }

    $sql2 = "INSERT INTO results (user_id, quiz_title, score, total_questions) VALUES ($user_id, '$quiz_title', $score, $total_questions)";
    $result2 = mysqli_query($conn, $sql2);

    if ($result2) {
        $display_results = true;
    } else {
        echo "Error: " . mysqli_error($conn);
    }
}

mysqli_data_seek($result, 0);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>EduVentures - A Quiz Based Online Platform</title>
    <link rel="icon" href="assets/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="style2.css">
    <link rel="stylesheet" href="quiz.css">
</head>

<body>
    <?php include 'partials/nav.php'; ?>
    <?php include 'partials/sidebar.php'; ?>

    <div class="main">
        <div class="q">
            <h2 style="margin-top:10px;"><?php echo $quiz_title; ?> Quiz</h2>

            <?php if (!$display_results): ?>

                <form method="post" action="">
                    <?php while ($question = mysqli_fetch_assoc($result)): ?>
                        <div class="c">
                            <p class="ques"><?php echo $question['question']; ?></p>
                            <?php for ($i = 1; $i <= 4; $i++): ?>
                                <label>
                                    <input type="radio" name="answer_<?php echo $question['question_id']; ?>" value="<?php echo $i; ?>">
                                    <?php echo $question["option$i"]; ?>
                                </label><br>
                            <?php endfor; ?>
                        </div>
                    <?php endwhile; ?>
                    <button type="submit">Submit Quiz</button>
                </form>

            <?php else: ?>
                <div style="padding: 30px;  background-color: #f5f5f5;  margin: 30px auto;    width: 70%;   box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); line-height: 2rem; ">

                    <h2 style="text-align:center;">Your Score: <?php echo $score . " / " . $total_questions; ?></h2>

                    <?php if (count($incorrect_answers) > 0): ?>
                        <h4 style="text-align:center;">Review Incorrect Answers:</h4>
                        <ul>
                            <?php foreach ($incorrect_answers as $incorrect): ?>
                                <li style="background-color:aliceblue ; list-style: none;">
                                    <strong>Question:</strong> <?php echo $incorrect['question']; ?><br>
                                    <strong style="color:red">Your Answer:</strong> <?php echo $incorrect['user_answer']; ?><br>
                                    <strong style="color:green">Correct Answer:</strong> <?php echo $incorrect['correct_answer']; ?><br>
                                </li>
                                <hr>
                            <?php endforeach; ?>
                        </ul>
                </div>
            <?php else: ?>
                <p style="text-align:center;color:green;font-size:larger;">Congratulations! All your answers were correct!</p>

            <?php endif; ?>
        <?php endif; ?>
        </div>

        <footer>
            <p style="text-align:center ;">&copy; 2024 EduVentures. All rights reserved.</p>
        </footer>
    </div>

    <script src="script.js"></script>
</body>

</html>