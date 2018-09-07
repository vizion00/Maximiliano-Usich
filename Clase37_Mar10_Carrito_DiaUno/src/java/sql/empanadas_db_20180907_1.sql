-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 07, 2018 at 01:00 PM
-- Server version: 10.1.26-MariaDB-0+deb9u1
-- PHP Version: 7.0.30-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `empanadas_db`
--
CREATE DATABASE IF NOT EXISTS `empanadas_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `empanadas_db`;

-- --------------------------------------------------------

--
-- Table structure for table `chango`
--

CREATE TABLE `chango` (
  `ch_id` int(11) NOT NULL,
  `ch_total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `chango`
--

INSERT INTO `chango` (`ch_id`, `ch_total`) VALUES
(44, 0),
(45, 0),
(46, 0);

-- --------------------------------------------------------

--
-- Table structure for table `chango_items`
--

CREATE TABLE `chango_items` (
  `ch_it` int(11) NOT NULL,
  `ch_it_ch_id` int(11) NOT NULL,
  `ch_it_pro_id` int(11) NOT NULL,
  `ch_it_cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `chango_items`
--

INSERT INTO `chango_items` (`ch_it`, `ch_it_ch_id`, `ch_it_pro_id`, `ch_it_cantidad`) VALUES
(1, 44, 1002, 6),
(2, 44, 1003, 6),
(3, 45, 1004, 12),
(4, 45, 1001, 12),
(5, 46, 1001, 24);

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `pro_id` int(11) NOT NULL,
  `pro_nombre` varchar(255) COLLATE utf8_bin NOT NULL,
  `pro_descripcion` text COLLATE utf8_bin NOT NULL,
  `pro_precio` double NOT NULL,
  `pro_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`pro_id`, `pro_nombre`, `pro_descripcion`, `pro_precio`, `pro_stock`) VALUES
(1001, 'Empanada de Pollo', 'Pollo con verduras, aji, cebolla', 30, 100),
(1002, 'Empanada de Carne', 'carne cortada a cuchillo', 40, 200),
(1003, 'Empanada de Verdura', 'Acelga, Espinaca, Cebolla, Ajo', 70, 500),
(1004, 'Empanada de Mermelada', 'Empanada dulce, atenti al postre', 50, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chango`
--
ALTER TABLE `chango`
  ADD PRIMARY KEY (`ch_id`);

--
-- Indexes for table `chango_items`
--
ALTER TABLE `chango_items`
  ADD PRIMARY KEY (`ch_it`),
  ADD KEY `ch_it_ch_id` (`ch_it_ch_id`),
  ADD KEY `ch_it_pro_id` (`ch_it_pro_id`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`pro_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chango`
--
ALTER TABLE `chango`
  MODIFY `ch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `chango_items`
--
ALTER TABLE `chango_items`
  MODIFY `ch_it` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1005;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `chango_items`
--
ALTER TABLE `chango_items`
  ADD CONSTRAINT `chango_items_ibfk_1` FOREIGN KEY (`ch_it_ch_id`) REFERENCES `chango` (`ch_id`),
  ADD CONSTRAINT `chango_items_ibfk_2` FOREIGN KEY (`ch_it_pro_id`) REFERENCES `productos` (`pro_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
