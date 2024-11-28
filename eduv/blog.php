<?php
session_start();

if (!isset($_SESSION['username']) || $_SESSION['loggedin'] != true || !isset($_SESSION['user_id'])) {
    header("location:login.php");
    exit;
}

require "partials/_dbconnect.php";

$id=$_GET['blog_id'];
$sql="select * from blogs where blog_id=$id";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_assoc($result);
$title=$row['title'];
$desc=$row['description'];
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EduVentures - A Quiz Based Online Platform</title>
    <link rel="icon" href="assets/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="style2.css">
</head>

<body>
    <?php include 'partials/nav.php'; ?>
    <?php include 'partials/sidebar.php'; ?>

    <div class="main">
       
        <section class="blog">
            <h2 class="beautiful"><?php echo $title; ?></h2>

            <?php echo $desc; ?>

            <div class="button-container">
                <button id="blog"><a href="quiz.php?blog_id=<?php echo $id; ?>">Start <?php echo $title ;?> Quiz</a></button>
            </div>
        </section>

        <footer>
            <p style="text-align:center">&copy; 2024 EduVentures. All rights reserved.</p>
        </footer>
    </div>

    <script src="script.js"></script>
</body>

</html>
