-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 21, 2018 at 02:53 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.25-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railway_reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `d_payments1`
--

CREATE TABLE `d_payments1` (
  `user_id` varchar(255) NOT NULL,
  `passenger_id` int(11) NOT NULL DEFAULT '0',
  `price` int(11),
  `type` varchar(255),
  `email_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  `mobile` int(10) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d_payments1`
--

INSERT INTO `d_payments1` (`user_id`, `passenger_id`, `price`, `type`, `email_id`, `password`, `first_name`, `last_name`, `gender`, `age`, `mobile`, `city`) VALUES
('aaron.blaze@gmail.com', 1, 1000, 'Sleeper', 'aaron.blaze@gmail.com', '12345678', 'Aaron', 'Blaze', 'M', 35, 987654321, 'Mumbai'),
('kratos.warheart@gmail.com', 2, 2000, 'Three Tier', 'kratos.warheart@gmail.com', 'password', 'Kratos', 'Warheart', 'M', 30, 987654322, 'Mumbai'),
('rakshit.bhat@gmail.com', 5, 2500, 'Two Tier', 'rakshit.bhat@gmail.com', 'password', 'Rakshit', 'Bhat', 'M', 20, 123456789, 'Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `d_payments2`
--

CREATE TABLE `d_payments2` (
  `user_id` varchar(255) NOT NULL,
  `passenger_id` int(11) DEFAULT '0',
  `price` int(11),
  `type` varchar(255),
  `email_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  `mobile` int(10) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d_payments2`
--

INSERT INTO `d_payments2` (`user_id`, `passenger_id`, `price`, `type`, `email_id`, `password`, `first_name`, `last_name`, `gender`, `age`, `mobile`, `city`) VALUES
('pankaj.ajwani@gmail.com', 4, 1700, 'Sleeper', 'pankaj.ajwani@gmail.com', 'password', 'Pankaj', 'Ajwani', 'M', 20, 987654444, 'Delhi'),
('saail.chawande@gmail.com', 3, 1500, 'Two Tier', 'saail.chawande@gmail.com', 'password', 'Saahil', 'Chawande', 'F', 20, 987654333, 'Delhi');

-- --------------------------------------------------------

--
-- Table structure for table `h_user1`
--

CREATE TABLE `h_user1` (
  `email_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  `mobile` int(10) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `h_user1`
--

INSERT INTO `h_user1` (`email_id`, `password`, `first_name`, `last_name`, `gender`, `age`, `mobile`, `city`) VALUES
('aaron.blaze@gmail.com', '12345678', 'Aaron', 'Blaze', 'M', 35, 987654321, 'Mumbai'),
('kratos.warheart@gmail.com', 'password', 'Kratos', 'Warheart', 'M', 30, 987654322, 'Mumbai'),
('rakshit.bhat@gmail.com', 'password', 'Rakshit', 'Bhat', 'M', 20, 123456789, 'Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `h_user2`
--

CREATE TABLE `h_user2` (
  `email_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  `mobile` int(10) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `h_user2`
--

INSERT INTO `h_user2` (`email_id`, `password`, `first_name`, `last_name`, `gender`, `age`, `mobile`, `city`) VALUES
('pankaj.ajwani@gmail.com', 'password', 'Pankaj', 'Ajwani', 'M', 20, 987654444, 'Delhi'),
('saail.chawande@gmail.com', 'password', 'Saahil', 'Chawande', 'F', 20, 987654333, 'Delhi');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `pnr` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `booked_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`pnr`, `first_name`, `last_name`, `age`, `gender`, `booked_by`) VALUES
(1, 'Aaron', 'Blaze', 35, 'M', 'aaron.blaze@gmail.com'),
(2, 'Kratos', 'Warheart', 30, 'M', 'kratos.warheart@gmail.com'),
(3, 'Saahil', 'Chawande', 20, 'F', 'saail.chawande@gmail.com'),
(4, 'Pankaj', 'Ajwani', 20, 'M', 'pankaj.ajwani@gmail.com'),
(5, 'Rakshit', 'Bhat', 20, 'M', 'rakshit.bhat@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `user_id` varchar(255) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`user_id`, `passenger_id`, `price`, `type`) VALUES
('aaron.blaze@gmail.com', 1, 1000, 'Sleeper'),
('kratos.warheart@gmail.com', 2, 2000, 'Three Tier'),
('pankaj.ajwani@gmail.com', 4, 1700, 'Sleeper'),
('rakshit.bhat@gmail.com', 5, 2500, 'Two Tier'),
('saail.chawande@gmail.com', 3, 1500, 'Two Tier');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  `mobile` int(10) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email_id`, `password`, `first_name`, `last_name`, `gender`, `age`, `mobile`, `city`) VALUES
('aaron.blaze@gmail.com', '12345678', 'Aaron', 'Blaze', 'M', 35, 987654321, 'Mumbai'),
('kratos.warheart@gmail.com', 'password', 'Kratos', 'Warheart', 'M', 30, 987654322, 'Mumbai'),
('pankaj.ajwani@gmail.com', 'password', 'Pankaj', 'Ajwani', 'M', 20, 987654444, 'Delhi'),
('rakshit.bhat@gmail.com', 'password', 'Rakshit', 'Bhat', 'M', 20, 123456789, 'Mumbai'),
('saail.chawande@gmail.com', 'password', 'Saahil', 'Chawande', 'F', 20, 987654333, 'Delhi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `d_payments1`
--
ALTER TABLE `d_payments1`
  ADD PRIMARY KEY (`user_id`,`passenger_id`);

--
-- Indexes for table `d_payments2`
--
ALTER TABLE `d_payments2`
  ADD PRIMARY KEY (`user_id`,`email_id`);

--
-- Indexes for table `h_user1`
--
ALTER TABLE `h_user1`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `email_id` (`email_id`);

--
-- Indexes for table `h_user2`
--
ALTER TABLE `h_user2`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `email_id` (`email_id`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`pnr`),
  ADD UNIQUE KEY `booked_by` (`booked_by`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`user_id`,`passenger_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `passenger_id` (`passenger_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `email_id` (`email_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `pnr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `passenger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `passenger`
--
ALTER TABLE `passenger`
  ADD CONSTRAINT `passenger_ibfk_1` FOREIGN KEY (`booked_by`) REFERENCES `user` (`email_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`email_id`),
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`passenger_id`) REFERENCES `passenger` (`pnr`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
