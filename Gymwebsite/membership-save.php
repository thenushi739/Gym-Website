<?php
$conn = new mysqli("localhost", "root", "", "gym", 3307);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$name  = $_POST['name'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$plan  = $_POST['membership']; // <-- Fix here

// Generate membership number prefix
$prefix = $plan; // e.g., BL, SP, PP
$randomNumber = rand(1000, 9999);
$membership_id = $prefix . $randomNumber;

// Save to database
$sql = "INSERT INTO members (name, email, phone, plan, membership_id) 
        VALUES ('$name', '$email', '$phone', '$plan', '$membership_id')";

if ($conn->query($sql) === TRUE) {
    echo "<h2>Membership Successful!</h2>";
    echo "<p>Your Membership ID: <strong>$membership_id</strong></p>";
    echo "<a href='index.html'>Go to Home</a>";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
$conn->close();
?>
