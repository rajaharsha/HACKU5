-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2017 at 09:02 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hacku5`
--
CREATE DATABASE IF NOT EXISTS `hacku5` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hacku5`;

-- --------------------------------------------------------

--
-- Table structure for table `cu_domain_category`
--

CREATE TABLE `cu_domain_category` (
  `cid` int(10) NOT NULL,
  `domain_name` varchar(200) DEFAULT NULL,
  `domain_category` varchar(200) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cu_mode_url`
--

CREATE TABLE `cu_mode_url` (
  `mid` int(11) NOT NULL,
  `url_id` int(10) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `url_title` varchar(100) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cu_user_likes`
--

CREATE TABLE `cu_user_likes` (
  `lid` int(10) NOT NULL,
  `uid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `likes` tinyint(1) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cu_user_modes`
--

CREATE TABLE `cu_user_modes` (
  `mid` int(10) NOT NULL,
  `uid` int(11) NOT NULL,
  `mode_name` varchar(50) DEFAULT NULL,
  `mode_likes` int(5) DEFAULT NULL,
  `mode_share` varchar(5) DEFAULT NULL,
  `mode_active` varchar(5) DEFAULT NULL,
  `mode_notes` varchar(500) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `oauth_provider` varchar(255) NOT NULL,
  `oauth_uid` varchar(255) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `locale` varchar(10) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `fb_id` varchar(100) DEFAULT NULL,
  `fb_name` varchar(60) DEFAULT NULL,
  `user_activity_flag` tinyint(1) DEFAULT NULL,
  `last_login_date` date NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cu_domain_category`
--
ALTER TABLE `cu_domain_category`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `domain_name_uk` (`domain_name`);

--
-- Indexes for table `cu_mode_url`
--
ALTER TABLE `cu_mode_url`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `cu_user_likes`
--
ALTER TABLE `cu_user_likes`
  ADD PRIMARY KEY (`lid`),
  ADD KEY `cu_user_likes_mid_fk` (`mid`);

--
-- Indexes for table `cu_user_modes`
--
ALTER TABLE `cu_user_modes`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `cu_user_modes_uid_fk` (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cu_domain_category`
--
ALTER TABLE `cu_domain_category`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cu_user_likes`
--
ALTER TABLE `cu_user_likes`
  MODIFY `lid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cu_user_modes`
--
ALTER TABLE `cu_user_modes`
  MODIFY `mid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cu_mode_url`
--
ALTER TABLE `cu_mode_url`
  ADD CONSTRAINT `cu_mode_url_mid_fk` FOREIGN KEY (`mid`) REFERENCES `cu_user_modes` (`mid`);

--
-- Constraints for table `cu_user_likes`
--
ALTER TABLE `cu_user_likes`
  ADD CONSTRAINT `cu_user_likes_mid_fk` FOREIGN KEY (`mid`) REFERENCES `cu_user_modes` (`mid`),
  ADD CONSTRAINT `cu_user_likes_uid_fk` FOREIGN KEY (`mid`) REFERENCES `users` (`id`);

--
-- Constraints for table `cu_user_modes`
--
ALTER TABLE `cu_user_modes`
  ADD CONSTRAINT `cu_user_modes_uid_fk` FOREIGN KEY (`uid`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
