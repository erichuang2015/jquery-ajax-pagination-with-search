-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2019 at 11:57 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pagination`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(250) NOT NULL,
  `student_phone` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `student_name`, `student_phone`) VALUES
(1, 'Pauline S. Rich', '412-735-0224'),
(2, 'Sarah C. White', '320-552-9961'),
(3, 'Samuel L. Leslie', '201-324-8264'),
(4, 'Norma R. Manly', '478-322-4715'),
(5, 'Kimberly R. Castro', '479-966-6788'),
(6, 'Elaine R. Davis', '701-685-8912'),
(7, 'Concepcion S. Gardner', '607-829-8758'),
(8, 'Patricia J. White', '803-789-0429'),
(9, 'Michael M. Bothwell', '214-585-0737'),
(10, 'Ronald C. Vansickle', '630-571-4107'),
(11, 'Clarence A. Rich', '904-459-3747'),
(12, 'Elizabeth W. Peterson', '404-380-9481'),
(13, 'Renee R. Hewitt', '323-350-4973'),
(14, 'John K. Love', '337-229-1983'),
(15, 'Teresa J. Rincon', '216-394-6894'),
(16, 'Erin S. Huckaby', '503-284-8652'),
(17, 'Brian A. Handley', '989-304-7122'),
(18, 'Michelle A. Polk', '540-232-0351'),
(19, 'Wanda M. Brown', '718-262-7466'),
(20, 'Phillip A. Hatcher', '407-492-5727'),
(21, 'Dennis J. Terrell', '903-863-5810'),
(22, 'Britney F. Johnson', '972-421-6933'),
(23, 'Rachelle J. Martin', '920-397-4224'),
(24, 'Leila E. Ledoux', '615-425-9930'),
(25, 'Darrell A. Fields', '708-887-1913'),
(26, 'Linda D. Carter', '909-386-7998'),
(27, 'Melva J. Palmisano', '630-643-8763'),
(28, 'Jessica V. Windham', '513-807-9224'),
(29, 'Karen T. Martin', '847-385-1621'),
(30, 'Jack K. McDonough', '561-641-4509'),
(31, 'John M. Williams', '508-269-9346'),
(32, 'Amelia W. Davis', '347-537-8052'),
(33, 'Gertrude W. Lawrence', '510-702-7415'),
(34, 'Michael L. Harris', '252-219-4076'),
(35, 'Casey A. Groves', '810-334-9674'),
(36, 'James H. Wilson', '865-259-6772'),
(37, 'James A. Wesley', '443-217-1859'),
(38, 'Armando C. Gay', '716-252-9230'),
(39, 'James M. Duarte', '402-840-0541'),
(40, 'Jason E. West', '360-610-7730'),
(41, 'Gloria H. Saucedo', '205-861-3306'),
(42, 'Paul T. Moody', '914-683-4994'),
(43, 'Sandra L. Williams', '310-335-1336'),
(44, 'Elaine T. Deville', '626-513-8306'),
(45, 'Robyn L. Spangler', '754-224-7023'),
(46, 'Sam A. Pino', '806-823-5344'),
(47, 'Joseph H. Marble', '201-917-2804'),
(48, 'Mark M. Bassett', '206-592-4665'),
(49, 'Edgar M. Billy', '978-365-0324'),
(50, 'Connie M. Yang', '815-288-5435'),
(51, 'Test Student', '1234567890');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
