<?php 
session_start();
error_reporting(E_ALL);  // Report all PHP errors
ini_set('display_errors', 1);  // Display errors
include('includes/dbconnection.php');

if (strlen($_SESSION['bpmsuid'] == 0)) {
    header('location:logout.php');
} else {
    // Fetching specialist_id and service_id from the URL
    $specialist_id = $_GET['specialist_id'];
    $service_id = $_GET['service_id'];

    // Fetching specialist details
    $query_specialist = mysqli_query($con, "SELECT * FROM specialists WHERE specialist_id='$specialist_id'");
    $specialist = mysqli_fetch_assoc($query_specialist);

    // Fetching service details
    $query_service = mysqli_query($con, "SELECT * FROM services WHERE service_id='$service_id'");
    $service = mysqli_fetch_assoc($query_service);

    if (isset($_POST['submit'])) {
        $uid = $_SESSION['bpmsuid'];
        $adate = $_POST['adate'];
        $atime = $_POST['atime'];
        $msg = $_POST['message'];
        $aptnumber = mt_rand(100000000, 999999999);

        $query = mysqli_query($con, "INSERT INTO tblbook(UserID, SpecialistID, ServiceID, AptNumber, AptDate, AptTime, Message) 
            VALUES ('$uid', '$specialist_id', '$service_id', '$aptnumber', '$adate', '$atime', '$msg')");

        if ($query) {
            $ret = mysqli_query($con, "SELECT AptNumber FROM tblbook WHERE tblbook.UserID='$uid' ORDER BY ID DESC LIMIT 1;");
            $result = mysqli_fetch_array($ret);
            $_SESSION['aptno'] = $result['AptNumber'];
            echo "<script>window.location.href='thank-you.php'</script>";  
        } else {
            echo '<script>alert("Something Went Wrong. Please try again")</script>';
        }
    }
}
?>
<div class="specialist-details">
    <h5>Specialist Details</h5>
    <p><strong>Name:</strong> <?php echo $specialist['name']; ?></p>
    <p><strong>Specialty:</strong> <?php echo $specialist['specialty']; ?></p>
    <p><strong>Experience:</strong> <?php echo $specialist['experience']; ?> years</p>
</div>

<div class="service-details">
    <h5>Service Details</h5>
    <p><strong>Service Name:</strong> <?php echo $service['serviceName']; ?></p>
    <p><strong>Description:</strong> <?php echo $service['Description']; ?></p>
    <p><strong>Price:</strong> ₹<?php echo $service['Cost']; ?></p>
</div>
<div class="map-content-9 mt-lg-0 mt-4">
    <div class="specialist-details">
        <h5>Specialist Details</h5>
        <p><strong>Name:</strong> <?php echo $specialist['Name']; ?></p>
        <p><strong>Specialty:</strong> <?php echo $specialist['Specialty']; ?></p>
        <p><strong>Experience:</strong> <?php echo $specialist['Experience']; ?> years</p>
    </div>

    <div class="service-details">
        <h5>Service Details</h5>
        <p><strong>Service Name:</strong> <?php echo $service['ServiceName']; ?></p>
        <p><strong>Description:</strong> <?php echo $service['Description']; ?></p>
        <p><strong>Price:</strong> ₹<?php echo $service['Cost']; ?></p>
    </div>

    <form method="post">
        <div style="padding-top: 30px;">
            <label>Appointment Date</label>
            <input type="date" class="form-control appointment_date" placeholder="Date" name="adate" id='adate' required="true">
        </div>
        <div style="padding-top: 30px;">
            <label>Appointment Time</label>
            <input type="time" class="form-control appointment_time" placeholder="Time" name="atime" id='atime' required="true">
        </div>
        <div style="padding-top: 30px;">
            <textarea class="form-control" id="message" name="message" placeholder="Message" required=""></textarea>
        </div>
        <button type="submit" class="btn btn-contact" name="submit">Make an Appointment</button>
    </form>
</div>
