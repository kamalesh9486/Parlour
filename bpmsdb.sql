-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2025 at 09:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_name`) VALUES
(1, 'Hair cut with Blow dry'),
(2, 'Color & highlights'),
(3, 'Shampoo & Set'),
(4, 'Blow Dry & Curl'),
(5, 'Advance Hair Color'),
(6, 'Back Massage'),
(7, 'Hair Treatment'),
(8, 'Face Massage'),
(9, 'Skin Care'),
(10, 'Body Therapies');

-- --------------------------------------------------------

--
-- Table structure for table `specialistlogin`
--

CREATE TABLE `specialistlogin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `specialistlogin`
--

INSERT INTO `specialistlogin` (`id`, `username`, `password`) VALUES
(1, 'JohnDoe', 'JohnDoe@admin'),
(2, 'JaneSmith', 'JaneSmith@admin'),
(3, 'EmilyDavis', 'EmilyDavis@admin'),
(4, 'MichaelBrown', 'MichaelBrown@admin'),
(5, 'SophiaWilson', 'SophiaWilson@admin'),
(6, 'ChrisMiller', 'ChrisMiller@admin'),
(7, 'OliviaJohnson', 'OliviaJohnson@admin'),
(8, 'LiamTaylor', 'LiamTaylor@admin'),
(9, 'AvaAnderson', 'AvaAnderson@admin'),
(10, 'NoahMartinez', 'NoahMartinez@admin'),
(11, 'IsabellaThomas', 'IsabellaThomas@admin'),
(12, 'EthanMoore', 'EthanMoore@admin'),
(13, 'SophiaClark', 'SophiaClark@admin'),
(14, 'JacksonLee', 'JacksonLee@admin'),
(15, 'EllaWhite', 'EllaWhite@admin'),
(16, 'JamesHarris', 'JamesHarris@admin'),
(17, 'LilyWalker', 'LilyWalker@admin'),
(18, 'AlexanderHall', 'AlexanderHall@admin'),
(19, 'MiaYoung', 'MiaYoung@admin'),
(20, 'LoganAllen', 'LoganAllen@admin'),
(21, 'EmmaKing', 'EmmaKing@admin'),
(22, 'LucasWright', 'LucasWright@admin'),
(23, 'CharlotteScott', 'CharlotteScott@admin'),
(24, 'BenjaminGreen', 'BenjaminGreen@admin'),
(25, 'HannahLopez', 'HannahLopez@admin'),
(26, 'NathanPerez', 'NathanPerez@admin'),
(27, 'SophiaRamirez', 'SophiaRamirez@admin'),
(28, 'MatthewWard', 'MatthewWard@admin'),
(29, 'AvaCarter', 'AvaCarter@admin'),
(30, 'OliverBrooks', 'OliverBrooks@admin'),
(31, 'IsabellaBennett', 'IsabellaBennett@admin'),
(32, 'EthanGray', 'EthanGray@admin'),
(33, 'EmmaRoss', 'EmmaRoss@admin'),
(34, 'WilliamCook', 'WilliamCook@admin'),
(35, 'SophiaFoster', 'SophiaFoster@admin'),
(36, 'JamesHoward', 'JamesHoward@admin'),
(37, 'EmilyTorres', 'EmilyTorres@admin'),
(38, 'MichaelRivera', 'MichaelRivera@admin'),
(39, 'SophiaMorris', 'SophiaMorris@admin'),
(40, 'LiamReed', 'LiamReed@admin'),
(41, 'OliviaWard', 'OliviaWard@admin'),
(42, 'NoahBell', 'NoahBell@admin'),
(43, 'MiaCooper', 'MiaCooper@admin'),
(44, 'BenjaminHughes', 'BenjaminHughes@admin'),
(45, 'AvaBryant', 'AvaBryant@admin'),
(46, 'LucasJenkins', 'LucasJenkins@admin'),
(47, 'CharlotteFisher', 'CharlotteFisher@admin'),
(48, 'EthanDiaz', 'EthanDiaz@admin'),
(49, 'SophiaCruz', 'SophiaCruz@admin'),
(50, 'LiamMurphy', 'LiamMurphy@admin'),
(51, 'IsabellaSimmons', 'IsabellaSimmons@admin'),
(52, 'JamesBarnes', 'JamesBarnes@admin'),
(53, 'OliviaSanders', 'OliviaSanders@admin'),
(54, 'EthanPowell', 'EthanPowell@admin'),
(55, 'EmilyCollins', 'EmilyCollins@admin'),
(56, 'NathanBailey', 'NathanBailey@admin'),
(57, 'SophiaWatson', 'SophiaWatson@admin'),
(58, 'LiamHayes', 'LiamHayes@admin'),
(59, 'IsabellaPerry', 'IsabellaPerry@admin'),
(60, 'NoahRivera', 'NoahRivera@admin');

