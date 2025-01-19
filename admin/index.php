<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');

if (isset($_POST['login'])) {
    $specialistUser = $_POST['username'];
    $password = $_POST['password'];

    $query = mysqli_query($con, "SELECT id FROM SpecialistLogin WHERE username='$specialistUser' AND password='$password'");
    $ret = mysqli_fetch_array($query);

    if ($ret > 0) {
        $_SESSION['specialist_id'] = $ret['id'];
		$_SESSION['bpmsaid']=$ret['id'];

        header('location:all-appointment.php?id=' . $ret['id']);
    } else {
        $msg = "Invalid Username or Password.";
    }
}
?>
<!DOCTYPE HTML>
<html>
<head>
    <title>Specialist Login</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            background: linear-gradient(to right, #6a11cb, #2575fc);
            color: #fff;
            font-family: 'Roboto', sans-serif;
        }
        .login-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .login-box {
            background: #fff;
            color: #333;
            border-radius: 10px;
            padding: 30px 40px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }
        .login-box h3 {
            text-align: center;
            margin-bottom: 20px;
            font-weight: bold;
        }
        .form-control {
            border-radius: 20px;
        }
        .btn-primary {
            background-color: #6a11cb;
            border: none;
            border-radius: 20px;
            padding: 10px 20px;
            font-size: 16px;
        }
        .btn-primary:hover {
            background-color: #2575fc;
        }
        .forgot-password, .back-home {
            display: block;
            text-align: center;
            margin-top: 10px;
        }
        .forgot-password a, .back-home a {
            text-decoration: none;
            color: #6a11cb;
        }
        .forgot-password a:hover, .back-home a:hover {
            color: #2575fc;
        }
        .error-message {
            color: red;
            text-align: center;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="login-box">
            <h3>Specialist Login</h3>
            <p class="error-message"><?php if ($msg) { echo $msg; } ?></p>
            <form method="post" action="">
                <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
                </div>
                <div class="d-grid gap-2">
                    <button type="submit" name="login" class="btn btn-primary">Sign In</button>
                </div>
            </form>
            <div class="forgot-password">
                <a href="forgot-password.php">Forgot Password?</a>
            </div>
            <div class="back-home">
                <a href="../index.php">Back to Home</a>
            </div>
        </div>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
