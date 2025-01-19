

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
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
      <!-- Template CSS -->
      <link rel="stylesheet" href="assets/css/style-starter.css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:400,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f3f4f6;
            color: #333;
        }

        h1 {
            font-family: 'Playfair Display', serif;
            color: #1a202c;
            text-align: center;
            margin-bottom: 2rem;
            font-size: 2.5rem;
        }

        .specialist-card {
            display: flex;
            align-items: center;
            background: #fff;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            /* height: 200px; */
            
        }

        .specialist-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        .gallery {
            width: 30%;
            overflow: hidden;
            position: relative;
        }

        .gallery img {
            width: 100%;
            height: auto;
            display: block;
            object-fit: cover;
        }

        .card-content {
            padding: 1.5rem;
            width: 65%;
        }

        .card-title {
            font-family: 'Playfair Display', serif;
            font-size: 1.75rem;
            color: #2d3748;
            margin-bottom: 0.5rem;
        }

        .card-text {
            font-size: 1rem;
            color: #4a5568;
            margin-bottom: 0.75rem;
        }

        .btn-primary {
            background-color: #3182ce;
            border: none;
            padding: 0.5rem 1.5rem;
            font-size: 1rem;
        }

        .btn-primary:hover {
            background-color: #2b6cb0;
        }
    </style>
</head>
<body>
    <?php include_once('includes/header.php'); ?>
    
<script src="assets/js/jquery-3.3.1.min.js"></script> <!-- Common jquery plugin -->
<!--bootstrap working-->
<script src="assets/js/bootstrap.min.js"></script>
<!-- //bootstrap working-->
<!-- disable body scroll which navbar is in active -->
<script>
$(function () {
  $('.navbar-toggler').click(function () {
    $('body').toggleClass('noscroll');
  })
});
</script>
<!-- disable body scroll which navbar is in active -->

<!-- breadcrumbs -->
<section class="w3l-inner-banner-main">
    <div class="about-inner services ">
        <div class="container">   
            <div class="main-titles-head text-center">
            <h3 class="header-name ">
                Our Specialists
            </h3>
        </div>
</div>
</div>
<div class="breadcrumbs-sub">
<div class="container">   
<ul class="breadcrumbs-custom-path">
    <li class="right-side propClone"><a href="index.php" class="">Home <span class="fa fa-angle-right" aria-hidden="true"></span></a> <p></li>
    <li class="active ">Specialists</li>
</ul>
</div>
</div>
    </div>
</section>



    <div class="container my-5">
        <h1>Select a Specialist for <?php echo $service['service_name']; ?></h1>

        <?php if (mysqli_num_rows($result_specialists) > 0): ?>
            <div class="row g-4">
                <?php while ($specialist = mysqli_fetch_assoc($result_specialists)): ?>
                    <div class="col-md-6">

                        <div class="specialist-card">
                            <div class="gallery">
                                <img src="assets/<?php echo $specialist['image_path']; ?>" alt="<?php echo $specialist['name']; ?>">
                            </div>
                            <div class="card-content">
                                <h2 class="card-title"><?php echo $specialist['name']; ?></h2>
                                <p class="card-text"><strong>Specialty:</strong> <?php echo $specialist['specialty']; ?></p>
                                <p class="card-text"><strong>Experience:</strong> <?php echo $specialist['experience']; ?> years</p>
                                <p class="card-text"><strong>Status:</strong> <span class="text-success"><?php echo $specialist['status']; ?></span></p>
                                <a href="book-app.php?specialist_id=<?php echo $specialist['specialist_id']; ?>&service_id=<?php echo $service_id; ?>" class="btn btn-primary">Book Now</a>
                            </div>
                        </div>
                    </div>
                <?php endwhile; ?>
            </div>
        <?php else: ?>
            <p class="text-center">No specialists available for this service at the moment.</p>
        <?php endif; ?>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    

<?php include_once('includes/footer.php');?>
</body>
</html>
