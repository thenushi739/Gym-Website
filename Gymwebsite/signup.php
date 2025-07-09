<?php
$conn = new mysqli("127.0.0.1", "root", "", "gym", 3307);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$username = $_POST["username"];
$email = $_POST["email"];
$password = password_hash($_POST["password"], PASSWORD_DEFAULT); // Encrypt password

$sql = "INSERT INTO users (username, email, password) VALUES ('$username', '$email', '$password')";

if ($conn->query($sql)) {
    // Redirect to index.html after successful signup
    header("Location: index.html");
    exit();
} else {
    echo "Error: " . $conn->error;
}

$conn->close();
?>
