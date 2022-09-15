-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2022 at 08:52 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techfest`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eid` int(11) NOT NULL,
  `ename` varchar(50) NOT NULL,
  `ehead` varchar(100) NOT NULL,
  `edate` varchar(100) NOT NULL,
  `evenue` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eid`, `ename`, `ehead`, `edate`, `evenue`) VALUES
(1, 'Debate & Quiz ', 'Amey mahajan ', 'Debate : 15th only', 'classroom');

-- --------------------------------------------------------

--
-- Table structure for table `participate`
--

CREATE TABLE `participate` (
  `epid` int(11) NOT NULL,
  `eid` int(11) NOT NULL,
  `moodleid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `participate`
--

INSERT INTO `participate` (`epid`, `eid`, `moodleid`) VALUES
(20, 1, 20102018);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `moodleid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `points` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `verfified` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`moodleid`, `name`, `password`, `points`, `type`, `verfified`, `year`) VALUES
(20102001, 'ITISHA', '20102001@Apsit', 0, 'Student', 'No', 'TE'),
(20102002, 'SARA', '20102002@Apsit', 0, 'Student', 'No', 'TE'),
(20102005, 'SAUJANYA', '20102005@Apsit', 0, 'Student', 'No', 'TE'),
(20102007, 'ADITYA', '20102007@Apsit', 0, 'Student', 'No', 'TE'),
(20102008, 'HARIHARAN', '20102008@Apsit', 0, 'Student', 'No', 'TE'),
(20102009, 'PRANAV', '20102009@Apsit', 0, 'Student', 'No', 'TE'),
(20102010, 'OM', '20102010@Apsit', 0, 'Student', 'No', 'TE'),
(20102011, 'ABHISHEK', '20102011@Apsit', 0, 'Student', 'No', 'TE'),
(20102012, 'EESHAN', '20102012@Apsit', 0, 'Student', 'No', 'TE'),
(20102014, 'PRATIK', '20102014@Apsit', 0, 'Student', 'No', 'TE'),
(20102015, 'KIRAN', '20102015@Apsit', 0, 'Student', 'No', 'TE'),
(20102016, 'OMKAR', '20102016@Apsit', 0, 'Student', 'No', 'TE'),
(20102017, 'ARYAN', '20102017@Apsit', 0, 'Student', 'No', 'TE'),
(20102018, 'SOHAM', '20102018@Apsit', 0, 'Student', 'No', 'TE'),
(20102019, 'RUBIN', '20102019@Apsit', 0, 'Student', 'No', 'TE'),
(20102020, 'VIHANG', '20102020@Apsit', 0, 'Student', 'No', 'TE'),
(20102021, 'ANUSHREE', '20102021@Apsit', 0, 'Student', 'No', 'TE'),
(20102022, 'YASH', '20102022@Apsit', 0, 'Student', 'No', 'TE'),
(20102023, 'SHRAVYA', '20102023@Apsit', 0, 'Student', 'No', 'TE'),
(20102024, 'SIDDARTH', '20102024@Apsit', 0, 'Student', 'No', 'TE'),
(20102025, 'EISHA', '20102025@Apsit', 0, 'Student', 'No', 'TE'),
(20102026, 'GHANSHYAM', '20102026@Apsit', 0, 'Student', 'No', 'TE'),
(20102027, 'SMIT', '20102027@Apsit', 0, 'Student', 'No', 'TE'),
(20102028, 'VENUS', '20102028@Apsit', 0, 'Student', 'No', 'TE'),
(20102029, 'JANHAVI', '20102029@Apsit', 0, 'Student', 'No', 'TE'),
(20102030, 'DEEPA', '20102030@Apsit', 0, 'Student', 'No', 'TE'),
(20102032, 'NISARG', '20102032@Apsit', 0, 'Student', 'No', 'TE'),
(20102033, 'SHRIYA', '20102033@Apsit', 0, 'Student', 'No', 'TE'),
(20102035, 'CHAITALI', '20102035@Apsit', 0, 'Student', 'No', 'TE'),
(20102036, 'ANUPAMA', '20102036@Apsit', 0, 'Student', 'No', 'TE'),
(20102038, 'NIKITA', '20102038@Apsit', 0, 'Student', 'No', 'TE'),
(20102040, 'YADULLAH', '20102040@Apsit', 0, 'Student', 'No', 'TE'),
(20102041, 'MOKSHADA', '20102041@Apsit', 0, 'Student', 'No', 'TE'),
(20102042, 'TEJAS', '20102042@Apsit', 0, 'Student', 'No', 'TE'),
(20102043, 'YASH', '20102043@Apsit', 0, 'Student', 'No', 'TE'),
(20102044, 'ANANYA', '20102044@Apsit', 0, 'Student', 'No', 'TE'),
(20102045, 'HRUGVED', '20102045@Apsit', 0, 'Student', 'No', 'TE'),
(20102046, 'PRIYANSHU', '20102046@Apsit', 0, 'Student', 'No', 'TE'),
(20102047, 'PRAGYA', '20102047@Apsit', 0, 'Student', 'No', 'TE'),
(20102048, 'SHREYAS', '20102048@Apsit', 0, 'Student', 'No', 'TE'),
(20102049, 'ARUN MATHAI', '20102049@Apsit', 0, 'Student', 'No', 'TE'),
(20102050, 'ATHARVA', '20102050@Apsit', 0, 'Student', 'No', 'TE'),
(20102052, 'PRATHAMESH', '20102052@Apsit', 0, 'Student', 'No', 'TE'),
(20102053, 'RAJ', '20102053@Apsit', 0, 'Student', 'No', 'TE'),
(20102054, 'UJJWAL', '20102054@Apsit', 0, 'Student', 'No', 'TE'),
(20102056, 'SAHARSH', '20102056@Apsit', 0, 'Student', 'No', 'TE'),
(20102058, 'SOUMYA', '20102058@Apsit', 0, 'Student', 'No', 'TE'),
(20102059, 'HARSH', '20102059@Apsit', 0, 'Student', 'No', 'TE'),
(20102060, 'ATHARVA', '20102060@Apsit', 0, 'Student', 'No', 'TE'),
(20102061, 'SIDDHANT', '20102061@Apsit', 0, 'Student', 'No', 'TE'),
(20102062, 'SEJAL', '20102062@Apsit', 0, 'Student', 'No', 'TE'),
(20102063, 'ANWESHA', '20102063@Apsit', 0, 'Student', 'No', 'TE'),
(20102064, 'ABHISHEK', '20102064@Apsit', 0, 'Student', 'No', 'TE'),
(20102065, 'ABHAY', '20102065@Apsit', 0, 'Student', 'No', 'TE'),
(20102066, 'ASHUTOSH', '20102066@Apsit', 0, 'Student', 'No', 'TE'),
(20102067, 'AMIT', '20102067@Apsit', 0, 'Student', 'No', 'TE'),
(20102068, 'KOMAL', '20102068@Apsit', 0, 'Student', 'No', 'TE'),
(20102069, 'BHAVESH', '20102069@Apsit', 0, 'Student', 'No', 'TE'),
(20102070, 'SHUBHAM', '20102070@Apsit', 0, 'Student', 'No', 'TE'),
(20102071, 'MOHAMAD AZEEIM', '20102071@Apsit', 0, 'Student', 'No', 'TE'),
(20102072, 'PRATHAM', '20102072@Apsit', 0, 'Student', 'No', 'TE'),
(20102073, 'MAHEK', '20102073@Apsit', 0, 'Student', 'No', 'TE'),
(20102074, 'DHRUV', '20102074@Apsit', 0, 'Student', 'No', 'TE'),
(20102075, 'KARAN', '20102075@Apsit', 0, 'Student', 'No', 'TE'),
(20102076, 'SAURABH', '20102076@Apsit', 0, 'Student', 'No', 'TE'),
(20102077, 'BISMITA', '20102077@Apsit', 0, 'Student', 'No', 'TE'),
(20102078, 'SHUBHAM', '20102078@Apsit', 0, 'Student', 'No', 'TE'),
(20102079, 'MADHUR', '20102079@Apsit', 0, 'Student', 'No', 'TE'),
(20102080, 'PRITHVI', '20102080@Apsit', 0, 'Student', 'No', 'TE'),
(20102081, 'SANA', '20102081@Apsit', 0, 'Student', 'No', 'TE'),
(20102082, 'CHANDAN', '20102082@Apsit', 0, 'Student', 'No', 'TE'),
(20102083, 'AASTHA', '20102083@Apsit', 0, 'Student', 'No', 'TE'),
(20102084, 'TEJAS', '20102084@Apsit', 0, 'Student', 'No', 'TE'),
(20102085, 'ARPIT', '20102085@Apsit', 0, 'Student', 'No', 'TE'),
(20102086, 'ASHNEEL', '20102086@Apsit', 0, 'Student', 'No', 'TE'),
(20102087, 'SAHIL', '20102087@Apsit', 0, 'Student', 'No', 'TE'),
(20102088, 'SIDDHANT', '20102088@Apsit', 0, 'Student', 'No', 'TE'),
(20102089, 'VEDANG', '20102089@Apsit', 0, 'Student', 'No', 'TE'),
(20102090, 'AMEY', '20102090@Apsit', 0, 'Student', 'No', 'TE'),
(20102091, 'NACHIKET', '20102091@Apsit', 0, 'Student', 'No', 'TE'),
(20102092, 'SAMRADNYEE', '20102092@Apsit', 0, 'Student', 'No', 'TE'),
(20102093, 'AKSHAYKUMAR', '20102093@Apsit', 0, 'Student', 'No', 'TE'),
(20102094, 'SAHIL', '20102094@Apsit', 0, 'Student', 'No', 'TE'),
(20102095, 'SOMIYA', '20102095@Apsit', 0, 'Student', 'No', 'TE'),
(20102096, 'KSHITIJ', '20102096@Apsit', 0, 'Student', 'No', 'TE'),
(20102098, 'AMOL', '20102098@Apsit', 0, 'Student', 'No', 'TE'),
(20102099, 'SUHAS', '20102099@Apsit', 0, 'Student', 'No', 'TE'),
(20102100, 'MANTHAN', '20102100@Apsit', 0, 'Student', 'No', 'TE'),
(20102101, 'CHETAN', '20102101@Apsit', 0, 'Student', 'No', 'TE'),
(20102102, 'DHRUVIL', '20102102@Apsit', 0, 'Student', 'No', 'TE'),
(20102103, 'SHREYASH', '20102103@Apsit', 0, 'Student', 'No', 'TE'),
(20102105, 'ANJALI', '20102105@Apsit', 0, 'Student', 'No', 'TE'),
(20102106, 'NAMRATA', '20102106@Apsit', 0, 'Student', 'No', 'TE'),
(20102107, 'MUKUND', '20102107@Apsit', 0, 'Student', 'No', 'TE'),
(20102108, 'SHUBHAM', '20102108@Apsit', 0, 'Student', 'No', 'TE'),
(20102109, 'SARVESH', '20102109@Apsit', 0, 'Student', 'No', 'TE'),
(20102110, 'MRUNAL', '20102110@Apsit', 0, 'Student', 'No', 'TE'),
(20102111, 'AKSHAT', '20102111@Apsit', 0, 'Student', 'No', 'TE'),
(20102112, 'JAINAM', '20102112@Apsit', 0, 'Student', 'No', 'TE'),
(20102113, 'HARDIK', '20102113@Apsit', 0, 'Student', 'No', 'TE'),
(20102114, 'NIRAJ', '20102114@Apsit', 0, 'Student', 'No', 'TE'),
(20102115, 'SAHIL', '20102115@Apsit', 0, 'Student', 'No', 'TE'),
(20102116, 'GAURANG', '20102116@Apsit', 0, 'Student', 'No', 'TE'),
(20102117, 'ATHARVA', '20102117@Apsit', 0, 'Student', 'No', 'TE'),
(20102118, 'HIMALI', '20102118@Apsit', 0, 'Student', 'No', 'TE'),
(20102119, 'MITALI', '20102119@Apsit', 0, 'Student', 'No', 'TE'),
(20102120, 'BHAVESH', '20102120@Apsit', 0, 'Student', 'No', 'TE'),
(20102121, 'KARTHIK', '20102121@Apsit', 0, 'Student', 'No', 'TE'),
(20102122, 'SAKET', '20102122@Apsit', 0, 'Student', 'No', 'TE'),
(20102123, 'JAS', '20102123@Apsit', 0, 'Student', 'No', 'TE'),
(20102124, 'SHREYASH', '20102124@Apsit', 0, 'Student', 'No', 'TE'),
(20102125, 'HARMIT', '20102125@Apsit', 0, 'Student', 'No', 'TE'),
(20102126, 'POOJA', '20102126@Apsit', 0, 'Student', 'No', 'TE'),
(20102127, 'VIVEK', '20102127@Apsit', 0, 'Student', 'No', 'TE'),
(20102128, 'RAJESH', '20102128@Apsit', 0, 'Student', 'No', 'TE'),
(20102129, 'SAKSHI', '20102129@Apsit', 0, 'Student', 'No', 'TE'),
(20102130, 'SIDDHESH', '20102130@Apsit', 0, 'Student', 'No', 'TE'),
(20102131, 'OMKAR', '20102131@Apsit', 0, 'Student', 'No', 'TE'),
(20102132, 'SHIVANGI', '20102132@Apsit', 0, 'Student', 'No', 'TE'),
(20102133, 'MANSI', '20102133@Apsit', 0, 'Student', 'No', 'TE'),
(20102134, 'ABHAY', '20102134@Apsit', 0, 'Student', 'No', 'TE'),
(20102135, 'ATHARVA', '20102135@Apsit', 0, 'Student', 'No', 'TE'),
(20102136, 'SAHIL', '20102136@Apsit', 0, 'Student', 'No', 'TE'),
(20102137, 'VANDAN', '20102137@Apsit', 0, 'Student', 'No', 'TE'),
(20102138, 'VAISHNAVI', '20102138@Apsit', 0, 'Student', 'No', 'TE'),
(20102139, 'SHARVARI', '20102139@Apsit', 0, 'Student', 'No', 'TE'),
(20102140, 'KESHAV', '20102140@Apsit', 0, 'Student', 'No', 'TE'),
(20102141, 'PRAVIN', '20102141@Apsit', 0, 'Student', 'No', 'TE'),
(20102142, 'SAKSHI', '20102142@Apsit', 0, 'Student', 'No', 'TE'),
(20102143, 'SUYASH', '20102143@Apsit', 0, 'Student', 'No', 'TE'),
(20102144, 'VISHWAJEET', '20102144@Apsit', 0, 'Student', 'No', 'TE'),
(20102145, 'ANIRUDDHA', '20102145@Apsit', 0, 'Student', 'No', 'TE'),
(20102146, 'VAISHNAVI', '20102146@Apsit', 0, 'Student', 'No', 'TE'),
(20102147, 'PRINCE', '20102147@Apsit', 0, 'Student', 'No', 'TE'),
(20102148, 'YASH', '20102148@Apsit', 0, 'Student', 'No', 'TE'),
(20102149, 'KUNJ', '20102149@Apsit', 0, 'Student', 'No', 'TE'),
(20102150, 'MEET', '20102150@Apsit', 0, 'Student', 'No', 'TE'),
(20102151, 'ANUJ', '20102151@Apsit', 0, 'Student', 'No', 'TE'),
(20102152, 'VIDUL', '20102152@Apsit', 0, 'Student', 'No', 'TE'),
(20102153, 'NIKITA', '20102153@Apsit', 0, 'Student', 'No', 'TE'),
(20102154, 'KUNAL', '20102154@Apsit', 0, 'Student', 'No', 'TE'),
(20102155, 'SAURAV', '20102155@Apsit', 0, 'Student', 'No', 'TE'),
(20102156, 'VANSH', '20102156@Apsit', 0, 'Student', 'No', 'TE'),
(20102157, 'HRISHIKESH', '20102157@Apsit', 0, 'Student', 'No', 'TE'),
(20102158, 'ADWAIT', '20102158@Apsit', 0, 'Student', 'No', 'TE'),
(20102159, 'MANAV', '20102159@Apsit', 0, 'Student', 'No', 'TE'),
(20102160, 'NOOR BANO', '20102160@Apsit', 0, 'Student', 'No', 'TE'),
(20102161, 'HARSH', '20102161@Apsit', 0, 'Student', 'No', 'TE'),
(20102162, 'PARTH', '20102162@Apsit', 0, 'Student', 'No', 'TE'),
(20102163, 'SUCHIT', '20102163@Apsit', 0, 'Student', 'No', 'TE'),
(20102164, 'MEGHA', '20102164@Apsit', 0, 'Student', 'No', 'TE'),
(20102165, 'MEGHAVATI', '20102165@Apsit', 0, 'Student', 'No', 'TE'),
(20102166, 'JAY', '20102166@Apsit', 0, 'Student', 'No', 'TE'),
(20102167, 'SWAMINI', '20102167@Apsit', 0, 'Student', 'No', 'TE'),
(20102168, 'MANSI', '20102168@Apsit', 0, 'Student', 'No', 'TE'),
(20102169, 'ADARSH', '20102169@Apsit', 0, 'Student', 'No', 'TE'),
(20102170, 'AJAY', '20102170@Apsit', 0, 'Student', 'No', 'TE'),
(20102171, 'AVADH', '20102171@Apsit', 0, 'Student', 'No', 'TE'),
(20102172, 'VIKRAM', '20102172@Apsit', 0, 'Student', 'No', 'TE'),
(20102173, 'PRAJWAL', '20102173@Apsit', 0, 'Student', 'No', 'TE'),
(20102175, 'HARJOT', '20102175@Apsit', 0, 'Student', 'No', 'TE'),
(20102176, 'SIDDHARTH', '20102176@Apsit', 0, 'Student', 'No', 'TE'),
(20102177, 'RANJAN', '20102177@Apsit', 0, 'Student', 'No', 'TE'),
(20102179, 'ANUSHREE', '20102179@Apsit', 0, 'Student', 'No', 'TE'),
(20102180, 'SHUBHAM', '20102180@Apsit', 0, 'Student', 'No', 'TE'),
(20102181, 'KARTIK', '20102181@Apsit', 0, 'Student', 'No', 'TE'),
(20102182, 'ADITI', '20102182@Apsit', 0, 'Student', 'No', 'TE'),
(20102183, 'AMAN', '20102183@Apsit', 0, 'Student', 'No', 'TE'),
(20102184, 'CHINMAY', '20102184@Apsit', 0, 'Student', 'No', 'TE'),
(20102185, 'PRANAY', '20102185@Apsit', 0, 'Student', 'No', 'TE'),
(20102186, 'SRUSHTI', '20102186@Apsit', 0, 'Student', 'No', 'TE'),
(20102187, 'JANVI', '20102187@Apsit', 0, 'Student', 'No', 'TE'),
(20102188, 'SURESHKUMAR', '20102188@Apsit', 0, 'Student', 'No', 'TE'),
(20102189, 'RUDRA', '20102189@Apsit', 0, 'Student', 'No', 'TE'),
(20102190, 'ADITI', '20102190@Apsit', 0, 'Student', 'No', 'TE'),
(20102191, 'NAMAN', '20102191@Apsit', 0, 'Student', 'No', 'TE'),
(20102192, 'SAMPADA', '20102192@Apsit', 0, 'Student', 'No', 'TE'),
(20102193, 'DHYEY', '20102193@Apsit', 0, 'Student', 'No', 'TE'),
(20102194, 'SELVINA', '20102194@Apsit', 0, 'Student', 'No', 'TE'),
(20102195, 'AAMIR', '20102195@Apsit', 0, 'Student', 'No', 'TE'),
(20102196, 'TANVI', '20102196@Apsit', 0, 'Student', 'No', 'TE'),
(20102197, 'VAIDIK', '20102197@Apsit', 0, 'Student', 'No', 'TE'),
(20102198, 'PRATIK', '20102198@Apsit', 0, 'Student', 'No', 'TE'),
(20102199, 'SAURABH', '20102199@Apsit', 0, 'Student', 'No', 'TE'),
(20102200, 'DHANANJAY', '20102200@Apsit', 0, 'Student', 'No', 'TE'),
(20102202, 'PRATIK', '20102202@Apsit', 0, 'Student', 'No', 'TE'),
(20102203, 'SAYALI', '20102203@Apsit', 0, 'Student', 'No', 'TE'),
(20102204, 'KIRTI', '20102204@Apsit', 0, 'Student', 'No', 'TE'),
(20102205, 'PRATIK', '20102205@Apsit', 0, 'Student', 'No', 'TE'),
(21202001, 'MANTAHAN', '21202001@Apsit', 0, 'Student', 'No', 'TE'),
(21202002, 'MANYA', '21202002@Apsit', 0, 'Student', 'No', 'TE'),
(21202003, 'SIDDHARTH', '21202003@Apsit', 0, 'Student', 'No', 'TE'),
(21202004, 'SANKET', '21202004@Apsit', 0, 'Student', 'No', 'TE'),
(21202005, 'VANSH', '21202005@Apsit', 0, 'Student', 'No', 'TE'),
(21202006, 'RAHUL', '21202006@Apsit', 0, 'Student', 'No', 'TE'),
(21202007, 'MANAV', '21202007@Apsit', 0, 'Student', 'No', 'TE'),
(21202008, 'AMAN', '21202008@Apsit', 0, 'Student', 'No', 'TE'),
(21202009, 'KEVIN', '21202009@Apsit', 0, 'Student', 'No', 'TE'),
(21202010, 'JANAVI', '21202010@Apsit', 0, 'Student', 'No', 'TE'),
(21202011, 'VIRAJ', '21202011@Apsit', 0, 'Student', 'No', 'TE'),
(21202012, 'SAGAR', '21202012@Apsit', 0, 'Student', 'No', 'TE'),
(21202013, 'PUSHKAR', '21202013@Apsit', 0, 'Student', 'No', 'TE'),
(21202014, 'DISHANK', '21202014@Apsit', 0, 'Student', 'No', 'TE'),
(21202015, 'RISHI', '21202015@Apsit', 0, 'Student', 'No', 'TE'),
(21202016, 'RAHUL', '21202016@Apsit', 0, 'Student', 'No', 'TE'),
(21202017, 'ABHISHEK', '21202017@Apsit', 0, 'Student', 'No', 'TE'),
(21202018, 'SANSKRUTI', '21202018@Apsit', 0, 'Student', 'No', 'TE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `participate`
--
ALTER TABLE `participate`
  ADD PRIMARY KEY (`epid`),
  ADD KEY `fk_handler1` (`moodleid`),
  ADD KEY `fk_handler` (`eid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`moodleid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `participate`
--
ALTER TABLE `participate`
  MODIFY `epid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `participate`
--
ALTER TABLE `participate`
  ADD CONSTRAINT `fk_handler` FOREIGN KEY (`eid`) REFERENCES `event` (`eid`),
  ADD CONSTRAINT `fk_handler1` FOREIGN KEY (`moodleid`) REFERENCES `users` (`moodleid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
