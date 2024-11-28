<?php

session_start();

if (!isset($_SESSION['username']) || $_SESSION['loggedin'] != true || !isset($_SESSION['user_id'])) {
    header("location:login.php");
    exit;
}

require "partials/_dbconnect.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EduVentures - A Quiz Based Online Platform</title>
    <link rel="icon" href="assets/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css" integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>

    <?php require "partials/nav.php"; ?>
    <?php require "partials/sidebar.php"; ?>

    <div class="main">

        <section class="hero">

            <img src="assets/hero.png" alt="" class="heroback">

            <div class="hero-content">
                <h2>Explore. Learn. Quiz.</h2>
                <p>Welcome to EduVentures, your ultimate platform for knowledge, quizzes, and interactive blogs!</p>
                <a href="#quiz-section" class="cta-button">Start Now</a>
            </div>
        </section>


        <section id="quiz-section" class="popular-quizzes">
            <h2 class="col">Choose your favourite blog to read and attempt quiz</h2>
            <div class="quiz-grid">

            <?php 
             $sql="select * from blogs";
             $result=mysqli_query($conn,$sql);
             while($row=mysqli_fetch_assoc($result)){
                      
                      $title=$row['title'];
                      $id=$row['blog_id'];

                      echo '
                            <div class="quiz-card">
                                <img src="assets/'.$title.'.jpg" class="quiz-image">
                                <div class="above">
                                    <a href="blog.php?blog_id='.$id.'" class="quiz-btn">'.$title.'</a>
                                </div>
                            </div>
                           ';
             }
            ?>
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
            <div class="center">
                <a href="https://www.facebook.com" target="_blank" aria-label="Facebook">
                    <i class="fa-brands fa-facebook"></i>
                </a>
                <a href="https://www.instagram.com" target="_blank" aria-label="Instagram">
                    <i class="fa-brands fa-instagram"></i>
                </a>
                <a href="https://www.linkedin.com" target="_blank" aria-label="LinkedIn">
                    <i class="fa-brands fa-linkedin"></i>
                </a>
                <a href="https://www.github.com" target="_blank" aria-label="LinkedIn">
                    <i class="fa-brands fa-github"></i>
                </a>

            </div>
        </footer>

    </div>

    <script src="script.js"></script>
</body>

</html>