<?php
$host = "127.0.0.1:3307"; // Include the custom port
$user = "root";           // Default username
$password = "";           // Enter your root password if any ("" if no password)
$dbname = "gym";          // Your DB name

$conn = new mysqli($host, $user, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>
