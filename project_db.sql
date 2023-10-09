-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2023 at 04:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentID` int(11) NOT NULL,
  `commentContent` longtext NOT NULL,
  `userID` int(11) NOT NULL,
  `topicID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentID`, `commentContent`, `userID`, `topicID`) VALUES
(5, 'rrrrrrrrrrrrr', 5, 9),
(6, '2', 5, 9),
(7, '2', 5, 9),
(8, '2', 5, 9),
(9, '4', 5, 9),
(10, 'ใหม้', 5, 9),
(11, 'ไม่', 5, 9),
(12, '2', 5, 6),
(13, 'rrrrrrrrrrrrr', 6, 3),
(14, 'lgiguoh', 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `topicID` int(11) NOT NULL,
  `topicName` varchar(50) NOT NULL,
  `topicContent` longtext DEFAULT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`topicID`, `topicName`, `topicContent`, `userID`) VALUES
(3, 'อยากนอน', 'เกิน', 4),
(4, 'เพื่อ', 'ไร', 5),
(5, 'โคตร', 'นอนไม่หลับ', 5),
(6, 'วิธีทำเว็บ', 'นอนไม่หลับ', 5),
(7, 'อะไร', 'ไม่มี', 5),
(8, 'อยากนอน', 'ไม่มี', 5),
(9, 'วิธีทำเว็บ', 'ไร', 5),
(10, 'โคตร', 'ไร', 5),
(11, 'วิธีทำเว็บ', 'ไม่มี', 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userPassword` varchar(30) NOT NULL,
  `userEmail` varchar(50) NOT NULL,
  `fName` varchar(20) NOT NULL,
  `lName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `userName`, `userPassword`, `userEmail`, `fName`, `lName`) VALUES
(1, 'NatthawatPM', '2f41454b7996f159796fc5315125d8', 'natthawat.pm@rmuti.ac.th', 'Natthawat', 'Pomsuwan'),
(2, 'a', 'aaaaaaaa', 'Admin1@email.com', 'a', 'a'),
(3, 't', 'tttttttt', 't@email.com', 't', 't'),
(4, 'r', 'rrrrrrrr', 'r@email.com', 'r', 'r'),
(5, '5', '55555555', '5@email.com', '5', '5'),
(6, 'NatthawatPM', '11111111', 'natthawat.pm@rmuti.ac.th', 'Natthawat', 'Pomsuwan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `topicID` (`topicID`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`topicID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `topicID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`topicID`) REFERENCES `topics` (`topicID`);

--
-- Constraints for table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
