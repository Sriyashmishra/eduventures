<?php
require "partials/_dbconnect.php";

session_start();


if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] === true) {
    
    header("Location: index.php");
    exit;
}


$loginError = false;


if ($_SERVER['REQUEST_METHOD'] == "POST") {
    
    include 'partials/_dbconnect.php';

    
    $username = $_POST['username'];
    $password = $_POST['password'];

    
    $sql = "SELECT * FROM users WHERE username='$username'";
    $result = mysqli_query($conn, $sql);

    
    if (!$result) {
        die("Query failed: " . mysqli_error($conn));
    }

    
    $num = mysqli_num_rows($result);
    if ($num == 1) {
    
        $row = mysqli_fetch_assoc($result);

        
        if (password_verify($password, $row['password'])) {
            
            $_SESSION['loggedin'] = true;
            $_SESSION['username'] = $username;
            $_SESSION['user_id'] = $row['id'];


            header("Location: index.php");
            exit;
        } else {
            
            $loginError = "Invalid Credentials.";
        }
    } else {
       
        $loginError = "Invalid Credentials.";
    }
}
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>EduVentures - A Quiz Based Online Platform</title>
    <link rel="icon" href="assets/logo.png" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <?php
   
    require "partials/nav.php";
    ?>

    <div class="main">
        <section class="hero">
            <img src="assets/hero.png" alt="" class="heroback">
            <div class="hero-content">
                <?php
                
                if ($loginError) {
                    echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <strong>Login Failed! </strong> ' . $loginError . '
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                  </div>';
                }
                ?>
                <div class="container">
                    <h1>Login</h1>
                
                    <form action="login.php" method="POST">
                        <div class="mb-3">
                            <label for="username" class="form-label">Username</label>
                            <input type="text" class="form-control" id="username" name="username" required>
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                        <button type="submit" class="btn btn-primary">LogIn</button>
                        <h5>don't have an account? <a href="signup.php" style="color:white">Sign Up</a> here </h5>
                    </form>
                </div>
            </div>
        </section>
        <section id="features-section" class="features">
            <div class="feature">
                <h3>Interactive Quizzes</h3>
                <p>Engage with our expertly crafted quizzes designed for learning at all levels.</p>
            </div>
            <div class="feature">
                <h3>Insightful Blogs</h3>
                <p>Read educational blogs that break down complex topics into easy-to-understand content.</p>
            </div>
            <div class="feature">
                <h3>Comprehensive Learning</h3>
                <p>Enhance your knowledge with content designed by professionals and experts.</p>
            </div>
        </section>
        <section id="quiz-section" class="popular-quizzes">
            <h2 class="col">Choose your favourite blog to read and attempt quiz</h2>
            <div class="quiz-grid">

                <?php
                $sql = "select * from blogs limit 3";
                $result = mysqli_query($conn, $sql);
                while ($row = mysqli_fetch_assoc($result)) {

                    $title = $row['title'];
                    $id = $row['blog_id'];

                    echo '
                            <div class="quiz-card">
                                <img src="assets/' . $title . '.jpg" class="quiz-image">
                                <div class="above">
                                    <a href="blog.php?blog_id=' . $id . '" class="quiz-btn">' . $title . '</a>
                                </div>
                            </div>
                           ';
                }
                ?>
        </section>
        <section id="testimonials-section" class="testimonials">
            <h2 class="col">What People Are Saying</h2>
            <div class="testimonial-grid">
                <div class="testimonial">
                    <p>"EduVentures has transformed my learning experience. The quizzes are both fun and educational!"
                    </p>
                    <h4 style=" color: #e74c3c;">- John Doe</h4>
                </div>
                <div class="testimonial">
                    <p>"The blogs helped me dive deeper into topics I was struggling with. Fantastic platform!"</p>
                    <h4 style=" color: #e74c3c;">- Jane Smith</h4>
                </div>
            </div>
        </section>


        <section id="about-us" class="about">
            <h2 class="beautiful">About EduVentures</h2>
            <p>EduVentures is a dynamic platform for quizzes, interactive learning, and educational blogging. Designed
                for learners of all ages, EduVentures provides a vast array of quizzes and blog content to enrich
                knowledge and spark curiosity.</p>
        </section>


        <section id="contact" class="contact">
            <h2 class="beautiful">Contact Us</h2>
            <p>For inquiries, feel free to reach out at <a href="mailto:info@eduventures.com">info@eduventures.com</a>
            </p>
        </section>


        <footer>
            <p>&copy; 2024 EduVentures. All rights reserved.</p>
        </footer>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
