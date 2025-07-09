<?php
include 'db.php';

$username = "admin";
$password = password_hash("admin123", PASSWORD_DEFAULT); // you can change the password

$stmt = $conn->prepare("INSERT INTO admin (username, password) VALUES (?, ?)");
$stmt->bind_param("ss", $username, $password);

if ($stmt->execute()) {
    echo "Admin user created successfully.";
} else {
    echo "Error: " . $stmt->error;
}
?>