-- --------------------------------------------------------

--
-- Table structure for table `specialists`
--

CREATE TABLE `specialists` (
  `specialist_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `experience` int(11) NOT NULL,
  `specialty` varchar(255) NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `service_id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `status` enum('Free','Committed') DEFAULT 'Free',
  `mobile_number` varchar(15) NOT NULL,
  `availability` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `specialists`
--

INSERT INTO `specialists` (`specialist_id`, `name`, `experience`, `specialty`, `contact_info`, `service_id`, `image_path`, `status`, `mobile_number`, `availability`) VALUES
(1, 'John Doe', 5, 'Expert in Hair Styling', 'john@example.com', 1, 'images1/temp.jpg', '', '+913244499545', '09:25 to 16:20'),
(2, 'Jane Smith', 4, 'Master Hairdresser', 'jane@example.com', 1, 'images1/temp.jpg', '', '+911874210356', '11:23 to 13:28'),
(3, 'Emily Davis', 6, 'Professional Hair Stylist', 'emily@example.com', 1, 'images1/temp.jpg', '', '+911335355176', '13:31 to 15:04'),
(4, 'Michael Brown', 3, 'Specialist in Haircuts', 'michael@example.com', 1, 'images1/temp.jpg', '', '+914224748906', '11:44 to 16:17'),
(5, 'Sophia Wilson', 7, 'Hair Care Specialist', 'sophia@example.com', 1, 'images1/temp.jpg', '', '+916925337158', '10:33 to 15:55'),
(6, 'Chris Miller', 2, 'Junior Hairdresser', 'chris@example.com', 1, 'images1/temp.jpg', '', '+919958766543', '10:05 to 13:30'),
(7, 'Olivia Johnson', 4, 'Color Expert', 'olivia@example.com', 2, 'images1/temp.jpg', '', '+918717234576', '13:54 to 14:39'),
(8, 'Liam Taylor', 5, 'Highlight Specialist', 'liam@example.com', 2, 'images1/temp.jpg', '', '+917492083858', '12:02 to 17:22'),
(9, 'Ava Anderson', 6, 'Hair Color Guru', 'ava@example.com', 2, 'images1/temp.jpg', '', '+916001389468', '09:45 to 13:25'),
(10, 'Noah Martinez', 3, 'Specialist in Hair Colors', 'noah@example.com', 2, 'images1/temp.jpg', '', '+919824907658', '12:12 to 14:22'),
(11, 'Isabella Thomas', 8, 'Color Enthusiast', 'isabella@example.com', 2, 'images1/temp.jpg', '', '+914955111421', '10:52 to 15:48'),
(12, 'Ethan Moore', 2, 'Apprentice Colorist', 'ethan@example.com', 2, 'images1/temp.jpg', '', '+917136421333', '12:36 to 15:50'),
(13, 'Sophia Clark', 5, 'Shampoo Expert', 'sophia.c@example.com', 3, 'images1/temp.jpg', '', '+917125712655', '12:27 to 15:07'),
(14, 'Jackson Lee', 4, 'Set Specialist', 'jackson@example.com', 3, 'images1/temp.jpg', '', '+911373650835', '13:40 to 15:44'),
(15, 'Ella White', 6, 'Styling Professional', 'ella@example.com', 3, 'images1/temp.jpg', '', '+919497839501', '09:21 to 15:37'),
(16, 'James Harris', 3, 'Hair Set Specialist', 'james@example.com', 3, 'images1/temp.jpg', '', '+914738601959', '11:29 to 14:14'),
(17, 'Lily Walker', 7, 'Luxury Shampoo Stylist', 'lily@example.com', 3, 'images1/temp.jpg', '', '+917646504565', '13:45 to 15:43'),
(18, 'Alexander Hall', 2, 'Junior Stylist', 'alexander@example.com', 3, 'images1/temp.jpg', '', '+918778126748', '12:26 to 17:16'),
(19, 'Mia Young', 5, 'Blow Dry Expert', 'mia@example.com', 4, 'images1/temp.jpg', '', '+912794530954', '11:11 to 15:55'),
(20, 'Logan Allen', 4, 'Curl Specialist', 'logan@example.com', 4, 'images1/temp.jpg', '', '+916553068507', '10:38 to 16:57'),
(21, 'Emma King', 6, 'Professional Stylist', 'emma@example.com', 4, 'images1/temp.jpg', '', '+919793159188', '11:32 to 16:01'),
(22, 'Lucas Wright', 3, 'Blow Curl Specialist', 'lucas@example.com', 4, 'images1/temp.jpg', '', '+915519899773', '12:29 to 17:53'),
(23, 'Charlotte Scott', 7, 'Hair Transformation Specialist', 'charlotte@example.com', 4, 'images1/temp.jpg', '', '+918176698205', '09:16 to 17:23'),
(24, 'Benjamin Green', 2, 'Apprentice Stylist', 'benjamin@example.com', 4, 'images1/temp.jpg', '', '+913098576906', '11:38 to 17:42'),
(25, 'Hannah Lopez', 5, 'Advanced Hair Color Expert', 'hannah@example.com', 5, 'images1/temp.jpg', '', '+912115315340', '12:58 to 16:00'),
(26, 'Nathan Perez', 6, 'Hair Color Specialist', 'nathan@example.com', 5, 'images1/temp.jpg', '', '+916563665160', '10:27 to 15:58'),
(27, 'Sophia Ramirez', 7, 'Creative Hair Colorist', 'sophia.r@example.com', 5, 'images1/temp.jpg', '', '+911979713028', '12:47 to 15:17'),
(28, 'Matthew Ward', 4, 'Master in Hair Coloring', 'matthew@example.com', 5, 'images1/temp.jpg', '', '+911158097312', '12:34 to 15:36'),
(29, 'Ava Carter', 8, 'Color Enhancement Specialist', 'ava.c@example.com', 5, 'images1/temp.jpg', '', '+915195547579', '12:49 to 15:06'),
(30, 'Oliver Brooks', 3, 'Junior Hair Color Stylist', 'oliver@example.com', 5, 'images1/temp.jpg', '', '+918375193356', '13:09 to 16:27'),
(31, 'Isabella Bennett', 5, 'Back Massage Expert', 'isabella@example.com', 6, 'images1/temp.jpg', '', '+919735698275', '12:52 to 17:51'),
(32, 'Ethan Gray', 6, 'Therapeutic Massage Specialist', 'ethan.g@example.com', 6, 'images1/temp.jpg', '', '+915725655749', '12:33 to 17:56'),
(33, 'Emma Ross', 7, 'Massage Therapy Professional', 'emma.ross@example.com', 6, 'images1/temp.jpg', '', '+918188620892', '09:09 to 16:49'),
(34, 'William Cook', 4, 'Relaxation Massage Specialist', 'william@example.com', 6, 'images1/temp.jpg', '', '+917496980557', '10:35 to 15:08'),
(35, 'Sophia Foster', 8, 'Back Pain Relief Expert', 'sophia.f@example.com', 6, 'images1/temp.jpg', '', '+912665694899', '12:12 to 16:14'),
(36, 'James Howard', 3, 'Apprentice Massage Therapist', 'james.h@example.com', 6, 'images1/temp.jpg', '', '+913837131289', '12:10 to 14:07'),
(37, 'Emily Torres', 6, 'Hair Treatment Specialist', 'emily.t@example.com', 7, 'images1/temp.jpg', '', '+912996755264', '11:10 to 15:32'),
(38, 'Michael Rivera', 5, 'Hair Care Expert', 'michael.r@example.com', 7, 'images1/temp.jpg', '', '+913137890739', '12:18 to 16:00'),
(39, 'Sophia Morris', 7, 'Scalp Treatment Professional', 'sophia.m@example.com', 7, 'images1/temp.jpg', '', '+911118881396', '10:19 to 14:26'),
(40, 'Liam Reed', 4, 'Hair Health Specialist', 'liam.r@example.com', 7, 'images1/temp.jpg', '', '+916787476107', '10:45 to 17:08'),
(41, 'Olivia Ward', 8, 'Deep Conditioning Expert', 'olivia.w@example.com', 7, 'images1/temp.jpg', '', '+911788305270', '13:45 to 15:30'),
(42, 'Noah Bell', 3, 'Junior Hair Care Specialist', 'noah.b@example.com', 7, 'images1/temp.jpg', '', '+916802581109', '12:36 to 16:22'),
(43, 'Mia Cooper', 5, 'Facial Massage Specialist', 'mia.c@example.com', 8, 'images1/temp.jpg', '', '+912922260873', '09:12 to 15:47'),
(44, 'Benjamin Hughes', 6, 'Skincare Massage Expert', 'benjamin.h@example.com', 8, 'images1/temp.jpg', '', '+917111194327', '12:34 to 15:42'),
(45, 'Ava Bryant', 7, 'Facial Relaxation Therapist', 'ava.b@example.com', 8, 'images1/temp.jpg', '', '+915994516994', '09:46 to 13:31'),
(46, 'Lucas Jenkins', 4, 'Face Rejuvenation Expert', 'lucas.j@example.com', 8, 'images1/temp.jpg', '', '+911559127122', '13:58 to 16:58'),
(47, 'Charlotte Fisher', 8, 'Luxury Facial Specialist', 'charlotte.f@example.com', 8, 'images1/temp.jpg', '', '+919878225338', '11:44 to 16:52'),
(48, 'Ethan Diaz', 3, 'Apprentice Facial Therapist', 'ethan.d@example.com', 8, 'images1/temp.jpg', '', '+913161609153', '13:21 to 16:11'),
(49, 'Sophia Cruz', 5, 'Skin Care Specialist', 'sophia.c@example.com', 9, 'images1/temp.jpg', '', '+916216662516', '13:54 to 13:49'),
(50, 'Liam Murphy', 6, 'Dermatology Expert', 'liam.m@example.com', 9, 'images1/temp.jpg', '', '+918969568528', '13:39 to 17:58'),
(51, 'Isabella Simmons', 7, 'Skin Treatment Professional', 'isabella.s@example.com', 9, 'images1/temp.jpg', '', '+912715608705', '13:49 to 14:13'),
(52, 'James Barnes', 4, 'Skincare Routine Specialist', 'james.b@example.com', 9, 'images1/temp.jpg', '', '+914070360561', '13:49 to 17:02'),
(53, 'Olivia Sanders', 8, 'Glowing Skin Specialist', 'olivia.s@example.com', 9, 'images1/temp.jpg', '', '+912307424286', '10:29 to 13:18'),
(54, 'Ethan Powell', 3, 'Apprentice Skin Therapist', 'ethan.p@example.com', 9, 'images1/temp.jpg', '', '+914694222145', '13:20 to 13:30'),
(55, 'Emily Collins', 5, 'Body Therapy Expert', 'emily.c@example.com', 10, 'images1/temp.jpg', '', '+919237330277', '10:20 to 15:56'),
(56, 'Nathan Bailey', 6, 'Massage and Body Care Specialist', 'nathan.b@example.com', 10, 'images1/temp.jpg', '', '+912242438670', '13:38 to 14:06'),
(57, 'Sophia Watson', 7, 'Body Relaxation Therapist', 'sophia.w@example.com', 10, 'images1/temp.jpg', '', '+913987190524', '13:57 to 17:47'),
(58, 'Liam Hayes', 4, 'Full Body Massage Expert', 'liam.h@example.com', 10, 'images1/temp.jpg', '', '+918429412208', '10:14 to 16:49'),
(59, 'Isabella Perry', 8, 'Luxury Body Therapy Specialist', 'isabella.p@example.com', 10, 'images1/temp.jpg', '', '+911698846944', '09:28 to 14:12'),
(60, 'Noah Rivera', 3, 'Apprentice Body Therapist', 'noah.r@example.com', 10, 'images1/temp.jpg', '', '+919313640289', '13:28 to 16:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7898799798, 'tester1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-05-01 06:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblbook`
--

CREATE TABLE `tblbook` (
  `ID` int(10) NOT NULL,
  `UserID` int(10) DEFAULT NULL,
  `AptNumber` int(10) DEFAULT NULL,
  `AptDate` date DEFAULT NULL,
  `AptTime` time DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `BookingDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `RemarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `service_id` varchar(15) NOT NULL,
  `specialist_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbook`
--

INSERT INTO `tblbook` (`ID`, `UserID`, `AptNumber`, `AptDate`, `AptTime`, `Message`, `BookingDate`, `Remark`, `Status`, `RemarkDate`, `service_id`, `specialist_id`) VALUES
(10, 1, 226906690, '2024-09-20', '17:30:00', 'Need appointment for bridal makeup.', '2024-09-05 06:52:30', 'Approved', 'Selected', '2024-09-05 09:33:48', '', ''),
(11, 2, 235679471, '2025-01-23', '18:29:00', 'need an facial', '2025-01-15 12:56:20', 'ok', 'Selected', '2025-01-15 12:59:26', '', ''),
(12, 2, 321420416, '2025-01-17', '23:26:00', 'need a massahe', '2025-01-15 13:56:40', 'n', 'Selected', '2025-01-15 13:57:13', '7', '37'),
(13, 2, 272697537, '2025-01-21', '13:16:00', 'need a color', '2025-01-19 07:41:52', NULL, NULL, NULL, '7', '37'),
(14, 2, 102715495, '2025-01-21', '13:16:00', 'need a color', '2025-01-19 07:41:52', NULL, NULL, NULL, '7', '37');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `Phone` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(1, 1, 1, 193862954, '2024-09-05 09:34:08'),
(2, 1, 6, 193862954, '2024-09-05 09:34:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '        Our main focus is on quality and hygiene. Our Parlour is well equipped with advanced technology equipments and provides best quality services. Our staff is well trained and experienced, offering advanced services in Skin, Hair and Body Shaping that will provide you with a luxurious experience that leave you feeling relaxed and stress free. The specialities in the parlour are, apart from regular bleachings and Facials, many types of hairstyles, Bridal and cine make-up and different types of Facials &amp; fashion hair colourings.', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '890,Sector 62, Gyan Sarovar, GAIL Noida(Delhi/NCR)', 'info@gmail.com', 7896541236, NULL, '10:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `ServiceDescription` mediumtext DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `ServiceDescription`, `Cost`, `Image`, `CreationDate`) VALUES
(1, 'O3 Facial', 'O3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 Facial', 1200, 'o3plus-professional-bridal-facial-kit-for-radiant-glowing-skin.jpg', '2024-05-09 22:37:38'),
(2, 'Fruit Facial', 'Fruit facials contain certain fruit acid like glycolic acid, alpha hydroxyl acid, citric acid, phenolic acid, vitamins and minerals in it. These acids are antiblemish, antiwrinkle and help your skin to exfoliate, it highly detoxifies your skin, it excretes out all the toxins and it hydrates your face', 500, 'How-To-Do-Fruit-Facial-At-Home.jpg', '2024-05-09 22:37:38'),
(3, 'Charcol Facial', 'Activated charcoal is created from bone char, coconut shells, peat, petroleum coke, coal, olive pits, bamboo, or sawdust. It is in the form of a fine black dust that is produced when regular charcoal is activated by exposing it to very high temperatures. This is done to alter its internal structure and increase its surface area to increase absorbability. The charcoal that you get after it has undergone this process is very porous.', 1000, 'b9fb9d37bdf15a699bc071ce49baea531652852364.jpg', '2024-05-09 22:37:38'),
(4, 'Deluxe Menicure', 'A luxurious treatment including a soak and moisturizing exfoliation, cuticle work, nails clipped and filed, hard skin is removed (pedicure) and a renewing mask is applied. A short massage and your nails are buffed and ready to paint.', 500, 'efc1a80c391be252d7d777a437f868701652852477.jpg', '2024-05-09 22:37:38'),
(5, 'Deluxe Pedicure', 'A luxurious treatment including a soak and moisturizing exfoliation, cuticle work, nails clipped and filed, hard skin is removed (pedicure) and a renewing mask is applied. A short massage and your nails are buffed and ready to paint.', 600, '1e6ae4ada992769567b71815f124fac51652852492.jpg', '2024-05-09 22:37:38'),
(6, 'Normal Menicure', 'A luxurious treatment including a soak and moisturizing exfoliation, cuticle work, nails clipped and filed, hard skin is removed (pedicure) and a renewing mask is applied. A short massage and your nails are buffed and ready to paint.', 300, 'The-Dummys-Guide-To-Using-A-Manicure-Kit_OI.jpg', '2024-05-09 22:37:38'),
(7, 'Normal Pedicure', 'A luxurious treatment including a soak and moisturizing exfoliation, cuticle work, nails clipped and filed, hard skin is removed (pedicure) and a renewing mask is applied. A short massage and your nails are buffed and ready to paint.', 400, '1e6ae4ada992769567b71815f124fac51652852492.jpg', '2024-05-09 22:37:38'),
(8, 'U-Shape Hair Cut', 'U-Shape Hair Cut', 250, 'cff8ad28cf40ebf4fbdd383fe546098d1652852593.jpg', '2024-05-09 22:37:38'),
(9, 'Layer Haircut', 'Layer Haircut', 550, '74375080377499ab76dad37484ee7f151652852649.jpg', '2024-05-09 22:37:38'),
(10, 'Rebonding', 'Hair rebonding is a chemical process that changes your hair\'s natural texture and creates a smooth, straight style. It\'s also called chemical straightening. Hair rebonding is typically performed by a licensed cosmetologist at your local hair salon.', 3999, 'c362f21370120580f5779a2d019392851652852555.jpg', '2024-05-09 22:37:38'),
(11, 'Loreal Hair Color(Full)', 'Loreal Hair Color(Full),Loreal Hair Color(Full),Loreal Hair Color(Full)', 1200, 'images.jpg', '2024-05-09 22:37:38'),
(12, 'Body Spa', 'It is typically a massage spa therapy that helps reduce pain. The technique involves using fingertips, palm, elbow, or even feet to apply firm pressure on certain body parts or acupoint to encourage blood flow and promote healing', 1500, 'efc1a80c391be252d7d777a437f868701652852477.jpg', '2024-05-09 22:37:38'),
(16, 'Aroma Oil Massage Therapy', 'Aroma Oil Massage TherapyAroma Oil Massage TherapyAroma Oil Massage TherapyAroma Oil Massage TherapyAroma Oil Massage', 700, '032b2cc936860b03048302d991c3498f1652173213.jpg', '2024-05-09 22:37:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(120) DEFAULT NULL,
  `LastName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(1, 'John', 'Doe', 1414253612, 'johndoe@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-09-05 06:46:36'),
(2, 'vinzo', 'vinzo', 7070797079, 'vinzo@gmail.com', '6dc75e702ddbaca02b2b0074a5d8c212', '2025-01-15 05:41:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `specialistlogin`
--
ALTER TABLE `specialistlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialists`
--
ALTER TABLE `specialists`
  ADD PRIMARY KEY (`specialist_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbook`
--
ALTER TABLE `tblbook`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `specialists`
--
ALTER TABLE `specialists`
  MODIFY `specialist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbook`
--
ALTER TABLE `tblbook`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `specialists`
--
ALTER TABLE `specialists`
  ADD CONSTRAINT `specialists_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
