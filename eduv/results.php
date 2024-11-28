<?php
session_start();
require "partials/_dbconnect.php";

if (!isset($_SESSION['username']) || $_SESSION['loggedin'] != true || !isset($_SESSION['user_id'])) {
    header("location:login.php");
    exit;
}

$user_id = $_SESSION['user_id'];


$query = "SELECT * FROM results WHERE user_id = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("i", $user_id);
$stmt->execute();
$result = $stmt->get_result();
$stmt->close();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EduVentures - A Quiz Based Online Platform</title>
    <link rel="icon" href="assets/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.3/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="style.css">
  
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.3/js/jquery.dataTables.min.js"></script>
</head>
<style>
.mar {
    margin-top: 50px;
    padding: 50px;
}

footer {
    position: fixed;
    bottom: 0;
    width: 100%;
}
</style>

<body>
    <?php include 'partials/nav.php'; ?>

    <?php include 'partials/sidebar.php' ;?>
    <div class="mar">
        <h2 style="text-align: center;">Welcome! <?php echo "<i>".$_SESSION['username']."</i>" ;?> </h2>
        <h2 style="text-align: center;">Check your performance </h2>
        <table id="resultsTable" class="display">
            <thead>
                <tr>
                    <th>Quiz Title</th>
                    <th>Score</th>
                    <th>Total Questions</th>
                    <th>Date Taken</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($row = $result->fetch_assoc()): ?>
                <tr>
                    <td><?php echo htmlspecialchars($row['quiz_title']); ?></td>
                    <td><?php echo htmlspecialchars($row['score']); ?></td>
                    <td><?php echo htmlspecialchars($row['total_questions']); ?></td>
                    <td><?php echo htmlspecialchars($row['quiz_date']); ?></td>
                    <!-- Assuming you have a 'date_taken' field -->
                </tr>
                <?php endwhile; ?>
            </tbody>
        </table>

    </div>
    <footer>
        <p>&copy; 2024 EduVentures. All rights reserved.</p>
    </footer>
    <script>
    $(document).ready(function() {
        $('#resultsTable').DataTable();
    });
    </script>
    <script src="script.js"></script>
</body>

</html>