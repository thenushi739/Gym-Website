<?php
session_start();
include 'db.php';
if (!isset($_SESSION['admin_name'])) {
    header("Location: login.php");
    exit();
}

$adminName = $_SESSION['admin_name'];



?>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
<title>Admin Dashboard</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
   <style>
        .profile {
            display: flex;
            align-items: center;
            margin-top: 20px;
        }
        .profile img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            margin-right: 15px;
        }
    </style>
</head>
<body>
     <h2>Welcome to Admin Dashboard</h2>
   
        <p>Hello, <strong><?php echo htmlspecialchars($adminName); ?></strong></p>
    </div>
    <a href="logout.php">Logout</a>
 <div class="container my-4">
  <!-- Home Button -->
  <a href="index.html" class="btn btn-outline-primary mb-4">
    &larr; Home
  </a>
</div>
<div class="container my-5">
  <h2 class="text-center mb-4">Gym Admin Dashboard</h2>
  <div class="row g-4">

    <!-- Members Count -->
    <div class="col-md-4">
      <div class="card text-white bg-primary h-100">
        <div class="card-body">
          <h5 class="card-title">Total Members</h5>
          <p class="card-text fs-2">
            <?php
            $res = $conn->query("SELECT COUNT(*) AS total FROM members");
            $row = $res->fetch_assoc();
            echo $row['total'];
            ?>
          </p>
        </div>
      </div>
    </div>

    <!-- Contact Messages Count -->
    <div class="col-md-4">
      <div class="card text-white bg-success h-100">
        <div class="card-body">
          <h5 class="card-title">Contact Messages</h5>
          <p class="card-text fs-2">
            <?php
            $res = $conn->query("SELECT COUNT(*) AS total FROM contact_messages");
            $row = $res->fetch_assoc();
            echo $row['total'];
            ?>
          </p>
        </div>
      </div>
    </div>

    <!-- Users (Admins) Count -->
    <div class="col-md-4">
      <div class="card text-white bg-dark h-100">
        <div class="card-body">
          <h5 class="card-title">Admin Users</h5>
          <p class="card-text fs-2">
            <?php
            $res = $conn->query("SELECT COUNT(*) AS total FROM users");
            $row = $res->fetch_assoc();
            echo $row['total'];
            ?>
          </p>
        </div>
      </div>
    </div>

  </div>
</div>
</body>
</html>


<?php

?>


