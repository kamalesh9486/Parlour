<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
 
     ?>
     <?php include_once('includes/header.php');?>

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
                Our Service
            </h3>
        </div>
</div>
</div>
<div class="breadcrumbs-sub">
<div class="container">   
<ul class="breadcrumbs-custom-path">
    <li class="right-side propClone"><a href="index.php" class="">Home <span class="fa fa-angle-right" aria-hidden="true"></span></a> <p></li>
    <li class="active ">Services</li>
</ul>
</div>
</div>
    </div>
</section>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beauty Parlour Services</title>
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
        img{
            height: 300px;
            width: 300px;
        }
    </style>
</head>
<body>

    <div class="container my-5">
        <h1 class="text-center">Our Beauty Parlour Services</h1>
        <div class="row">
            <!-- Card Template -->
            <div class="col-md-4 mb-4" data-aos="fade-up">
                <div class="card shadow-sm">
                    <img src="assets\images1\haircurblow.jpg" class="card-img-top" alt="Hair Cut with Blow Dry">
                    <div class="card-body">
                        <h5 class="card-title">Hair Cut with Blow Dry</h5>
                        <p class="card-text">Get a stylish haircut with a perfect blow-dry finish.</p>
                        <p class="text-primary font-weight-bold">$25</p>
                        <a href="book.php?service=1" class="btn btn-primary">Book Now</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-4" data-aos="fade-up">
                <div class="card shadow-sm">
                    <img src="assets\images1\coloring.jpg" class="card-img-top" alt="Color & Highlights">
                    <div class="card-body">
                        <h5 class="card-title">Color & Highlights</h5>
                        <p class="card-text">Enhance your look with vibrant colors and highlights.</p>
                        <p class="text-primary font-weight-bold">$40</p>
                        <a href="book.php?service=2" class="btn btn-primary">Book Now</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-4" data-aos="fade-up">
                <div class="card shadow-sm">
                    <img src="assets\images1\shampoo.jpg" class="card-img-top" alt="Shampoo & Set">
                    <div class="card-body">
                        <h5 class="card-title">Shampoo & Set</h5>
                        <p class="card-text">Relax with a luxurious shampoo and set.</p>
                        <p class="text-primary font-weight-bold">$20</p>
                        <a href="book.php?service=3" class="btn btn-primary">Book Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4" data-aos="fade-up">
                <div class="card shadow-sm">
                    <img src="assets\images1\blowcurl.jpg" class="card-img-top" alt="Shampoo & Set">
                    <div class="card-body">
                        <h5 class="card-title">Blow Dry & Curl</h5>
                        <p class="card-text">Transform your hair with a perfect blend of volume and soft curls.</p>
                        <p class="text-primary font-weight-bold">$20</p>
                        <a href="book.php?service=4" class="btn btn-primary">Book Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4" data-aos="fade-up">
                <div class="card shadow-sm">
                    <img src="assets\images1\advancehair.jpg" class="card-img-top" alt="Shampoo & Set">
                    <div class="card-body">
                        <h5 class="card-title"> Advance Hair Color</h5>
                        <p class="card-text">Elevate your style with advanced hair coloring techniques.</p>
                        <p class="text-primary font-weight-bold">$20</p>
                        <a href="book.php?service=5" class="btn btn-primary">Book Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4" data-aos="fade-up">
                <div class="card shadow-sm">
                    <img src="assets\images1\backmassage.jpg" class="card-img-top" alt="Shampoo & Set">
                    <div class="card-body">
                        <h5 class="card-title">Back Massage</h5>
                        <p class="card-text">Experience ultimate relaxation with our rejuvenating back massage.</p>
                        <p class="text-primary font-weight-bold">$20</p>
                        <a href="book.php?service=6" class="btn btn-primary">Book Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4" data-aos="fade-up">
                <div class="card shadow-sm">
                    <img src="assets\images1\hairtreat.jpg" class="card-img-top" alt="Shampoo & Set">
                    <div class="card-body">
                        <h5 class="card-title">Hair Treatment</h5>
                        <p class="card-text">Restore your hair’s health and shine with our deep-nourishing hair treatments.</p>
                        <p class="text-primary font-weight-bold">$20</p>
                        <a href="book.php?service=7" class="btn btn-primary">Book Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4" data-aos="fade-up">
                <div class="card shadow-sm">
                    <img src="assets\images1\skincare.jpg" class="card-img-top" alt="Shampoo & Set">
                    <div class="card-body">
                        <h5 class="card-title">Skin Care</h5>
                        <p class="card-text">Pamper your skin with our specialized skincare solutions. </p>
                        <p class="text-primary font-weight-bold">$20</p>
                        <a href="book.php?service=8" class="btn btn-primary">Book Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4" data-aos="fade-up">
                <div class="card shadow-sm">
                    <img src="assets\images1\bodytheraphy.jpg" class="card-img-top" alt="Shampoo & Set">
                    <div class="card-body">
                        <h5 class="card-title">Body Therapies</h5>
                        <p class="card-text">Indulge in holistic body therapies designed to relax and rejuvenate. </p>
                        <p class="text-primary font-weight-bold">$20</p>
                        <a href="book.php?service=9" class="btn btn-primary">Book Now</a>
                    </div>
                </div>
            </div>
            <!-- Add more cards as needed -->
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
    <script>
        AOS.init({
            duration: 800, // Animation duration
            easing: 'ease-in-out', // Animation easing
        });
    </script>
    <?php include_once('includes/footer.php');?>

</body>
</html>
