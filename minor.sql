-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2023 at 05:39 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minor`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(20) NOT NULL,
  `city_name` varchar(50) NOT NULL,
  `city_country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `city_name`, `city_country`) VALUES
(1, 'Delhi', 'India'),
(2, 'Mumbai', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `interested_users_properties`
--

CREATE TABLE `interested_users_properties` (
  `liked_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `prop_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interested_users_properties`
--

INSERT INTO `interested_users_properties` (`liked_id`, `user_id`, `prop_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `prop_id` int(20) NOT NULL,
  `prop_city_id` int(20) NOT NULL,
  `prop_Name` varchar(50) NOT NULL,
  `prop_address` text NOT NULL,
  `prop_desc` text NOT NULL,
  `prop_rent` int(11) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `prop_rating_food` float NOT NULL,
  `prop_rating_clean` float NOT NULL,
  `prop_rating_safety` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`prop_id`, `prop_city_id`, `prop_Name`, `prop_address`, `prop_desc`, `prop_rent`, `gender`, `prop_rating_food`, `prop_rating_clean`, `prop_rating_safety`) VALUES
(1, 1, 'Saxena\\\'s Paying Guest', 'H.No. 3958 Kaseru Walan, Pahar Ganj, New Delhi, Delhi 110055', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\\\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\\\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 5000, 'male', 3.5, 4, 4.8);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(12) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `college_name` varchar(50) NOT NULL,
  `dateRegister` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_name`, `user_email`, `password`, `phone`, `gender`, `college_name`, `dateRegister`) VALUES
(1, 'Manish', 'manish@gmail.com', '$2y$10$7DUIcKk8yxqtLypREV.3kON0a2fT9HzfHZY2OuDy0YS1yRcfa1Ktq', '9807890609', 'male', 'iit', '2022-11-30 09:27:36'),
(4, 'nikhil namdev', 'nikhil@gmail.com', '$2y$10$nrohoSrAkt6xRw2MYRRvEeXWcoh1XcronE4Plp6iSbyKmiE2.wjga', '7899787797', 'male', 'iiistu', '2022-12-01 04:39:30'),
(5, 'abc', 'abc@gmail.com', '$2y$10$8OOYJDX3deMkKbcv7MYGpeH2UJDjWNUsZzBGaQlT0b3SqUlTGzyfu', '6567767566', 'male', 'abc', '2022-12-01 05:02:42'),
(6, 'hari ', 'hari@gmail.com', '$2y$10$DLhNzOY8duzoddgiueywo.hi6/6oKysJbzs/CE4N.x1GkbYFEdKxq', '8980808880', 'male', 'iist', '2023-02-22 12:17:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `interested_users_properties`
--
ALTER TABLE `interested_users_properties`
  ADD PRIMARY KEY (`liked_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`prop_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `interested_users_properties`
--
ALTER TABLE `interested_users_properties`
  MODIFY `liked_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `prop_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
