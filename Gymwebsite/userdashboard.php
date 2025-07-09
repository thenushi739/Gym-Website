<?php
session_start(); // ✅ Only once

if (!isset($_SESSION['username'])) {
    header("Location: userlogin.php");
    exit;
}

// DB Connection
$conn = new mysqli("127.0.0.1", "root", "", "gym", 3307);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get user info from `users` table
$username = $_SESSION['username'];
$stmt = $conn->prepare("SELECT email FROM users WHERE username = ?");
$stmt->bind_param("s", $username);
$stmt->execute();
$result = $stmt->get_result();
$user = $result->fetch_assoc();

if ($user) {
    $email = $user['email'];

    // Get membership info from `members` table
    $stmt2 = $conn->prepare("SELECT name, phone, plan, membership_id FROM members WHERE email = ?");
    $stmt2->bind_param("s", $email);
    $stmt2->execute();
    $result2 = $stmt2->get_result();
    $member = $result2->fetch_assoc();
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            background: #f0f2f5;
            color: #333;
        }

        .container {
            max-width: 800px;
            margin: 40px auto;
            padding: 30px;
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
        }

        h1 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 20px;
        }

        h2 {
            color: #34495e;
            margin-top: 30px;
        }

        ul {
            list-style: none;
            padding: 0;
        }

        li {
            margin-bottom: 10px;
            font-size: 16px;
        }

        strong {
            color: #555;
        }

        .no-membership {
            text-align: center;
            margin-top: 20px;
            color: #999;
        }
        .profile-photo {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid #2e86de;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Hello, <?php echo htmlspecialchars($username); ?>!</h1>

        <?php if (isset($member)) { ?>
            <h2>Your Membership Details:</h2>
            <ul>
                <li><strong>Name:</strong> <?php echo htmlspecialchars($member['name']); ?></li>
                <li><strong>Phone:</strong> <?php echo htmlspecialchars($member['phone']); ?></li>
                <li><strong>Plan:</strong> <?php echo htmlspecialchars($member['plan']); ?></li>
                <li><strong>Membership ID:</strong> <?php echo htmlspecialchars($member['membership_id']); ?></li>
            </ul>
        <?php } else { ?>
            <p class="no-membership">No membership details found.</p>
        <?php } ?>

         <?php if (!empty($_SESSION['profile_photo'])): ?>
        <img src="<?php echo $_SESSION['profile_photo']; ?>" class="profile-photo" alt="Profile Photo">
    <?php else: ?>
        <p>No profile photo uploaded.</p>
    <?php endif; ?>
    </div>
</body>
</html>
