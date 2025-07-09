<?php
// 1. Get form data
$name = $_POST['name'];
$email = $_POST['email'];
$subject = $_POST['subject'];
$message = $_POST['message'];



// 3. Save to MySQL Database
$conn = new mysqli("127.0.0.1", "root", "", "gym", 3307);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO contact_messages (name, email, subject, message)
        VALUES (?, ?, ?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ssss", $name, $email, $subject, $message);

if ($stmt->execute()) {
    echo "Message saved to database.";
} else {
    echo "Database save failed: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
