-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2024 at 04:53 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sound`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `Artist_ID` int(11) NOT NULL,
  `Artist_Name` varchar(55) DEFAULT NULL,
  `Artist_Image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`Artist_ID`, `Artist_Name`, `Artist_Image`) VALUES
(1, 'Arjit Singh', 'singer/a.png'),
(2, 'Justin Beiber', 'singer/b.png'),
(3, 'Selena Gomez', 'images/selenasong1.png'),
(4, 'Ariana Grande', 'image/ariana1.png'),
(5, 'Taylor swift', 'image/Taylor1.png'),
(6, 'Darshan Raval', 'image/darshan1.png'),
(7, 'Anuv  jain', 'image/anv1.png'),
(8, 'shreya ghoshal', 'image/shreya1.png'),
(9, 'Atif aslam', 'image/atif1.png'),
(10, 'Ali zafar', 'image/alixafar1.png'),
(11, 'asim azhar', 'image/asim1.png'),
(12, 'aima baig', 'image/aimabaig1.png');

-- --------------------------------------------------------

--
-- Table structure for table `songslisting`
--

CREATE TABLE `songslisting` (
  `Song_ID` int(11) NOT NULL,
  `Song_Name` varchar(55) DEFAULT NULL,
  `Song_Image` varchar(255) DEFAULT NULL,
  `Song_Description` varchar(255) DEFAULT NULL,
  `Song_Years` int(11) DEFAULT NULL,
  `Artist_Name` int(11) DEFAULT NULL,
  `Song_Category` int(11) DEFAULT NULL,
  `Song_Type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `songslisting`
--

INSERT INTO `songslisting` (`Song_ID`, `Song_Name`, `Song_Image`, `Song_Description`, `Song_Years`, `Artist_Name`, `Song_Category`, `Song_Type`) VALUES
(1, 'Company', 'song/com.png', 'company music by justin ', 1, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `songs_type`
--

CREATE TABLE `songs_type` (
  `Songs_Type_ID` int(11) NOT NULL,
  `Songs_Type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `songs_type`
--

INSERT INTO `songs_type` (`Songs_Type_ID`, `Songs_Type`) VALUES
(1, 'Audio'),
(2, 'Video');

-- --------------------------------------------------------

--
-- Table structure for table `song_cat`
--

CREATE TABLE `song_cat` (
  `Song_category_id` int(11) NOT NULL,
  `Song_category_Name` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `song_cat`
--

INSERT INTO `song_cat` (`Song_category_id`, `Song_category_Name`) VALUES
(1, 'Hollywood'),
(2, 'Bollywood');

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

CREATE TABLE `user_registration` (
  `User_ID` int(11) NOT NULL,
  `User_Name` varchar(55) DEFAULT NULL,
  `User_Email` varchar(55) DEFAULT NULL,
  `User_Image` varchar(255) DEFAULT NULL,
  `User_password` varchar(55) DEFAULT NULL,
  `User_Role` varchar(55) DEFAULT NULL,
  `User_Account_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_registration`
--

INSERT INTO `user_registration` (`User_ID`, `User_Name`, `User_Email`, `User_Image`, `User_password`, `User_Role`, `User_Account_status`) VALUES
(1, 'ali imran', 'ali@gmail.com', 'images/profile.png', 'aliimran', 'admin', 1),
(2, 'customer', 'customer@gmail.com', 'images/customer.png', 'customer', 'customer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `Years_ID` int(11) NOT NULL,
  `Years_numbers` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`Years_ID`, `Years_numbers`) VALUES
(1, 2024),
(2, 2023);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`Artist_ID`);

--
-- Indexes for table `songslisting`
--
ALTER TABLE `songslisting`
  ADD PRIMARY KEY (`Song_ID`),
  ADD KEY `Song_Years` (`Song_Years`),
  ADD KEY `Artist_Name` (`Artist_Name`),
  ADD KEY `Song_Category` (`Song_Category`),
  ADD KEY `Song_Type` (`Song_Type`);

--
-- Indexes for table `songs_type`
--
ALTER TABLE `songs_type`
  ADD PRIMARY KEY (`Songs_Type_ID`);

--
-- Indexes for table `song_cat`
--
ALTER TABLE `song_cat`
  ADD PRIMARY KEY (`Song_category_id`);

--
-- Indexes for table `user_registration`
--
ALTER TABLE `user_registration`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `User_Email` (`User_Email`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`Years_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `Artist_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `songslisting`
--
ALTER TABLE `songslisting`
  MODIFY `Song_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `songs_type`
--
ALTER TABLE `songs_type`
  MODIFY `Songs_Type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `song_cat`
--
ALTER TABLE `song_cat`
  MODIFY `Song_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_registration`
--
ALTER TABLE `user_registration`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `Years_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `songslisting`
--
ALTER TABLE `songslisting`
  ADD CONSTRAINT `songslisting_ibfk_1` FOREIGN KEY (`Song_Years`) REFERENCES `years` (`Years_ID`),
  ADD CONSTRAINT `songslisting_ibfk_2` FOREIGN KEY (`Artist_Name`) REFERENCES `artist` (`Artist_ID`),
  ADD CONSTRAINT `songslisting_ibfk_3` FOREIGN KEY (`Song_Category`) REFERENCES `song_cat` (`Song_category_id`),
  ADD CONSTRAINT `songslisting_ibfk_4` FOREIGN KEY (`Song_Type`) REFERENCES `songs_type` (`Songs_Type_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
