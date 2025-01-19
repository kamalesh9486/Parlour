
<?php
session_start();
error_reporting(E_ALL);  // Report all PHP errors
ini_set('display_errors', 1);  // Display errors
include('includes/dbconnection.php');

// Fetch the selected service ID from the query string
 $service_id = $_GET['service'];

// Fetch the service details (optional, to display the service name)
$query_service = "SELECT * FROM services WHERE service_id = $service_id";
$result_service = mysqli_query($con, $query_service);
$service = mysqli_fetch_assoc($result_service);

// Fetch the specialists for the selected service
$query_specialists = "SELECT * FROM specialists WHERE service_id = $service_id";
$result_specialists = mysqli_query($con, $query_specialists);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book a Specialist - <?php echo $service['service_name']; ?></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">
     <!-- Template CSS -->
     <link rel="stylesheet" href="assets/css/style-starter.css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:400,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            background-color: #f9f9f9;
        }

        h1 {
            color: #ff4081;
            font-weight: bold;
            margin-bottom: 30px;
        }

        .card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        .btn-primary {
            background-color: #ff4081;
            border: none;
        }

        .btn-primary:hover {
            background-color: #e73370;
        }

        img {
            height: 250px;
            width: 250px;
        }
    </style>
</head>
<body>
<?php include_once('includes/header.php');?>

    <div class="container my-5">
        <h1 class="text-center">Select a Specialist for <?php echo $service['service_name']; ?></h1>

        <?php if (mysqli_num_rows($result_specialists) > 0): ?>
            <div class="row">
                <?php while ($specialist = mysqli_fetch_assoc($result_specialists)): ?>
                    <div class="col-md-4 mb-4" data-aos="fade-up">
                        <div class="card shadow-sm">
                        <img src="assets/<?php echo $specialist['image_path']; ?>" class="card-img-top" alt="<?php echo $specialist['name']; ?>">

                            <div class="card-body">
                                <h5 class="card-title"><?php echo $specialist['name']; ?></h5>
                                <p class="card-text">Specialty: <?php echo $specialist['specialty']; ?></p>
                                <p class="card-text">Experience: <?php echo $specialist['experience']; ?> years</p>
                                <p class="text-primary font-weight-bold"><?php echo $specialist['status']; ?></p>
                                <a href="book_appointment.php?specialist_id=<?php echo $specialist['specialist_id']; ?>&service_id=<?php echo $service_id; ?>" class="btn btn-primary">Book Now</a>
                            </div>
                        </div>
                    </div>
                <?php endwhile; ?>
            </div>
        <?php else: ?>
            <p>No specialists available for this service at the moment.</p>
        <?php endif; ?>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
    <script>
        AOS.init({
            duration: 800, // Animation duration
            easing: 'ease-in-out', // Animation easing
        });
    </script>
</body>
</html>
