<?php
// Start session if not already started
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

// Set the logged status 
if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] === true) {
    $logged = true;
} else {
    $logged = false;
}

echo '<div class="navbar">
        <div class="logo"><img src="./assets/logo.png" alt=""></div>
        <div class="typewriter">Knowledge Itself Is A Power</div>
        <div class="sidebtn">
     ';
if ($logged) {
    echo '
         <a href="logout.php"> <button class="logout btn">Logout</button></a>
         ';
} else {
    echo '
        <a href="login.php"> <button class="login btn ">LogIn</button></a>
        <a href="signup.php"><button class="signup btn ">SignUp</button></a>
    ';
}
echo '
        </div>
    </div>
    ';
