<?php
// Define the hostname for the database server, typically "localhost" for local development
$hostname = "localhost";

// Define the password for the database connection (leave blank if there's no password)
$password = "";

// Define the username for the database connection, commonly "root" for local environments
$username = "root";

// Define the name of the database you want to connect to
$database = "project";

// Establish a connection to the MySQL database using the provided credentials
$conn = mysqli_connect($hostname, $username, $password, $database);

// Check if the connection was unsuccessful
if (!$conn) {
    // Stop execution and display the connection error message
    die(mysqli_connect_error());
}

?>
