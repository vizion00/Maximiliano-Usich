-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 07, 2018 at 12:07 PM
-- Server version: 10.1.26-MariaDB-0+deb9u1
-- PHP Version: 7.0.30-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Maridajes`
--
CREATE DATABASE IF NOT EXISTS `Maridajes` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `Maridajes`;

-- --------------------------------------------------------

--
-- Table structure for table `MAC`
--

CREATE TABLE `MAC` (
  `Precio` float NOT NULL,
  `Cepa` varchar(30) NOT NULL,
  `Producto` varchar(100) NOT NULL,
  `Bodega` varchar(100) NOT NULL,
  `WineMarker-Enologor` varchar(100) NOT NULL,
  `Provincia` varchar(100) NOT NULL,
  `Region` varchar(100) NOT NULL,
  `Caracteristicas` varchar(6000) NOT NULL,
  `Elaboracion` varchar(6000) NOT NULL,
  `Comparte` varchar(6000) NOT NULL,
  `Quesos` varchar(100) NOT NULL,
  `MENÚ` varchar(10) NOT NULL,
  `Description Menu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `MAD`
--

CREATE TABLE `MAD` (
  `Precio` float NOT NULL,
  `Cepa` varchar(30) NOT NULL,
  `Producto` varchar(100) NOT NULL,
  `Bodega` varchar(100) NOT NULL,
  `WineMarker-Enologor` varchar(100) NOT NULL,
  `Provincia` varchar(100) NOT NULL,
  `Region` varchar(100) NOT NULL,
  `Caracteristicas` varchar(6000) NOT NULL,
  `Elaboracion` varchar(6000) NOT NULL,
  `Comparte` varchar(6000) NOT NULL,
  `Quesos` varchar(100) NOT NULL,
  `MENÚ` varchar(10) NOT NULL,
  `Description Menu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `MIC`
--

CREATE TABLE `MIC` (
  `Precio` float NOT NULL,
  `Cepa` varchar(30) NOT NULL,
  `Producto` varchar(100) NOT NULL,
  `Bodega` varchar(100) NOT NULL,
  `WineMarker-Enologor` varchar(100) NOT NULL,
  `Provincia` varchar(100) NOT NULL,
  `Region` varchar(100) NOT NULL,
  `Caracteristicas` varchar(6000) NOT NULL,
  `Elaboracion` varchar(6000) NOT NULL,
  `Comparte` varchar(6000) NOT NULL,
  `Quesos` varchar(100) NOT NULL,
  `MENÚ` varchar(10) NOT NULL,
  `Description Menu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `MPD`
--

CREATE TABLE `MPD` (
  `MPD_Precio` float NOT NULL,
  `MPD_Cepa` varchar(30) NOT NULL,
  `MPD_Producto` varchar(100) NOT NULL,
  `MPD_Bodega` varchar(100) NOT NULL,
  `MPD_WineMarker-Enologor` varchar(100) NOT NULL,
  `MPD_Provincia` varchar(100) NOT NULL,
  `MPD_Region` varchar(100) NOT NULL,
  `MPD_Caracteristicas` text NOT NULL,
  `MPD_Elaboracion` text NOT NULL,
  `MPD_Comparte` text NOT NULL,
  `Quesos` varchar(100) NOT NULL,
  `MPD_MENU` varchar(10) NOT NULL,
  `MPD_Description Menu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Database: `academia_db`
--
CREATE DATABASE IF NOT EXISTS `academia_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `academia_db`;

-- --------------------------------------------------------

--
-- Table structure for table `cursos`
--

CREATE TABLE `cursos` (
  `cur_id` int(11) NOT NULL,
  `cur_nombre` varchar(255) COLLATE utf8_bin NOT NULL,
  `cur_precio` double NOT NULL,
  `cur_cant_clases` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `cursos`
--

INSERT INTO `cursos` (`cur_id`, `cur_nombre`, `cur_precio`, `cur_cant_clases`) VALUES
(1, 'Ingles I', 3000, 12),
(2, 'Chino Mandarin I', 100, 20),
(3, 'Electiricidad I', 600, 30),
(4, 'Programacion I', 1000, 500),
(5, 'Origami', 10, 1),
(6, 'Bachata', 200, 3),
(7, 'Tango', 3333, 44444),
(8, 'Carpinteria', 1000, 16),
(9, 'Arqueria', 5000, 25),
(10, 'Cocina I ', 3098, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`cur_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `cur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;--
-- Database: `bazar_db`
--
CREATE DATABASE IF NOT EXISTS `bazar_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `bazar_db`;

-- --------------------------------------------------------

--
-- Table structure for table `changuito_items`
--

CREATE TABLE `changuito_items` (
  `ch_it_id` int(11) NOT NULL,
  `ch_it_ch_id` int(11) NOT NULL,
  `ch_it_pro_id` int(11) NOT NULL,
  `ch_it_cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `changuito_items`
--

INSERT INTO `changuito_items` (`ch_it_id`, `ch_it_ch_id`, `ch_it_pro_id`, `ch_it_cantidad`) VALUES
(1, 2, 4, 2),
(2, 2, 3, 10),
(3, 1, 1, 20),
(4, 1, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `changuitos`
--

CREATE TABLE `changuitos` (
  `ch_id` int(11) NOT NULL,
  `ch_total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `changuitos`
--

INSERT INTO `changuitos` (`ch_id`, `ch_total`) VALUES
(1, 100),
(2, 200);

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `pro_id` int(11) NOT NULL,
  `pro_nombre` varchar(255) COLLATE utf8_bin NOT NULL,
  `pro_descripcion` text COLLATE utf8_bin NOT NULL,
  `pro_precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`pro_id`, `pro_nombre`, `pro_descripcion`, `pro_precio`) VALUES
(1, 'Mate Madera', 'Mate muy ameno y calido para tomar en grupo.', 200),
(2, 'Mate Silicona', 'Mate Urbano, tipico de ciudades con horas pico y tiempos cortos. No necesita ser curado', 500),
(3, 'Mate Calabaza', 'Tipico mate simple con poca yerba.', 300),
(4, 'Mate Asta', 'Mate que no se te rompe nin por casualidad, ni se pudre, hasta podes pararte arriba.', 1000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `changuito_items`
--
ALTER TABLE `changuito_items`
  ADD PRIMARY KEY (`ch_it_id`),
  ADD KEY `ch_it_ch_id` (`ch_it_ch_id`),
  ADD KEY `ch_it_pro_id` (`ch_it_pro_id`);

--
-- Indexes for table `changuitos`
--
ALTER TABLE `changuitos`
  ADD PRIMARY KEY (`ch_id`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`pro_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `changuito_items`
--
ALTER TABLE `changuito_items`
  MODIFY `ch_it_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `changuitos`
--
ALTER TABLE `changuitos`
  MODIFY `ch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `changuito_items`
--
ALTER TABLE `changuito_items`
  ADD CONSTRAINT `changuito_items_ibfk_1` FOREIGN KEY (`ch_it_ch_id`) REFERENCES `changuitos` (`ch_id`),
  ADD CONSTRAINT `changuito_items_ibfk_2` FOREIGN KEY (`ch_it_pro_id`) REFERENCES `productos` (`pro_id`);
--
-- Database: `bosques_db`
--
CREATE DATABASE IF NOT EXISTS `bosques_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bosques_db`;

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `prod_id` int(11) NOT NULL,
  `prod_nombre` varchar(255) NOT NULL,
  `prod_precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`prod_id`, `prod_nombre`, `prod_precio`) VALUES
(1, 'Armario', 5500),
(2, 'Comoda', 2500),
(3, 'Cama', 1800),
(4, 'Bajo Mesada', 2800);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`prod_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;--
-- Database: `capacitaciones_db`
--
CREATE DATABASE IF NOT EXISTS `capacitaciones_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `capacitaciones_db`;

-- --------------------------------------------------------

--
-- Table structure for table `cursos`
--

CREATE TABLE `cursos` (
  `cu_id` int(11) NOT NULL,
  `cu_nombre` varchar(255) COLLATE utf8_bin NOT NULL,
  `cu_reuniones` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `cursos`
--

INSERT INTO `cursos` (`cu_id`, `cu_nombre`, `cu_reuniones`) VALUES
(1, 'Artes Marciales Mixtas', 400),
(2, 'Ingles I', 36),
(3, 'Lenguaje Simbolico', 40),
(4, 'Papiroflexia', 12),
(5, 'Seguridad de Redes Avanzado', 8),
(6, 'Fotografia I', 120),
(7, 'Java Avanzado Web I', 86),
(8, 'HTML y CSS I', 800);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`cu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `cu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;--
-- Database: `chefs`
--
CREATE DATABASE IF NOT EXISTS `chefs` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `chefs`;

-- --------------------------------------------------------

--
-- Table structure for table `cocineros`
--

CREATE TABLE `cocineros` (
  `coc_id` int(11) NOT NULL,
  `coc_nombre` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `cocineros`
--

INSERT INTO `cocineros` (`coc_id`, `coc_nombre`) VALUES
(1, 'Maru Botana'),
(2, 'Rodriguez Palacios'),
(3, 'GAto Dumas'),
(4, 'Gordons Ramsi'),
(6, 'Dona petrona'),
(7, 'Sumo'),
(8, 'Kato');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cocineros`
--
ALTER TABLE `cocineros`
  ADD PRIMARY KEY (`coc_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cocineros`
--
ALTER TABLE `cocineros`
  MODIFY `coc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;--
-- Database: `dbrest`
--
CREATE DATABASE IF NOT EXISTS `dbrest` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbrest`;

-- --------------------------------------------------------

--
-- Table structure for table `personas`
--

CREATE TABLE `personas` (
  `per_id` int(11) NOT NULL,
  `per_nombre` varchar(250) NOT NULL,
  `per_email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personas`
--

INSERT INTO `personas` (`per_id`, `per_nombre`, `per_email`) VALUES
(2, 'Marcelo', 'marcail'),
(3, 'Victoria', 'vicky@gmail'),
(7, 'Simona', 'simo@gmail'),
(23, 'Viviana', 'suarez@gmail.com'),
(24, 'Anastacia', 'ver@gmail.com'),
(25, 'Rene', 'larana@gmail'),
(26, 'wili ex mac', 'pen@asus'),
(27, 'Naty', 'nata_bici@gmail.com'),
(29, 'Carolina', 'caroladiseos@');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`per_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `personas`
--
ALTER TABLE `personas`
  MODIFY `per_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;--
-- Database: `distribuidora_db`
--
CREATE DATABASE IF NOT EXISTS `distribuidora_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `distribuidora_db`;

-- --------------------------------------------------------

--
-- Table structure for table `golosinas`
--

CREATE TABLE `golosinas` (
  `gol_id` int(11) NOT NULL,
  `gol_titulo` varchar(255) COLLATE utf8_bin NOT NULL,
  `gol_descripcion` text COLLATE utf8_bin NOT NULL,
  `gol_precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `golosinas`
--

INSERT INTO `golosinas` (`gol_id`, `gol_titulo`, `gol_descripcion`, `gol_precio`) VALUES
(1, 'Alfajor', 'Capitan del Espacio', 25),
(2, 'Topolin Sopresa', 'Sorpresa', 300),
(8, 'guinda', 'masa fina para mara', 266),
(9, 'Chupetin con Corazon Chicle', 'Copito', 30),
(12, 'caramelito', 'sugus', 15),
(14, 'kitkat', 'tipo rodesia', 200),
(15, 'Mr Pop', 'chupetin El', 555),
(16, 'Nerds 222', 'de nosotros', 999),
(17, 'Alfajor Sito', 'Capitan del Espacio', 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `golosinas`
--
ALTER TABLE `golosinas`
  ADD PRIMARY KEY (`gol_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `golosinas`
--
ALTER TABLE `golosinas`
  MODIFY `gol_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;--
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
  MODIFY `ch_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chango_items`
--
ALTER TABLE `chango_items`
  MODIFY `ch_it` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `chango_items`
--
ALTER TABLE `chango_items`
  ADD CONSTRAINT `chango_items_ibfk_1` FOREIGN KEY (`ch_it_ch_id`) REFERENCES `chango` (`ch_id`),
  ADD CONSTRAINT `chango_items_ibfk_2` FOREIGN KEY (`ch_it_pro_id`) REFERENCES `productos` (`pro_id`);
--
-- Database: `farmacia_db`
--
CREATE DATABASE IF NOT EXISTS `farmacia_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `farmacia_db`;

-- --------------------------------------------------------

--
-- Table structure for table `medicamentos`
--

CREATE TABLE `medicamentos` (
  `med_id` int(11) NOT NULL,
  `med_nombre` varchar(255) COLLATE utf8_bin NOT NULL,
  `med_precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `medicamentos`
--

INSERT INTO `medicamentos` (`med_id`, `med_nombre`, `med_precio`) VALUES
(1, 'Cafiaspirina', 230),
(2, 'Ratisalil', 5000),
(3, 'Actron', 4000),
(4, 'Bic Vaporu', 500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD PRIMARY KEY (`med_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `medicamentos`
--
ALTER TABLE `medicamentos`
  MODIFY `med_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;--
-- Database: `gestion_ventas_db`
--
CREATE DATABASE IF NOT EXISTS `gestion_ventas_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `gestion_ventas_db`;

-- --------------------------------------------------------

--
-- Table structure for table `ventas`
--

CREATE TABLE `ventas` (
  `ven_id` int(11) NOT NULL,
  `ven_numero` int(11) NOT NULL,
  `ven_total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ventas`
--

INSERT INTO `ventas` (`ven_id`, `ven_numero`, `ven_total`) VALUES
(1, 202020, 1500),
(2, 303030, 250),
(3, 404040, 1234),
(4, 505050, 7000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`ven_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ventas`
--
ALTER TABLE `ventas`
  MODIFY `ven_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;--
-- Database: `labiciloca_db`
--
CREATE DATABASE IF NOT EXISTS `labiciloca_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `labiciloca_db`;

-- --------------------------------------------------------

--
-- Table structure for table `compra`
--

CREATE TABLE `compra` (
  `com_id` int(11) NOT NULL,
  `com_total` double NOT NULL,
  `com_usu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `compra_item`
--

CREATE TABLE `compra_item` (
  `com_it_id` int(11) NOT NULL,
  `com_id_com_id` int(11) NOT NULL,
  `com_it_pro_id` int(11) NOT NULL,
  `com_it_cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `pro_id` int(11) NOT NULL,
  `pro_nombre` varchar(255) NOT NULL,
  `pro_precio` double NOT NULL,
  `pro_imagen` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`pro_id`, `pro_nombre`, `pro_precio`, `pro_imagen`) VALUES
(1, 'Bicicleta', 15000, 'data:image/jpeg;base64,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');
INSERT INTO `productos` (`pro_id`, `pro_nombre`, `pro_precio`, `pro_imagen`) VALUES
(3, 'casco', 1000, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAYABgAAD//gA7Q1JFQVRPUjogZ2QtanBlZyB2MS4wICh1c2luZyBJSkcgSlBFRyB2NjIpLCBxdWFsaXR5ID0gOTAK/9sAQwADAgIDAgIDAwMDBAMDBAUIBQUEBAUKBwcGCAwKDAwLCgsLDQ4SEA0OEQ4LCxAWEBETFBUVFQwPFxgWFBgSFBUU/9sAQwEDBAQFBAUJBQUJFA0LDRQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQU/8AAEQgDIAMgAwERAAIRAQMRAf/EAB8AAAEFAQEBAQEBAAAAAAAAAAABAgMEBQYHCAkKC//EALUQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+v/EAB8BAAMBAQEBAQEBAQEAAAAAAAABAgMEBQYHCAkKC//EALURAAIBAgQEAwQHBQQEAAECdwABAgMRBAUhMQYSQVEHYXETIjKBCBRCkaGxwQkjM1LwFWJy0QoWJDThJfEXGBkaJicoKSo1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoKDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uLj5OXm5+jp6vLz9PX29/j5+v/aAAwDAQACEQMRAD8A/VOgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgBrOqD5mA+tG+wJN7FaXU7WL71xGP+BVqqNSW0TZUKstokDa9YL/y3B+gNaLDVX0NlhKz+yRnxJYD/lof++TVLCVexSwVZ9BjeKLJenmH6Cq+qVClgazK0vjG3RiEhkcepIH+NWsDUa3RtHLaj3kIvjO3OQYHBHuKr6hPuN5bU6SF/wCEyt/+eL/99UfUZ9x/2bP+YT/hMrf/AJ4N/wB9UfUZdw/s2f8AML/wmVv/AM8X/wC+qPqM+4v7NqfzCjxja94nH4ij6jPuL+zancevjCzPVJV/Af41LwVToyXl1XpYlXxTp7/8tGX6qazeDrLoZvAV10Jk8Rae/wDy8qPqDUPC1V9kzeDrr7JMmsWT/duYvxaodCot4mbw9ZbxZOl3A/3Z42+jCs3CS3Rk6c1vEkVg3SpIHUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAF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IlhjlB6h1BpNXVmBz9x8NfCV3drdTeGdIkuVORO1lHvH0bGazdKm94ofM7WuU9b+EHgrxJGyap4X0vUFYYIubVJMj/gQNRKhSlvFApNbM821P9hb4F6vd/aZvh3pKS53HyYzGpPuqkD9Kj6vDZXXzf8AmPmZ6D4B+CPgb4X2zQeF/DOn6PG3LfZoFUt9SBz071cKFOk3KK1Jbct2dz0roAWgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgBpNAAc0AKOlAC0AFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAhOKAENACUAOHSgBaACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAQ9KAG4zQAuDQAoGBQAtABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFACAYoAWgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgSCgYUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFAmIOpoBC0DCgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAQDFAC0AFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQB//9k=');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `compra_item`
--
ALTER TABLE `compra_item`
  ADD PRIMARY KEY (`com_it_id`),
  ADD KEY `compra_item_compra_FK` (`com_id_com_id`),
  ADD KEY `compra_item_productos` (`com_it_pro_id`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`pro_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `compra`
--
ALTER TABLE `compra`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `compra_item`
--
ALTER TABLE `compra_item`
  MODIFY `com_it_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `compra_item`
--
ALTER TABLE `compra_item`
  ADD CONSTRAINT `compra_item_compra_FK` FOREIGN KEY (`com_id_com_id`) REFERENCES `compra` (`com_id`),
  ADD CONSTRAINT `compra_item_productos` FOREIGN KEY (`com_it_pro_id`) REFERENCES `productos` (`pro_id`);
--
-- Database: `maestro`
--
CREATE DATABASE IF NOT EXISTS `maestro` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `maestro`;

-- --------------------------------------------------------

--
-- Table structure for table `detalle`
--

CREATE TABLE `detalle` (
  `det_id` int(11) NOT NULL,
  `det_mae_id` int(11) NOT NULL,
  `det_prod_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `detalle`
--

INSERT INTO `detalle` (`det_id`, `det_mae_id`, `det_prod_id`) VALUES
(1, 1, 2),
(3, 10, 1),
(4, 10, 2),
(5, 11, 45),
(6, 11, 54);

-- --------------------------------------------------------

--
-- Table structure for table `maestro`
--

CREATE TABLE `maestro` (
  `mae_id` int(11) NOT NULL,
  `mae_cliente_id` int(11) NOT NULL,
  `mae_fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `maestro`
--

INSERT INTO `maestro` (`mae_id`, `mae_cliente_id`, `mae_fecha`) VALUES
(1, 2, '2018-04-17 16:58:58'),
(2, 1, '2018-04-17 17:10:52'),
(3, 1, '2018-04-17 17:11:10'),
(4, 1, '2018-04-17 17:12:35'),
(5, 3, '2018-04-17 17:15:40'),
(6, 1, '2018-04-17 17:18:08'),
(7, 1, '2018-04-17 17:19:06'),
(8, 1, '2018-04-17 17:20:02'),
(9, 1, '2018-04-17 17:28:46'),
(10, 1, '2018-04-17 17:29:47'),
(11, 44, '2018-04-17 17:30:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`det_id`),
  ADD KEY `maestro_detalle_FK` (`det_mae_id`);

--
-- Indexes for table `maestro`
--
ALTER TABLE `maestro`
  ADD PRIMARY KEY (`mae_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detalle`
--
ALTER TABLE `detalle`
  MODIFY `det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `maestro`
--
ALTER TABLE `maestro`
  MODIFY `mae_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `maestro_detalle_FK` FOREIGN KEY (`det_mae_id`) REFERENCES `maestro` (`mae_id`);
--
-- Database: `menu_db`
--
CREATE DATABASE IF NOT EXISTS `menu_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `menu_db`;

-- --------------------------------------------------------

--
-- Table structure for table `comidas`
--

CREATE TABLE `comidas` (
  `com_id` int(11) NOT NULL,
  `com_titulo` varchar(255) COLLATE utf8_bin NOT NULL,
  `com_descripcion` text COLLATE utf8_bin NOT NULL,
  `com_precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `comidas`
--

INSERT INTO `comidas` (`com_id`, `com_titulo`, `com_descripcion`, `com_precio`) VALUES
(3, 'Fugazzeta', 'Jamon y Queso,,... Y muchos morrones y aceitunas', 500),
(9, 'copos', 'choco y dulce', 500),
(11, 'talitas', 'largas larguitas', 500),
(12, 'Empanadas', 'Criollas', 500),
(13, 'Pastelitos', 'Membrillo', 500),
(14, 'Pastelitos BB', 'Batata', 500),
(16, 'Tarta Ricota', 'Mucha Ricota Fresca y Rica', 500),
(18, 'tarta de coco', 'y dulce dd leche', 754);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comidas`
--
ALTER TABLE `comidas`
  ADD PRIMARY KEY (`com_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comidas`
--
ALTER TABLE `comidas`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;--
-- Database: `muebleria_db`
--
CREATE DATABASE IF NOT EXISTS `muebleria_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `muebleria_db`;

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `cli_id` int(11) NOT NULL,
  `cli_nombre` varchar(255) COLLATE utf8_bin NOT NULL,
  `cli_dni` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`cli_id`, `cli_nombre`, `cli_dni`) VALUES
(1, 'Guillermo', 20200200),
(2, 'Ariel Núñez', 23000003),
(4, 'Martin', 23000004),
(5, 'Juan', 33001100),
(6, 'Maria', 33333333);

-- --------------------------------------------------------

--
-- Table structure for table `muebles`
--

CREATE TABLE `muebles` (
  `mue_id` int(11) NOT NULL,
  `mue_tipo` varchar(255) COLLATE utf8_bin NOT NULL,
  `mue_precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `muebles`
--

INSERT INTO `muebles` (`mue_id`, `mue_tipo`, `mue_precio`) VALUES
(1, 'Bajo Mesada', 2000),
(2, 'Esquinero', 1000),
(3, 'Mesa de Luz', 1500),
(4, 'Sillon', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `pedidos`
--

CREATE TABLE `pedidos` (
  `ped_cli_id` int(11) NOT NULL,
  `ped_mue_id` int(11) NOT NULL,
  `ped_fecha_entrega` datetime NOT NULL,
  `ped_cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `pedidos`
--

INSERT INTO `pedidos` (`ped_cli_id`, `ped_mue_id`, `ped_fecha_entrega`, `ped_cantidad`) VALUES
(4, 3, '2018-04-30 00:00:00', 8),
(2, 1, '2018-04-29 00:00:00', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cli_id`),
  ADD UNIQUE KEY `clientes_dni_UK` (`cli_dni`);

--
-- Indexes for table `muebles`
--
ALTER TABLE `muebles`
  ADD PRIMARY KEY (`mue_id`);

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD KEY `clientes_pedidos_FK` (`ped_cli_id`),
  ADD KEY `muebles_pedidos_FK` (`ped_mue_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `muebles`
--
ALTER TABLE `muebles`
  MODIFY `mue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `clientes_pedidos_FK` FOREIGN KEY (`ped_cli_id`) REFERENCES `clientes` (`cli_id`),
  ADD CONSTRAINT `muebles_pedidos_FK` FOREIGN KEY (`ped_mue_id`) REFERENCES `muebles` (`mue_id`);
--
-- Database: `muebles_vagos_db`
--
CREATE DATABASE IF NOT EXISTS `muebles_vagos_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `muebles_vagos_db`;

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `cli_id` int(11) NOT NULL,
  `cli_nombre` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`cli_id`, `cli_nombre`) VALUES
(1, 'Marcela'),
(2, 'Gimena'),
(3, 'Julieta'),
(4, 'Tomassa');

-- --------------------------------------------------------

--
-- Table structure for table `muebles`
--

CREATE TABLE `muebles` (
  `mue_id` int(11) NOT NULL,
  `mue_origen` text COLLATE utf8_bin NOT NULL,
  `mue_nombre` varchar(255) COLLATE utf8_bin NOT NULL,
  `mue_precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `muebles`
--

INSERT INTO `muebles` (`mue_id`, `mue_origen`, `mue_nombre`, `mue_precio`) VALUES
(1, 'http://barszachmuebles.com.ar/producto/mesa-auxiliar-3/', 'mesa vidrio', 3000),
(2, 'http://www.silleriaagal.com/project/sillones/', 'Silla Mallorca', 2200);

-- --------------------------------------------------------

--
-- Table structure for table `pedidos_online`
--

CREATE TABLE `pedidos_online` (
  `ped_id` int(11) NOT NULL,
  `ped_cli_id` int(11) NOT NULL,
  `ped_mue_id` int(11) NOT NULL,
  `ped_cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `pedidos_online`
--

INSERT INTO `pedidos_online` (`ped_id`, `ped_cli_id`, `ped_mue_id`, `ped_cantidad`) VALUES
(1, 4, 2, 22),
(2, 3, 2, 33),
(3, 4, 1, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cli_id`);

--
-- Indexes for table `muebles`
--
ALTER TABLE `muebles`
  ADD PRIMARY KEY (`mue_id`);

--
-- Indexes for table `pedidos_online`
--
ALTER TABLE `pedidos_online`
  ADD PRIMARY KEY (`ped_id`),
  ADD KEY `pedido_cli_FK` (`ped_cli_id`),
  ADD KEY `pedido_MUE_FK` (`ped_mue_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `muebles`
--
ALTER TABLE `muebles`
  MODIFY `mue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pedidos_online`
--
ALTER TABLE `pedidos_online`
  MODIFY `ped_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `pedidos_online`
--
ALTER TABLE `pedidos_online`
  ADD CONSTRAINT `pedido_MUE_FK` FOREIGN KEY (`ped_mue_id`) REFERENCES `muebles` (`mue_id`),
  ADD CONSTRAINT `pedido_cli_FK` FOREIGN KEY (`ped_cli_id`) REFERENCES `clientes` (`cli_id`);
--
-- Database: `pasteleria_db`
--
CREATE DATABASE IF NOT EXISTS `pasteleria_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `pasteleria_db`;

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `cli_id` int(11) NOT NULL,
  `cli_nombre` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`cli_id`, `cli_nombre`) VALUES
(1, 'Marcela'),
(2, 'Carla'),
(3, 'Diana');

-- --------------------------------------------------------

--
-- Table structure for table `franjas_horarias`
--

CREATE TABLE `franjas_horarias` (
  `fra_id` int(11) NOT NULL,
  `fra_nomobre` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `franjas_horarias`
--

INSERT INTO `franjas_horarias` (`fra_id`, `fra_nomobre`) VALUES
(1, 'Tarde'),
(2, 'Noche'),
(3, '18:00 a 21:00'),
(4, '07:00 a 09:00');

-- --------------------------------------------------------

--
-- Table structure for table `pedidos`
--

CREATE TABLE `pedidos` (
  `ped_cli_id` int(11) NOT NULL,
  `ped_pro_id` int(11) NOT NULL,
  `ped_fecha_entrega` date NOT NULL,
  `ped_horario_entrega` int(11) NOT NULL,
  `ped_cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `pedidos`
--

INSERT INTO `pedidos` (`ped_cli_id`, `ped_pro_id`, `ped_fecha_entrega`, `ped_horario_entrega`, `ped_cantidad`) VALUES
(1, 2, '2018-05-16', 1, 1),
(1, 4, '2018-05-15', 3, 22),
(3, 2, '2018-05-16', 3, 22),
(3, 3, '2018-05-16', 4, 6),
(3, 4, '2018-05-16', 4, 33);

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `pro_id` int(11) NOT NULL,
  `pro_nombre` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`pro_id`, `pro_nombre`) VALUES
(1, 'Cheese Cake'),
(2, 'Lemon Pie'),
(3, 'Carrot Cake'),
(4, 'Muffin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cli_id`);

--
-- Indexes for table `franjas_horarias`
--
ALTER TABLE `franjas_horarias`
  ADD PRIMARY KEY (`fra_id`);

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`ped_cli_id`,`ped_pro_id`,`ped_fecha_entrega`),
  ADD KEY `pedidos_productos_FK` (`ped_pro_id`),
  ADD KEY `pedidos_franja_horaria_FK` (`ped_horario_entrega`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`pro_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `franjas_horarias`
--
ALTER TABLE `franjas_horarias`
  MODIFY `fra_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_clientes_FK` FOREIGN KEY (`ped_cli_id`) REFERENCES `clientes` (`cli_id`),
  ADD CONSTRAINT `pedidos_franja_horaria_FK` FOREIGN KEY (`ped_horario_entrega`) REFERENCES `franjas_horarias` (`fra_id`),
  ADD CONSTRAINT `pedidos_productos_FK` FOREIGN KEY (`ped_pro_id`) REFERENCES `productos` (`pro_id`);
--
-- Database: `peluqueria_canina_db`
--
CREATE DATABASE IF NOT EXISTS `peluqueria_canina_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `peluqueria_canina_db`;

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `cli_id` int(11) NOT NULL,
  `cli_nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`cli_id`, `cli_nombre`) VALUES
(1, 'Salchicha'),
(2, 'Caniche'),
(3, 'Dogo'),
(4, 'Rottweiler');

-- --------------------------------------------------------

--
-- Table structure for table `historial`
--

CREATE TABLE `historial` (
  `his_cli_id` int(11) NOT NULL,
  `his_ser_id` int(11) NOT NULL,
  `his_fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `historial`
--

INSERT INTO `historial` (`his_cli_id`, `his_ser_id`, `his_fecha`) VALUES
(2, 3, '2018-05-22 08:32:32'),
(2, 3, '2018-05-28 08:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `servicios`
--

CREATE TABLE `servicios` (
  `ser_id` int(11) NOT NULL,
  `ser_nombre` varchar(255) NOT NULL,
  `ser_precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `servicios`
--

INSERT INTO `servicios` (`ser_id`, `ser_nombre`, `ser_precio`) VALUES
(1, 'baño', 1500),
(2, 'baño y Corte', 3000),
(3, 'Corte de Uñas', 1000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cli_id`);

--
-- Indexes for table `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`his_cli_id`,`his_ser_id`,`his_fecha`),
  ADD KEY `historial_servicios_FK` (`his_ser_id`);

--
-- Indexes for table `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`ser_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `servicios`
--
ALTER TABLE `servicios`
  MODIFY `ser_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `historial`
--
ALTER TABLE `historial`
  ADD CONSTRAINT `historial_clientes_FK` FOREIGN KEY (`his_cli_id`) REFERENCES `clientes` (`cli_id`),
  ADD CONSTRAINT `historial_servicios_FK` FOREIGN KEY (`his_ser_id`) REFERENCES `servicios` (`ser_id`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('educacion', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('educacion', '[{\"db\":\"empanadas_db\",\"table\":\"chango_items\"},{\"db\":\"empanadas_db\",\"table\":\"chango\"},{\"db\":\"empanadas_db\",\"table\":\"productos\"},{\"db\":\"bazar_db\",\"table\":\"changuitos\"},{\"db\":\"bazar_db\",\"table\":\"changuito_items\"},{\"db\":\"bazar_db\",\"table\":\"productos\"},{\"db\":\"labiciloca_db\",\"table\":\"productos\"},{\"db\":\"labiciloca_db\",\"table\":\"compra_item\"},{\"db\":\"labiciloca_db\",\"table\":\"compra\"},{\"db\":\"distribuidora_db\",\"table\":\"golosinas\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('educacion', '2018-08-24 18:38:24', '{\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `piccolo_bar_db`
--
CREATE DATABASE IF NOT EXISTS `piccolo_bar_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `piccolo_bar_db`;

-- --------------------------------------------------------

--
-- Table structure for table `bebidas`
--

CREATE TABLE `bebidas` (
  `beb_id` int(11) NOT NULL,
  `beb_nombre` varchar(255) NOT NULL,
  `beb_capacidad` int(11) NOT NULL,
  `beb_precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bebidas`
--

INSERT INTO `bebidas` (`beb_id`, `beb_nombre`, `beb_capacidad`, `beb_precio`) VALUES
(1, 'Cerveza', 600, 200),
(2, 'Fernet', 1000, 150),
(3, 'Vodka', 800, 300);

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `cli_id` int(11) NOT NULL,
  `cli_nombre` varchar(255) NOT NULL,
  `cli_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`cli_id`, `cli_nombre`, `cli_email`) VALUES
(1, 'Mara', 'mara@gmail.com'),
(2, 'Guillermo', 'willy@gmail.com'),
(3, 'Gonzalo', 'gonzalito@gmail.com'),
(4, 'Noelia', 'noe@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `consumos`
--

CREATE TABLE `consumos` (
  `con_cli_id` int(11) NOT NULL,
  `con_beb_id` int(11) NOT NULL,
  `con_cantidad` int(11) NOT NULL,
  `con_fecha_pago` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `consumos`
--

INSERT INTO `consumos` (`con_cli_id`, `con_beb_id`, `con_cantidad`, `con_fecha_pago`) VALUES
(2, 3, 33, '0000-00-00 00:00:00'),
(4, 1, 45, '0000-00-00 00:00:00'),
(4, 1, 11, '0000-00-00 00:00:00'),
(3, 2, 10, '2018-04-24 06:31:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bebidas`
--
ALTER TABLE `bebidas`
  ADD PRIMARY KEY (`beb_id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cli_id`),
  ADD UNIQUE KEY `cli_ema_uk` (`cli_email`);

--
-- Indexes for table `consumos`
--
ALTER TABLE `consumos`
  ADD KEY `clientes_consumos_FK` (`con_cli_id`),
  ADD KEY `bebidas_consumos_FK` (`con_beb_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bebidas`
--
ALTER TABLE `bebidas`
  MODIFY `beb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `consumos`
--
ALTER TABLE `consumos`
  ADD CONSTRAINT `bebidas_consumos_FK` FOREIGN KEY (`con_beb_id`) REFERENCES `bebidas` (`beb_id`),
  ADD CONSTRAINT `clientes_consumos_FK` FOREIGN KEY (`con_cli_id`) REFERENCES `clientes` (`cli_id`);
--
-- Database: `planes_salud_db`
--
CREATE DATABASE IF NOT EXISTS `planes_salud_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `planes_salud_db`;

-- --------------------------------------------------------

--
-- Table structure for table `pacientes`
--

CREATE TABLE `pacientes` (
  `pac_id` int(11) NOT NULL,
  `pac_nombre` varchar(200) COLLATE utf8_bin NOT NULL,
  `pac_pla_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `pacientes`
--

INSERT INTO `pacientes` (`pac_id`, `pac_nombre`, `pac_pla_id`) VALUES
(3, 'Ivanna', 5),
(4, 'Noelia', 4),
(5, 'Albertito', 4),
(6, 'Guille', 5);

-- --------------------------------------------------------

--
-- Table structure for table `planes`
--

CREATE TABLE `planes` (
  `pla_id` int(11) NOT NULL,
  `pla_nombre` varchar(200) COLLATE utf8_bin NOT NULL,
  `pla_precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `planes`
--

INSERT INTO `planes` (`pla_id`, `pla_nombre`, `pla_precio`) VALUES
(4, 'ACC210', 500),
(5, 'ACC310', 1500),
(6, 'OS310', 3000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`pac_id`),
  ADD KEY `pacientes_planes_FK` (`pac_pla_id`);

--
-- Indexes for table `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`pla_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `pac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `planes`
--
ALTER TABLE `planes`
  MODIFY `pla_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `pacientes`
--
ALTER TABLE `pacientes`
  ADD CONSTRAINT `pacientes_planes_FK` FOREIGN KEY (`pac_pla_id`) REFERENCES `planes` (`pla_id`);
--
-- Database: `productosdb`
--
CREATE DATABASE IF NOT EXISTS `productosdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `productosdb`;

-- --------------------------------------------------------

--
-- Table structure for table `compra`
--

CREATE TABLE `compra` (
  `com_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compra_item`
--

CREATE TABLE `compra_item` (
  `item_com_id` int(11) NOT NULL,
  `item_pro_id` int(11) NOT NULL,
  `item_pro_cantidad` int(11) NOT NULL,
  `item_pro_precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `pro_id` int(11) NOT NULL,
  `pro_nombre` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `pro_precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `rol_id` int(11) NOT NULL,
  `rol_nombre` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `usu_id` int(11) NOT NULL,
  `usu_email` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`rol_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `compra`
--
ALTER TABLE `compra`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `rol_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usu_id` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `reposteria_db`
--
CREATE DATABASE IF NOT EXISTS `reposteria_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `reposteria_db`;

-- --------------------------------------------------------

--
-- Table structure for table `articulos`
--

CREATE TABLE `articulos` (
  `art_id` int(11) NOT NULL,
  `art_titulo` varchar(255) COLLATE utf8_bin NOT NULL,
  `art_descripcion` text COLLATE utf8_bin NOT NULL,
  `art_precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `articulos`
--

INSERT INTO `articulos` (`art_id`, `art_titulo`, `art_descripcion`, `art_precio`) VALUES
(1, 'Lemon Pie', '4 limones\r\n500 gr manteca\r\n600 gr harina\r\n10 gr polvo de hornear\r\n6 huevos\r\n300 gr azucar', 360),
(7, 'Masa Fina', 'Con Fruta', 120),
(8, 'Flan', 'Con Dulce de Leche', 120),
(11, 'Torta Frita', 'con azucar', 120),
(12, 'alfajor', 'maizena', 120),
(13, 'alfajorsito chiquito', 'maizena por docena', 120),
(14, 'sandwich', 'jamon y qeuso', 120),
(15, 'panini', 'jamon y qeuso', 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`art_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articulos`
--
ALTER TABLE `articulos`
  MODIFY `art_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;--
-- Database: `vehiculos_catalogo_db`
--
CREATE DATABASE IF NOT EXISTS `vehiculos_catalogo_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `vehiculos_catalogo_db`;

-- --------------------------------------------------------

--
-- Table structure for table `marcas`
--

CREATE TABLE `marcas` (
  `mar_id` int(11) NOT NULL,
  `mar_nombre` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `marcas`
--

INSERT INTO `marcas` (`mar_id`, `mar_nombre`) VALUES
(1, 'Citroen'),
(2, 'Peugeot');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`mar_id`),
  ADD UNIQUE KEY `marca_nombre_UK` (`mar_nombre`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `marcas`
--
ALTER TABLE `marcas`
  MODIFY `mar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;--
-- Database: `wgcrm`
--
CREATE DATABASE IF NOT EXISTS `wgcrm` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `wgcrm`;

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(200) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`) VALUES
(165, 'Acces Y Encend Mitre De Forcel'),
(37, 'Acevedo Mario Ramon'),
(233, 'Agostino Alejandra'),
(137, 'Aguirrezabala Jorge Omar'),
(177, 'Agustin Alfonso Parra'),
(212, 'Alfaro Janneth Elvis'),
(101, 'Alquimaq'),
(175, 'Alvarez Carlos Alberto'),
(54, 'Antonio F. La Bruna S.R.L.'),
(24, 'Ara Todo S.A.'),
(142, 'Arfuch Andres Javier'),
(200, 'Aromax Soc. Anonima'),
(211, 'Arroyo Sanchez Mariano Sebasti'),
(154, 'Autogham S.A.'),
(90, 'Autopartes Fispa S.A.'),
(6, 'Autopartes Sol S.R.L.'),
(1, 'Autosede S.A.'),
(33, 'Babino Sandra Veronica'),
(25, 'Baboni Maria De Las Mercedes'),
(190, 'Banega Carlos Leonardo'),
(164, 'Bello Claudio Hector'),
(149, 'Bocco Autopartes S.R.L.'),
(69, 'Bolotti Claudio F'),
(244, 'Bonafe'),
(5, 'Bor Ur De Urquiza Luis Rogelio'),
(78, 'Bouzas Ruben Omar'),
(146, 'Bujipar S.A.'),
(169, 'Caballo Ariel Fernando'),
(188, 'Cabo Automotores S.A.'),
(7, 'Camargo Frank Claudio Rodolfo'),
(102, 'Carbone Autoelevadores'),
(16, 'Carburacion Antonio S.A.'),
(181, 'Casa Ede Sacif'),
(129, 'Casa Mega De Angel Alberto'),
(205, 'Casa Olocco De Olocco M.Julia'),
(68, 'Castellano Silvio Adolfo'),
(184, 'Castiglia Hernandez'),
(226, 'Castro Eber Adrian'),
(8, 'Ceballos Castillo Pablo Cesar'),
(44, 'Cefi S.R.L.'),
(15, 'Centinela S.R.L.'),
(227, 'Central Del Filtro'),
(36, 'Centro Del Encendido'),
(148, 'Centro Milano S.A.'),
(121, 'Cinat Irma Esther'),
(176, 'Codosea Amalia Del Carmen'),
(159, 'Comerfil Indust. Y Comer.'),
(158, 'Condeminas Walter'),
(66, 'Cooperativa De Trabajo Famel Ltda'),
(97, 'Cordoba Motos S.R.L.'),
(160, 'Cota'),
(62, 'Covelia S.A.'),
(34, 'Cristian Adrian Cambellotti'),
(85, 'Cromosol Sacifei'),
(215, 'Cuyo Filtros'),
(119, 'Dagorret Daniel'),
(56, 'De Lio Julieta Monica'),
(94, 'Debrouvier Abel Antonio'),
(144, 'Delucia Ariel Dario'),
(138, 'Diesel Juan B.Justo S.R.L.'),
(240, 'Diraff Distribuidora de Repuestos Automotor'),
(4, 'Disfilt & Lub De Oettel Pablo'),
(11, 'Distrib. Granate De Tatche M.'),
(239, 'Distribuciones Alvear'),
(191, 'Distribuidora 2001 S.R.L.'),
(231, 'Distribuidora Azul'),
(118, 'Distribuidora La Estrella'),
(204, 'Dueto'),
(147, 'Durante Eric'),
(28, 'Edo S.A.'),
(241, 'El lubricentro '),
(30, 'Electrolube S.A.'),
(92, 'Estarrona Maria Soledad'),
(210, 'Exfako S.A.'),
(242, 'Fabio Jorge Rusconi'),
(219, 'Famsa Fabrica Argentina De Motovehiculos'),
(202, 'Fiat Lope De Vega De Callegaro Julio Ces'),
(117, 'Fibal S.R.L.'),
(116, 'Filpar S.A.'),
(150, 'Filtromar S.R.L.'),
(174, 'Filtron S.R.L.'),
(157, 'Filtros Argentinos S.R.L.'),
(185, 'Filtros Balzan S.R.L.'),
(195, 'Filtros Doble Filt De H. B.'),
(26, 'Filtros Mareno Sa'),
(134, 'Filtros Servis S.R.L.'),
(13, 'Fingolo Roberto Oscar'),
(14, 'Fm Lubricantes Filtros Y Esp. S.R.L.'),
(114, 'Frias Carlos Daniel'),
(57, 'Full Stock De A. Viciconte'),
(19, 'Ganapatti S.R.L.'),
(216, 'Garcia Damian Ramiro'),
(61, 'Garcia Daniel Cesar Ramon'),
(136, 'Garcia Pablo Alejandro'),
(179, 'Ghibaudo Mauricio Omar'),
(21, 'Giffoni Maxmo Ernesto'),
(58, 'Giordano Jose Luis'),
(130, 'Glaria Repuestos S.R.L.'),
(193, 'Glatzel Alfredo Pablo'),
(135, 'Goggi Claudio Y Goggi P. Soc De Hecho'),
(182, 'Gojmerac Jose'),
(29, 'Gomez Alfredo Marcelo'),
(213, 'Gonzalez Silvia Estela'),
(83, 'Grievas S.R.L.'),
(186, 'Grupo Boxes S.R.L.'),
(140, 'Grupo P  S.R.L.'),
(50, 'Grupo Prialis S.R.L'),
(108, 'Grupo Toledo S.A.'),
(38, 'Gsm Sociedad Anonima'),
(218, 'Gutierrez Hugo Daniel'),
(82, 'Hd Sales S.A.'),
(79, 'Hernandez Guillermo'),
(201, 'Hilgenberg Alcides Javier'),
(72, 'Hugo Alberto Perez'),
(67, 'I.F.R. S.A.'),
(110, 'Industrias Alka S.R.L.'),
(178, 'Industrias Darmet S.A.'),
(93, 'Industrias Lb'),
(125, 'Industrias Miguens'),
(122, 'Integral Motos S.R.L.'),
(88, 'Intercap S.R.L.'),
(74, 'Irigoyen Juan Bernardo'),
(100, 'Jalikis Ricardo Y Jalikis Gust'),
(247, 'JFC-889'),
(48, 'Juan Manuel'),
(91, 'Julian'),
(128, 'Juntamotor S.R.L.'),
(80, 'Kegel Filters S.R.L.'),
(3, 'L.C.F. S.R.L.'),
(2, 'La Casa De Las Correas Y El Filtro S.R.L.'),
(236, 'La casa del filtro (Junin)'),
(234, 'La Casa del Filtro (Laura Ventura)'),
(170, 'La Cuadra Motos S.R.L.'),
(167, 'Laguna S.R.L.'),
(47, 'Len Lar S.A.'),
(98, 'Lencioni Marcelo'),
(65, 'Licocci Graciela'),
(199, 'Lindolfo Manuel Mantilla E Hij'),
(139, 'Logistica Mecanica S.A.'),
(145, 'Loma Negra Cia. Industrial Arg'),
(238, 'Luba Motos. (Pablo Alejandro Garcia)'),
(39, 'Lubritodo S.A'),
(105, 'Lucio Adrian Jorge'),
(141, 'Luers Y Cia S.R.L.'),
(214, 'Lupart S.A.'),
(73, 'Magneti Marelli Repuestos S.A.'),
(224, 'Magnummar Sociedad De Responsabilidad L'),
(49, 'Maine Distribuciones S.R.L.'),
(42, 'Mann Hummel Argentina Sa'),
(126, 'Manzanedo Eugenio Alberto'),
(192, 'Maquigod S.R.L.'),
(189, 'Maradei Jorge Pascual'),
(127, 'Marchiolo German'),
(107, 'Marti - Scarlatta S.R.L.'),
(198, 'Martin Miguel Francisco'),
(87, 'Martinez Rodrigo Santos'),
(76, 'Masterfilt S.R.L.'),
(95, 'Maud Ramon Francisco'),
(71, 'Max Fil S.R.L.'),
(77, 'Mc Donald Distribuciones S.R.L'),
(171, 'Medios Filtrantes S.R.L.'),
(112, 'Mega Miguel Angel'),
(163, 'Mendez'),
(237, 'Mercado Libre.'),
(103, 'Microtex S.R.L.'),
(196, 'Miguel Hnos S.R.L.'),
(115, 'Miguelez Fernando Luis'),
(9, 'Mipol Repuestos S.A.'),
(143, 'Mitsubishi'),
(23, 'Mochon Daniel Pedro'),
(230, 'Moreno'),
(206, 'Moro Norberto F Y Capano Maria'),
(161, 'Mosconi Daniel Horacio'),
(45, 'Moto Tech S.R.L.'),
(221, 'Motos Fornaro S.R.L.'),
(225, 'Navia Sacif'),
(120, 'Navitrans De Argentina S.A.'),
(152, 'Neorep S.R.L.'),
(194, 'Nicolas Enrique Diaz'),
(232, 'Nochetti'),
(18, 'Norauto Argentina S.A.'),
(197, 'Norte Repuestos S.R.L.'),
(86, 'O&O S.R.L.'),
(40, 'Olano Alicia Beatriz'),
(156, 'Osmimar S.R.L.'),
(162, 'Otero Ruben Lindolfo'),
(43, 'Over Filt De Villario J. Gabri'),
(155, 'Paez Anibal Oscar'),
(172, 'Pagano Francisco Antonio'),
(220, 'Panizza Daniel Adrian'),
(166, 'Paspardi'),
(32, 'Pavan S.A.'),
(208, 'Pereyra Ricardo Omar'),
(243, 'Pesados San Nicolas'),
(223, 'Picot Alejandro Fabian'),
(89, 'Piñeyro Maria Azul'),
(217, 'Polifiltros S.A.'),
(60, 'Pollux S.A.'),
(153, 'Portillo Graciela Noemi'),
(173, 'Premec S.A.'),
(151, 'Principe Damian Oscar'),
(96, 'Promo Vent S.R.L.'),
(63, 'Pruneda Paz Y Rocha Dominguez'),
(104, 'Purificadores Argentinos S.A.'),
(180, 'Queirolo Jesica Soledad'),
(113, 'Rapa Saci Y F'),
(246, 'Regral'),
(27, 'Remezzano S.R.L.'),
(81, 'Repossi Carlos Arturo'),
(228, 'Repuestos Ajp S.R.L.'),
(203, 'Repuestos J.C. S.R.L.'),
(53, 'Ribaudo Norberto Hugo'),
(20, 'Ricardo O Gralatto S.R.L.'),
(64, 'Rios Carlos Alberto'),
(59, 'Rodolfo Pizzuto Autopartes S.R.L.'),
(209, 'Rodriguez Benigno Manuel'),
(35, 'Rodriguez Matias Andres'),
(17, 'Rodriguez Victor Alfredo'),
(46, 'Rolfo S.R.L.'),
(84, 'Romero S.H.'),
(235, 'Rossi'),
(22, 'Ruiz Patricio Nell'),
(168, 'Russo Gustavo Javier'),
(187, 'Saez Eudogio Jose'),
(132, 'Sanchez Fernando H Y Sierra Sh'),
(111, 'Sanchez Ignacio'),
(222, 'Santa Maria De Lujan S.A.'),
(109, 'Santillan Daniel Guillermo'),
(124, 'Sarico Distri S.A.'),
(75, 'Schipull Enrique Gustavo F'),
(123, 'Scozzafava Francisco'),
(229, 'Sierra Origlia Matias Juan C.'),
(31, 'Sobrino Jorge Juan'),
(41, 'Sucesion De Ibarra Maria Rosa'),
(245, 'Supermercado de los Filtros S. H. '),
(99, 'Tabbia Luis Angel'),
(183, 'Turconi Osvaldo'),
(131, 'Vaer Sociedad Anonima'),
(51, 'Vaxel S.A.'),
(12, 'Ventura Laura Susana'),
(133, 'Vicente Mastropierro S.A.'),
(10, 'Vimi S.A.'),
(207, 'Viterman Del Valle Roldan'),
(106, 'Wal-Mart Argentina Soc Res Ltd.'),
(52, 'Wurth Argentina S.A.'),
(70, 'Zella Hnos.'),
(55, 'Zero Repuestos Sh De Moiraghi');

-- --------------------------------------------------------

--
-- Table structure for table `origenes`
--

CREATE TABLE `origenes` (
  `id_origen` int(200) NOT NULL,
  `origen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `origenes`
--

INSERT INTO `origenes` (`id_origen`, `origen`) VALUES
(1, 'I'),
(2, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(200) NOT NULL,
  `codigo_producto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id_producto`, `codigo_producto`) VALUES
(2717, ''),
(2726, '80720 110 17'),
(2727, '80720 111 13'),
(1256, '89714827-0'),
(2439, 'A-2001'),
(2440, 'A-2002'),
(2441, 'A-2002-15'),
(2442, 'A-2003'),
(2443, 'A-2003-15'),
(2444, 'A-2006'),
(2445, 'A-2007'),
(2446, 'A-2007RED'),
(2447, 'A-2008'),
(2448, 'A-2010'),
(2449, 'A-2011'),
(2450, 'A-2012'),
(2451, 'A-2015'),
(2452, 'A-2016'),
(2453, 'A-2020'),
(2454, 'A-2021'),
(2455, 'A-2022'),
(2456, 'A-2031'),
(2457, 'A-2032'),
(2458, 'A-2033'),
(2459, 'A-2035'),
(2460, 'A-2036'),
(2461, 'A-2037'),
(2462, 'A-2038'),
(2463, 'A-2039'),
(2464, 'A-2046'),
(2465, 'A-2047'),
(2466, 'A-2048'),
(2467, 'A-2049'),
(2468, 'A-2051'),
(2469, 'A-2052'),
(2470, 'A-2053'),
(2471, 'A-2054'),
(2472, 'A-2055'),
(2473, 'A-2056'),
(2474, 'A-2058-15'),
(2475, 'A-2075'),
(2476, 'A-2077'),
(2477, 'A-2080'),
(2478, 'A-2081'),
(2479, 'A-2107'),
(2729, 'A-2107 Kerze'),
(2480, 'A-2108'),
(2481, 'A-2110'),
(2482, 'A-2111'),
(2483, 'A-2112'),
(2484, 'A-2120'),
(2485, 'A-2135'),
(2486, 'A-2135BLUE'),
(2487, 'A-2136'),
(2489, 'A-2136AMBE'),
(2488, 'A-2136BLUE'),
(2490, 'A-2136GREE'),
(2491, 'A-2136RED'),
(2492, 'A-2137'),
(2493, 'A-2140'),
(2494, 'A-2141'),
(2495, 'A-2142'),
(2496, 'A-2143'),
(2497, 'A-2148'),
(2498, 'A-2235'),
(2499, 'A-2236'),
(2500, 'A-2252'),
(2501, 'A-2271'),
(2502, 'A-2308'),
(2503, 'A-2334'),
(2504, 'A-2335'),
(2505, 'A-2336'),
(2506, 'A-2337'),
(2507, 'A-2338'),
(2508, 'A-2339'),
(2509, 'A-2340'),
(2510, 'A-2346'),
(2511, 'A-2346AMBE'),
(2512, 'A-2346BLU'),
(2514, 'A-2346GREE'),
(2513, 'A-2346RED'),
(2386, 'A-2346XN'),
(2515, 'A-2348'),
(2516, 'A-2348BLUE'),
(2517, 'A-2348GREE'),
(2518, 'A-2351'),
(2519, 'A-2353'),
(2520, 'A-2366'),
(2521, 'A-2370'),
(2523, 'A-2371AMBE'),
(2522, 'A-2371BLUE'),
(2524, 'A-2372'),
(2525, 'A-2377'),
(2526, 'A-2388'),
(2527, 'A-2389'),
(2528, 'A-2391'),
(2529, 'A-2398'),
(2530, 'A-2401'),
(2531, 'A-2402'),
(2532, 'A-2403'),
(2533, 'A-2407'),
(2534, 'A-2502P'),
(2388, 'A-2502PGOL'),
(2387, 'A-2502PWHI'),
(2389, 'A-2502XNBC'),
(2390, 'A-2502XNBI'),
(2535, 'A-2503P'),
(2537, 'A-2505LF'),
(2536, 'A-2505P'),
(2392, 'A-2505PGOL'),
(2391, 'A-2505PWHI'),
(2393, 'A-2505XNBC'),
(2394, 'A-2505XNBI'),
(2538, 'A-2506P'),
(2745, 'A-2507 Kerze'),
(2539, 'A-2507LF'),
(2540, 'A-2507P'),
(2396, 'A-2507PGOL'),
(2395, 'A-2507PWHI'),
(2397, 'A-2507XNBC'),
(2398, 'A-2507XNBI'),
(2542, 'A-2508LF'),
(2541, 'A-2508P'),
(2399, 'A-2508PGOL'),
(2400, 'A-2508PWHI'),
(2401, 'A-2508XNBC'),
(2402, 'A-2508XNBI'),
(2543, 'A-2512P'),
(2544, 'A-2513P'),
(2545, 'A-2515P'),
(2546, 'A-2516P'),
(2547, 'A-2517P'),
(2404, 'A-2517PGOL'),
(2403, 'A-2517PWHI'),
(2405, 'A-2517XNBC'),
(2406, 'A-2517XNBI'),
(2548, 'A-2518P'),
(2759, 'A-2518XNBI'),
(2549, 'A-2538P'),
(2550, 'A-2540P'),
(2408, 'A-2540PGOL'),
(2407, 'A-2540PWHI'),
(2409, 'A-2540XNBC'),
(2410, 'A-2540XNBI'),
(2551, 'A-2543P'),
(2412, 'A-2543PGOL'),
(2411, 'A-2543PWHI'),
(2413, 'A-2543XNBC'),
(2414, 'A-2543XNBI'),
(2552, 'A-2545P'),
(2416, 'A-2545PGOL'),
(2415, 'A-2545PWHI'),
(2417, 'A-2545XNBC'),
(2418, 'A-2545XNBI'),
(2553, 'A-2546P'),
(2420, 'A-2546PGOL'),
(2419, 'A-2546PWHI'),
(2421, 'A-2546XNBC'),
(2422, 'A-2546XNBI'),
(2554, 'A-2547P'),
(2424, 'A-2547PGOL'),
(2423, 'A-2547PWHI'),
(2425, 'A-2547XNBC'),
(2426, 'A-2547XNBI'),
(2718, 'A-2550 Kerze'),
(2556, 'A-2550LF'),
(2555, 'A-2550P'),
(2428, 'A-2550PGOL'),
(2427, 'A-2550PWHI'),
(2429, 'A-2550XNBC'),
(2430, 'A-2550XNBI'),
(2557, 'A-2551P'),
(2432, 'A-2551PGOL'),
(2431, 'A-2551PWHI'),
(2433, 'A-2551XNBC'),
(2434, 'A-2551XNBI'),
(2558, 'A-2552P'),
(2559, 'A-2553P'),
(2560, 'A-2555P'),
(2436, 'A-2555PGOL'),
(2435, 'A-2555PWHI'),
(2437, 'A-2555XNBC'),
(2438, 'A-2555XNBI'),
(2561, 'A-2557P'),
(2563, 'A-2560LF'),
(2562, 'A-2560P'),
(2564, 'A-2567P'),
(2565, 'A-2577'),
(2566, 'A-2580P'),
(2567, 'A-2590'),
(2568, 'A-2591'),
(2569, 'A-2592'),
(2570, 'A-2593'),
(2571, 'A-2594'),
(2572, 'A-2595'),
(2573, 'A-2602/B'),
(2574, 'A-2610/B'),
(2575, 'A-2702'),
(2576, 'A-2703'),
(2577, 'A-2712'),
(2578, 'A-2802\"'),
(2579, 'A-2821\"'),
(2580, 'A-2832\"'),
(2581, 'A-2880'),
(2582, 'A-2881'),
(2583, 'A-2884'),
(2584, 'A-2885'),
(2585, 'A-2886'),
(2586, 'A-2889'),
(2587, 'A-2890'),
(2588, 'A-2893'),
(2589, 'A-2894'),
(2590, 'A-2896'),
(2763, 'AH-2550FB'),
(104, 'AKX 1750'),
(105, 'AKX 1760'),
(107, 'AKX 1810'),
(2738, 'AKX 35281/c'),
(2737, 'AKX 35370'),
(341, 'AKX 35723'),
(2744, 'AKX 3573'),
(1, 'AKX-1014'),
(2, 'AKX-1037'),
(3, 'AKX-1100'),
(4, 'AKX-1100/C'),
(5, 'AKX-1110'),
(6, 'AKX-1110/C'),
(7, 'AKX-1111'),
(9, 'AKX-1112/C'),
(10, 'AKX-1113/C'),
(11, 'AKX-1114/C'),
(12, 'AKX-1115/C'),
(13, 'AKX-1116'),
(14, 'AKX-1116/C'),
(15, 'AKX-1120'),
(16, 'AKX-1120/C'),
(17, 'AKX-1130'),
(18, 'AKX-1130/C'),
(19, 'AKX-1140'),
(20, 'AKX-1140/C'),
(21, 'AKX-1141/C'),
(22, 'AKX-1142/C'),
(23, 'AKX-1200'),
(24, 'AKX-1200/C'),
(25, 'AKX-1201'),
(26, 'AKX-1210'),
(27, 'AKX-1369/C'),
(28, 'AKX-1370/C'),
(29, 'AKX-1371'),
(30, 'AKX-1372'),
(31, 'AKX-1373/C'),
(32, 'AKX-1374'),
(33, 'AKX-1375'),
(34, 'AKX-1375/C'),
(35, 'AKX-1376'),
(36, 'AKX-1377'),
(37, 'AKX-1378'),
(38, 'AKX-1378/C'),
(39, 'AKX-1379'),
(40, 'AKX-1392'),
(41, 'AKX-1393'),
(42, 'AKX-1394'),
(43, 'AKX-1394/C'),
(44, 'AKX-1395/C'),
(45, 'AKX-1396'),
(46, 'AKX-1396/C'),
(47, 'AKX-1397'),
(48, 'AKX-1397/C'),
(49, 'AKX-1398'),
(50, 'AKX-1398/C'),
(51, 'AKX-1399'),
(52, 'AKX-1400'),
(53, 'AKX-1410'),
(54, 'AKX-1411/C'),
(55, 'AKX-1418'),
(56, 'AKX-1419'),
(57, 'AKX-1420'),
(58, 'AKX-1422'),
(59, 'AKX-1422/C'),
(60, 'AKX-1430'),
(61, 'AKX-1430/C'),
(62, 'AKX-1433'),
(63, 'AKX-1433/C'),
(64, 'AKX-1444'),
(2747, 'AKX-1444/C'),
(65, 'AKX-1445'),
(66, 'AKX-1445/C'),
(67, 'AKX-1446'),
(68, 'AKX-1446/C'),
(69, 'AKX-1447'),
(70, 'AKX-1447/C'),
(71, 'AKX-1448'),
(72, 'AKX-1448/C'),
(73, 'AKX-1449/C'),
(74, 'AKX-1455'),
(75, 'AKX-1456'),
(76, 'AKX-1456/C'),
(77, 'AKX-1457/C'),
(78, 'AKX-1465'),
(79, 'AKX-1465/C'),
(80, 'AKX-1466'),
(81, 'AKX-1500'),
(82, 'AKX-1500/C'),
(83, 'AKX-1510'),
(84, 'AKX-1510/C'),
(85, 'AKX-1511'),
(86, 'AKX-1520/C'),
(87, 'AKX-1530/C'),
(88, 'AKX-1540'),
(89, 'AKX-1540/C'),
(90, 'AKX-1541'),
(91, 'AKX-1550'),
(92, 'AKX-1550/C'),
(93, 'AKX-1560'),
(94, 'AKX-1570'),
(95, 'AKX-1570/C'),
(96, 'AKX-1580/C'),
(97, 'AKX-1600'),
(98, 'AKX-1600/C'),
(99, 'AKX-1630'),
(100, 'AKX-1630/C'),
(101, 'AKX-1631'),
(102, 'AKX-1700'),
(103, 'AKX-1701'),
(106, 'AKX-1772'),
(108, 'AKX-1820'),
(109, 'AKX-1830'),
(110, 'AKX-1830/C'),
(111, 'AKX-1831'),
(112, 'AKX-1900/C'),
(113, 'AKX-1901'),
(114, 'AKX-1901/C'),
(115, 'AKX-1910/C'),
(116, 'AKX-1911'),
(117, 'AKX-1920'),
(118, 'AKX-1930'),
(119, 'AKX-1933'),
(120, 'AKX-1935'),
(121, 'AKX-1936'),
(122, 'AKX-1936/C'),
(123, 'AKX-1937'),
(124, 'AKX-1937/C'),
(125, 'AKX-1938'),
(126, 'AKX-1939'),
(127, 'AKX-1939/C'),
(128, 'AKX-1940'),
(129, 'AKX-1941'),
(130, 'AKX-1942'),
(131, 'AKX-1950'),
(132, 'AKX-1951'),
(133, 'AKX-1952'),
(134, 'AKX-1953'),
(135, 'AKX-1954'),
(136, 'AKX-1955'),
(137, 'AKX-1956'),
(138, 'AKX-1956/C'),
(139, 'AKX-1957'),
(140, 'AKX-1959'),
(141, 'AKX-1959/C'),
(142, 'AKX-1960'),
(143, 'AKX-1961'),
(144, 'AKX-1962'),
(145, 'AKX-1962/C'),
(146, 'AKX-1963'),
(147, 'AKX-1963/C'),
(148, 'AKX-1964/C'),
(149, 'AKX-1965'),
(150, 'AKX-1965/C'),
(151, 'AKX-1966'),
(152, 'AKX-1967'),
(153, 'AKX-1968'),
(154, 'AKX-1969'),
(155, 'AKX-1970'),
(156, 'AKX-1971'),
(157, 'AKX-1972'),
(158, 'AKX-1973'),
(159, 'AKX-1974'),
(160, 'AKX-1980'),
(161, 'AKX-1981'),
(162, 'AKX-1982'),
(163, 'AKX-1983'),
(164, 'AKX-1984'),
(165, 'AKX-1984/C'),
(166, 'AKX-1985'),
(167, 'AKX-1985/C'),
(168, 'AKX-1986'),
(169, 'AKX-1987'),
(170, 'AKX-1987/C'),
(171, 'AKX-1988'),
(172, 'AKX-1989'),
(173, 'AKX-1990'),
(174, 'AKX-1991'),
(175, 'AKX-1992'),
(176, 'AKX-1993'),
(177, 'AKX-1994'),
(178, 'AKX-1995'),
(179, 'AKX-1995/C'),
(180, 'AKX-1996'),
(181, 'AKX-1997'),
(182, 'AKX-2001'),
(183, 'AKX-2001/C'),
(184, 'AKX-2002'),
(185, 'AKX-2003'),
(186, 'AKX-2004'),
(187, 'AKX-2004/C'),
(188, 'AKX-2005'),
(189, 'AKX-2006'),
(190, 'AKX-2007'),
(191, 'AKX-2008'),
(192, 'AKX-2009'),
(193, 'AKX-2010'),
(194, 'AKX-2011'),
(195, 'AKX-2012'),
(196, 'AKX-2013'),
(197, 'AKX-2100'),
(198, 'AKX-2101'),
(199, 'AKX-2101/C'),
(200, 'AKX-2102'),
(201, 'AKX-2102/C'),
(202, 'AKX-2103'),
(203, 'AKX-2104'),
(204, 'AKX-2104/C'),
(205, 'AKX-2105'),
(206, 'AKX-2161'),
(207, 'AKX-2200'),
(208, 'AKX-2201'),
(209, 'AKX-2900'),
(260, 'AKX-35102'),
(261, 'AKX-35103'),
(262, 'AKX-35110'),
(263, 'AKX-35110/C'),
(264, 'AKX-35112'),
(265, 'AKX-35115'),
(266, 'AKX-35125'),
(267, 'AKX-35125/C'),
(268, 'AKX-35127'),
(269, 'AKX-35127/C'),
(270, 'AKX-35128'),
(271, 'AKX-35128/C'),
(272, 'AKX-35129'),
(273, 'AKX-35132'),
(274, 'AKX-35132C'),
(275, 'AKX-35141'),
(276, 'AKX-35147'),
(277, 'AKX-35150/C'),
(278, 'AKX-35151'),
(279, 'AKX-35152'),
(280, 'AKX-35153'),
(281, 'AKX-35154'),
(282, 'AKX-35155'),
(283, 'AKX-35157'),
(284, 'AKX-35157/C'),
(285, 'AKX-35159'),
(286, 'AKX-35159/C'),
(287, 'AKX-35160'),
(288, 'AKX-35160C'),
(289, 'AKX-35163'),
(290, 'AKX-35163C'),
(291, 'AKX-35164'),
(292, 'AKX-35164/C'),
(210, 'AKX-3517'),
(293, 'AKX-35174'),
(295, 'AKX-35175'),
(296, 'AKX-35175/C'),
(297, 'AKX-35176'),
(2750, 'AKX-35177'),
(298, 'AKX-35180'),
(299, 'AKX-35181'),
(300, 'AKX-35181/C'),
(211, 'AKX-3519'),
(212, 'AKX-3520/C'),
(301, 'AKX-35262'),
(302, 'AKX-35264'),
(303, 'AKX-35264/C'),
(304, 'AKX-35279'),
(305, 'AKX-35280'),
(306, 'AKX-35285'),
(307, 'AKX-35285/C'),
(308, 'AKX-35293'),
(309, 'AKX-35293/C'),
(310, 'AKX-35321'),
(311, 'AKX-35321/C'),
(312, 'AKX-35322'),
(313, 'AKX-35323'),
(314, 'AKX-35323/C'),
(315, 'AKX-35324'),
(213, 'AKX-3533'),
(214, 'AKX-3534'),
(316, 'AKX-35345'),
(317, 'AKX-35346'),
(318, 'AKX-35346/C'),
(319, 'AKX-35347'),
(320, 'AKX-35348'),
(321, 'AKX-35349/C'),
(215, 'AKX-3535'),
(216, 'AKX-3535/1'),
(217, 'AKX-3536'),
(218, 'AKX-3536/C'),
(219, 'AKX-3537'),
(322, 'AKX-35370'),
(220, 'AKX-3538'),
(221, 'AKX-3539'),
(222, 'AKX-3540'),
(223, 'AKX-3543'),
(224, 'AKX-3546'),
(225, 'AKX-3548'),
(226, 'AKX-3557'),
(323, 'AKX-35602'),
(324, 'AKX-35608'),
(325, 'AKX-35608/C'),
(326, 'AKX-35609/C'),
(327, 'AKX-35610'),
(328, 'AKX-35611'),
(329, 'AKX-35611/C'),
(227, 'AKX-3562'),
(330, 'AKX-35634'),
(331, 'AKX-35634/C'),
(332, 'AKX-35635'),
(333, 'AKX-35636'),
(334, 'AKX-35642'),
(228, 'AKX-3565/C'),
(335, 'AKX-35667'),
(336, 'AKX-35667/C'),
(229, 'AKX-3568/C'),
(230, 'AKX-3569'),
(231, 'AKX-3570'),
(232, 'AKX-3571'),
(233, 'AKX-3571/C'),
(337, 'AKX-35711'),
(338, 'AKX-35711/C'),
(234, 'AKX-3572/C'),
(339, 'AKX-35722'),
(340, 'AKX-35722/C'),
(342, 'AKX-35723/C'),
(235, 'AKX-3573/C'),
(236, 'AKX-3574/C'),
(237, 'AKX-3575'),
(238, 'AKX-3575/C'),
(239, 'AKX-3576'),
(240, 'AKX-3577/C'),
(241, 'AKX-3578'),
(242, 'AKX-3579'),
(243, 'AKX-3580/C'),
(244, 'AKX-3581'),
(245, 'AKX-3583'),
(246, 'AKX-3584'),
(247, 'AKX-3585/C'),
(248, 'AKX-3586'),
(249, 'AKX-3587'),
(250, 'AKX-3588/C'),
(251, 'AKX-3589/C'),
(252, 'AKX-3590/C'),
(253, 'AKX-3591/C'),
(254, 'AKX-3593'),
(255, 'AKX-3594/C'),
(256, 'AKX-3597'),
(257, 'AKX-3599'),
(258, 'AKX-3600'),
(259, 'AKX-3600/C'),
(343, 'AKX-4002'),
(344, 'AKX-4003'),
(345, 'AKX-4004'),
(346, 'AKX-4005'),
(347, 'AKX-4006'),
(348, 'AKX-4007'),
(349, 'AKX-4009'),
(350, 'AKX-4010'),
(351, 'AKX-4526'),
(8, 'AKX1111/C'),
(294, 'AKX35174/C'),
(2322, 'AN-1000-ME'),
(2310, 'AN-101'),
(2311, 'AN-107'),
(2323, 'AN-1200-ME'),
(2312, 'AN-201'),
(2313, 'AN-207'),
(2314, 'AN-400-PG'),
(2315, 'AN-800-KH'),
(2316, 'AN-810-KH'),
(2317, 'AN-820-KH'),
(2318, 'AN-840-KH'),
(2319, 'AN-900-HA'),
(2320, 'AN-920-VO'),
(2321, 'AN-930-VO'),
(2711, 'AR-1608'),
(2712, 'AR-1610'),
(2681, 'BC-0501'),
(2682, 'BC-0502'),
(2683, 'BC-0504'),
(2684, 'BC-0505'),
(2685, 'BC-0506'),
(2200, 'BR12YC-9'),
(2707, 'CP-0001'),
(2708, 'CP-0002'),
(2709, 'CP-0003'),
(2710, 'CP-0004'),
(2201, 'CR17YC'),
(2187, 'D14YC'),
(2137, 'D15Y'),
(2188, 'D15YC'),
(2138, 'D17Y'),
(2189, 'D17YC'),
(2721, 'D2R 4300K'),
(2722, 'D2R 5000K'),
(2719, 'D2S 4300K'),
(2720, 'D2S 5000K'),
(1251, 'DAF-100'),
(1252, 'DAF-200'),
(1253, 'DAF-300'),
(1254, 'DAF-400'),
(1255, 'DAF-500'),
(2161, 'DR15LY1'),
(2163, 'DR15LY3'),
(2183, 'DR15T'),
(2213, 'DR15TC'),
(2164, 'DR15Y'),
(2165, 'DR15Y1'),
(2202, 'DR15YC'),
(2168, 'DR15YX0'),
(2182, 'DR15Z'),
(2212, 'DR15ZC'),
(2162, 'DR17LY1'),
(2166, 'DR17Y'),
(2167, 'DR17Y1'),
(2203, 'DR17YC'),
(2184, 'DR17Z'),
(2214, 'DR17ZC'),
(2324, 'E-200-PE'),
(2674, 'EC-0301'),
(2675, 'EC-0302'),
(2676, 'EC-0305'),
(1881, 'EC-0306'),
(2677, 'EC-0309'),
(2735, 'ER12YC9'),
(2139, 'F19Y'),
(2153, 'F19Y-4'),
(476, 'FAP 4019'),
(2741, 'FAP 9069'),
(352, 'FAP-0001'),
(353, 'FAP-0002'),
(354, 'FAP-0854'),
(355, 'FAP-0857'),
(356, 'FAP-1001'),
(357, 'FAP-1002'),
(358, 'FAP-1003'),
(359, 'FAP-1004'),
(2761, 'FAP-1007'),
(360, 'FAP-1701'),
(361, 'FAP-1702'),
(362, 'FAP-2002'),
(363, 'FAP-2005'),
(364, 'FAP-2006'),
(365, 'FAP-2201'),
(366, 'FAP-2202'),
(367, 'FAP-2214'),
(368, 'FAP-2405'),
(369, 'FAP-2408'),
(370, 'FAP-2412'),
(371, 'FAP-2413'),
(372, 'FAP-2414'),
(373, 'FAP-2415'),
(374, 'FAP-2416'),
(375, 'FAP-2801'),
(376, 'FAP-2806'),
(377, 'FAP-2807'),
(378, 'FAP-2812'),
(379, 'FAP-2815'),
(380, 'FAP-2817'),
(381, 'FAP-2823'),
(382, 'FAP-2827'),
(383, 'FAP-2828'),
(384, 'FAP-2830'),
(385, 'FAP-2831'),
(386, 'FAP-2832'),
(387, 'FAP-2833'),
(388, 'FAP-2835'),
(389, 'FAP-2840'),
(390, 'FAP-2841'),
(391, 'FAP-2842'),
(392, 'FAP-2843'),
(393, 'FAP-2844'),
(394, 'FAP-2845'),
(395, 'FAP-2848'),
(396, 'FAP-3202'),
(397, 'FAP-3207'),
(398, 'FAP-3208'),
(399, 'FAP-3209'),
(400, 'FAP-3211'),
(401, 'FAP-3212'),
(402, 'FAP-3215'),
(403, 'FAP-3216'),
(404, 'FAP-3217'),
(405, 'FAP-3218'),
(406, 'FAP-3220'),
(407, 'FAP-3221'),
(408, 'FAP-3226'),
(409, 'FAP-3227'),
(410, 'FAP-3231'),
(411, 'FAP-3232'),
(412, 'FAP-3234'),
(413, 'FAP-3234/1'),
(414, 'FAP-3239'),
(415, 'FAP-3241'),
(416, 'FAP-3242'),
(417, 'FAP-3243'),
(418, 'FAP-3244'),
(419, 'FAP-3254'),
(420, 'FAP-3255'),
(421, 'FAP-3256'),
(422, 'FAP-3257'),
(423, 'FAP-3258'),
(424, 'FAP-3259'),
(425, 'FAP-3260'),
(426, 'FAP-3261'),
(427, 'FAP-3262'),
(428, 'FAP-3266'),
(429, 'FAP-3268'),
(430, 'FAP-3269'),
(2751, 'FAP-3270'),
(431, 'FAP-3271'),
(432, 'FAP-3271/2'),
(433, 'FAP-3271/3'),
(434, 'FAP-3271/4'),
(435, 'FAP-3272'),
(436, 'FAP-3273'),
(437, 'FAP-3274'),
(438, 'FAP-3275'),
(439, 'FAP-3276'),
(440, 'FAP-3277'),
(441, 'FAP-3278'),
(442, 'FAP-3279'),
(443, 'FAP-3280'),
(444, 'FAP-3281'),
(445, 'FAP-3282'),
(446, 'FAP-3283'),
(447, 'FAP-3284'),
(448, 'FAP-3285'),
(449, 'FAP-3286'),
(450, 'FAP-3287'),
(451, 'FAP-3288'),
(452, 'FAP-3289'),
(453, 'FAP-3601'),
(454, 'FAP-3602'),
(455, 'FAP-3603'),
(456, 'FAP-3604'),
(457, 'FAP-3605'),
(458, 'FAP-3606'),
(459, 'FAP-3608'),
(460, 'FAP-3610'),
(461, 'FAP-3611'),
(462, 'FAP-3612'),
(463, 'FAP-3614'),
(464, 'FAP-3615'),
(465, 'FAP-3616'),
(466, 'FAP-4006'),
(467, 'FAP-4008'),
(468, 'FAP-4009'),
(469, 'FAP-4011'),
(470, 'FAP-4012'),
(471, 'FAP-4013'),
(472, 'FAP-4014'),
(473, 'FAP-4015'),
(474, 'FAP-4017'),
(475, 'FAP-4018'),
(477, 'FAP-4022'),
(478, 'FAP-4023'),
(479, 'FAP-4024'),
(480, 'FAP-4026'),
(481, 'FAP-4027'),
(482, 'FAP-4028'),
(483, 'FAP-4029'),
(2723, 'FAP-4030'),
(484, 'FAP-4031'),
(485, 'FAP-4032'),
(486, 'FAP-4033'),
(487, 'FAP-4034'),
(488, 'FAP-4035'),
(489, 'FAP-4037'),
(490, 'FAP-4043'),
(491, 'FAP-4044'),
(492, 'FAP-4045'),
(493, 'FAP-4045/1'),
(494, 'FAP-4046'),
(495, 'FAP-4046/1'),
(496, 'FAP-4047'),
(497, 'FAP-4048'),
(498, 'FAP-4049'),
(499, 'FAP-4050'),
(500, 'FAP-4051'),
(501, 'FAP-4052'),
(502, 'FAP-4053'),
(503, 'FAP-4054'),
(504, 'FAP-4054/2'),
(505, 'FAP-4054/3'),
(506, 'FAP-4055'),
(507, 'FAP-4056'),
(508, 'FAP-4057'),
(509, 'FAP-4060'),
(510, 'FAP-4062'),
(511, 'FAP-4201'),
(512, 'FAP-4202'),
(513, 'FAP-4203'),
(514, 'FAP-4206'),
(515, 'FAP-4207'),
(516, 'FAP-4208'),
(517, 'FAP-4209'),
(518, 'FAP-4801'),
(519, 'FAP-4802'),
(520, 'FAP-4803'),
(521, 'FAP-4805'),
(522, 'FAP-4806'),
(523, 'FAP-4809'),
(524, 'FAP-4812'),
(525, 'FAP-4812/1'),
(526, 'FAP-4812/2'),
(527, 'FAP-4813'),
(528, 'FAP-4814'),
(529, 'FAP-4815'),
(530, 'FAP-4816'),
(531, 'FAP-4817'),
(532, 'FAP-4818'),
(533, 'FAP-4819'),
(534, 'FAP-4820'),
(535, 'FAP-4822'),
(536, 'FAP-4823'),
(537, 'FAP-4826'),
(538, 'FAP-4826/1'),
(539, 'FAP-4827'),
(540, 'FAP-4828'),
(541, 'FAP-4829'),
(542, 'FAP-4830'),
(543, 'FAP-4831'),
(544, 'FAP-4832'),
(545, 'FAP-4833'),
(546, 'FAP-4834'),
(547, 'FAP-4835'),
(548, 'FAP-4836'),
(549, 'FAP-4837'),
(550, 'FAP-4838'),
(551, 'FAP-4839'),
(552, 'FAP-4840'),
(553, 'FAP-4841'),
(554, 'FAP-4842'),
(555, 'FAP-4843'),
(556, 'FAP-4844'),
(557, 'FAP-4845'),
(558, 'FAP-4846'),
(559, 'FAP-4847'),
(560, 'FAP-4848'),
(561, 'FAP-4849'),
(562, 'FAP-4850'),
(563, 'FAP-4851'),
(564, 'FAP-4852'),
(565, 'FAP-4853'),
(566, 'FAP-4854'),
(567, 'FAP-4855'),
(568, 'FAP-4856'),
(569, 'FAP-4857'),
(570, 'FAP-4859'),
(571, 'FAP-4860'),
(572, 'FAP-4862'),
(573, 'FAP-4863'),
(574, 'FAP-4864'),
(575, 'FAP-4865'),
(576, 'FAP-4865/1'),
(577, 'FAP-4866'),
(578, 'FAP-4867'),
(579, 'FAP-4868'),
(580, 'FAP-4869'),
(581, 'FAP-4870'),
(582, 'FAP-4871'),
(583, 'FAP-4872'),
(584, 'FAP-4872/1'),
(585, 'FAP-4873'),
(586, 'FAP-4874'),
(587, 'FAP-4875'),
(588, 'FAP-4891'),
(589, 'FAP-4892'),
(590, 'FAP-5217'),
(591, 'FAP-5301'),
(592, 'FAP-5302'),
(593, 'FAP-5303'),
(594, 'FAP-5305'),
(595, 'FAP-5306'),
(596, 'FAP-5307'),
(597, 'FAP-5308'),
(598, 'FAP-5812'),
(599, 'FAP-6000'),
(600, 'FAP-6001'),
(601, 'FAP-6002'),
(602, 'FAP-6003'),
(603, 'FAP-6003/1'),
(604, 'FAP-6004'),
(605, 'FAP-6005'),
(606, 'FAP-6006'),
(607, 'FAP-6007'),
(608, 'FAP-6008'),
(609, 'FAP-6009'),
(610, 'FAP-6010'),
(611, 'FAP-6012'),
(612, 'FAP-6012/2'),
(613, 'FAP-6013'),
(614, 'FAP-6014'),
(615, 'FAP-6125'),
(616, 'FAP-6126'),
(617, 'FAP-7006'),
(618, 'FAP-7007'),
(619, 'FAP-7008'),
(620, 'FAP-7010'),
(621, 'FAP-7013'),
(622, 'FAP-8995'),
(623, 'FAP-8999'),
(624, 'FAP-9000'),
(625, 'FAP-9001'),
(626, 'FAP-9002'),
(627, 'FAP-9003'),
(628, 'FAP-9004'),
(629, 'FAP-9006'),
(630, 'FAP-9007'),
(631, 'FAP-9008'),
(632, 'FAP-9009'),
(633, 'FAP-9010'),
(634, 'FAP-9011'),
(635, 'FAP-9012'),
(636, 'FAP-9013'),
(637, 'FAP-9014'),
(638, 'FAP-9015'),
(639, 'FAP-9016'),
(640, 'FAP-9017'),
(641, 'FAP-9018'),
(642, 'FAP-9018/1'),
(643, 'FAP-9019'),
(644, 'FAP-9021'),
(645, 'FAP-9022'),
(646, 'FAP-9023'),
(647, 'FAP-9024'),
(648, 'FAP-9025'),
(649, 'FAP-9026'),
(650, 'FAP-9027'),
(651, 'FAP-9028'),
(652, 'FAP-9029'),
(653, 'FAP-9030'),
(654, 'FAP-9031'),
(655, 'FAP-9032'),
(656, 'FAP-9033'),
(657, 'FAP-9034'),
(658, 'FAP-9035'),
(659, 'FAP-9036/2'),
(660, 'FAP-9038'),
(661, 'FAP-9039'),
(662, 'FAP-9040'),
(663, 'FAP-9041'),
(664, 'FAP-9043'),
(665, 'FAP-9044'),
(666, 'FAP-9045'),
(667, 'FAP-9046'),
(668, 'FAP-9047'),
(669, 'FAP-9049'),
(670, 'FAP-9050'),
(671, 'FAP-9051'),
(672, 'FAP-9052'),
(673, 'FAP-9053'),
(674, 'FAP-9054'),
(675, 'FAP-9055'),
(676, 'FAP-9056'),
(677, 'FAP-9059'),
(678, 'FAP-9060'),
(679, 'FAP-9062'),
(680, 'FAP-9063'),
(681, 'FAP-9065'),
(682, 'FAP-9113'),
(683, 'FAP-9114'),
(684, 'FAP-9115'),
(685, 'FAP-9116'),
(686, 'FAP-9118'),
(687, 'FAP-9119'),
(688, 'FAP-9120'),
(689, 'FAP-9121'),
(690, 'FAP-9135'),
(691, 'FAP-9271'),
(692, 'FAP-9272'),
(693, 'FAP-9273'),
(694, 'FAP-9274'),
(695, 'FAP-9275'),
(696, 'FAP-9276'),
(697, 'FAP-9277'),
(698, 'FAP-9278'),
(699, 'FAP-9279'),
(700, 'FAP-9280'),
(701, 'FAP-9281'),
(702, 'FAP-9283'),
(703, 'FAP-9284'),
(704, 'FAP-9285'),
(705, 'FAP-9286'),
(706, 'FAP-9287'),
(707, 'FAP-9288'),
(708, 'FAP-9289'),
(709, 'FAP-9291'),
(710, 'FAP-9292'),
(711, 'FAP-9295'),
(712, 'FAP-9296'),
(713, 'FAP-9297'),
(714, 'FAP-9297/1'),
(715, 'FAP-9469'),
(2678, 'FC-017'),
(2679, 'FC-018'),
(2680, 'FC-019'),
(2124, 'FC-080'),
(2125, 'FC-081'),
(1647, 'FC-107'),
(1648, 'FC-109'),
(1649, 'FC-110'),
(1650, 'FC-111'),
(1651, 'FC-112'),
(1652, 'FC-113'),
(1653, 'FC-114'),
(1654, 'FC-116'),
(1882, 'FC-117'),
(1883, 'FC-118'),
(1655, 'FC-119'),
(1656, 'FC-121'),
(1657, 'FC-124'),
(2749, 'FC-126'),
(1658, 'FC-127'),
(1659, 'FC-128'),
(2666, 'FC-2301'),
(2667, 'FC-2302'),
(2668, 'FC-4058'),
(1632, 'FCC-015'),
(1633, 'FCC-020'),
(1634, 'FCC-101'),
(1635, 'FCC-105'),
(1636, 'FCC-200'),
(1637, 'FCC-208'),
(1638, 'FCC-216'),
(1639, 'FCC-2160'),
(1640, 'FCC-216TC'),
(1641, 'FCC-225'),
(1642, 'FCC-226'),
(1643, 'FCC-227'),
(1644, 'FCC-242'),
(2120, 'FCC-400'),
(2121, 'FCC-401'),
(2122, 'FCC-404'),
(2123, 'FCC-404/1'),
(1645, 'FCC.406'),
(1884, 'FCD-0016'),
(1885, 'FCD-0110'),
(1886, 'FCD-0183'),
(1887, 'FCD-0184'),
(1888, 'FCD-0185'),
(1889, 'FCD-0186'),
(1890, 'FCD-0296'),
(1891, 'FCD-0500'),
(1892, 'FCD-0600'),
(1893, 'FCD-0601'),
(1894, 'FCD-0602'),
(1895, 'FCD-0651'),
(1896, 'FCD-0710'),
(1897, 'FCD-0710/1'),
(1898, 'FCD-0720'),
(1899, 'FCD-0720/1'),
(1900, 'FCD-0721'),
(1901, 'FCD-0722'),
(1902, 'FCD-0723'),
(1903, 'FCD-0724'),
(1904, 'FCD-0725'),
(1905, 'FCD-0726'),
(1906, 'FCD-0729'),
(1907, 'FCD-0730'),
(1908, 'FCD-0731'),
(1909, 'FCD-0732'),
(1910, 'FCD-0733'),
(1911, 'FCD-0734'),
(1912, 'FCD-0740'),
(1913, 'FCD-0742'),
(1914, 'FCD-0750'),
(1915, 'FCD-0754'),
(1916, 'FCD-0766'),
(1917, 'FCD-0767'),
(1918, 'FCD-0768'),
(1919, 'FCD-0769'),
(1920, 'FCD-0770'),
(1921, 'FCD-0771'),
(1922, 'FCD-0772'),
(1923, 'FCD-0775'),
(1924, 'FCD-0776'),
(1925, 'FCD-0777'),
(1926, 'FCD-0778'),
(1927, 'FCD-0780'),
(1928, 'FCD-0782'),
(1929, 'FCD-0783'),
(1930, 'FCD-0784'),
(1931, 'FCD-0785'),
(1932, 'FCD-0786'),
(1933, 'FCD-0787'),
(1934, 'FCD-0789'),
(1935, 'FCD-0790'),
(1936, 'FCD-0796'),
(1937, 'FCD-0816/1'),
(1938, 'FCD-0816/2'),
(1939, 'FCD-0910'),
(1940, 'FCD-0911'),
(1941, 'FCD-0913'),
(1942, 'FCD-0914'),
(1943, 'FCD-0915'),
(1944, 'FCD-0916'),
(1945, 'FCD-0919'),
(2756, 'FCD-0922'),
(1946, 'FCD-0936'),
(1947, 'FCD-0951'),
(1948, 'FCD-0952'),
(1949, 'FCD-0967'),
(1950, 'FCD-1119'),
(1951, 'FCD-2035'),
(1952, 'FCD-2037'),
(1953, 'FCD-2039'),
(1954, 'FCD-2040'),
(1955, 'FCD-2041'),
(1956, 'FCD-2042'),
(1957, 'FCD-2043'),
(1958, 'FCD-2044'),
(1959, 'FCD-2045B'),
(1960, 'FCD-2046'),
(1961, 'FCD-2048'),
(1962, 'FCD-2049'),
(1963, 'FCD-2050'),
(1964, 'FCD-2051'),
(1965, 'FCD-2052'),
(1966, 'FCD-2056'),
(1967, 'FCD-2057'),
(1968, 'FCD-2058'),
(1969, 'FCD-2058B'),
(1970, 'FCD-2059'),
(1971, 'FCD-2060'),
(1972, 'FCD-2061'),
(1973, 'FCD-2062'),
(1974, 'FCD-2063'),
(1975, 'FCD-2063/1'),
(1976, 'FCD-2063/2'),
(1977, 'FCD-2063/3'),
(1978, 'FCD-2063/4'),
(1979, 'FCD-2063/5'),
(1980, 'FCD-2064'),
(1981, 'FCD-2065'),
(1982, 'FCD-2066'),
(1983, 'FCD-2066/1'),
(1984, 'FCD-2066/2'),
(1985, 'FCD-2066/3'),
(1986, 'FCD-2066/4'),
(1987, 'FCD-2067'),
(1988, 'FCD-2067/1'),
(1989, 'FCD-2067/2'),
(1990, 'FCD-2068'),
(1991, 'FCD-2068/1'),
(1992, 'FCD-2069'),
(1993, 'FCD-2070'),
(1994, 'FCD-2071'),
(1995, 'FCD-2072'),
(1996, 'FCD-2073'),
(1997, 'FCD-2074'),
(1998, 'FCD-2075'),
(1999, 'FCD-2076'),
(2000, 'FCD-2076/1'),
(2001, 'FCD-2076/2'),
(2002, 'FCD-2076/3'),
(2003, 'FCD-2080'),
(2004, 'FCD-2083'),
(2005, 'FCD-2084'),
(2006, 'FCD-2091'),
(2007, 'FCD-2092'),
(2008, 'FCD-2093'),
(2009, 'FCD-2096'),
(2010, 'FCD-2097'),
(2011, 'FCD-2099'),
(2012, 'FCD-2101'),
(2013, 'FCD-2110'),
(2014, 'FCD-2111'),
(2015, 'FCD-2157'),
(2016, 'FCD-2158'),
(2017, 'FCD-2158/1'),
(2018, 'FCD-2158/2'),
(2019, 'FCD-2159'),
(2020, 'FCD-2159/1'),
(2021, 'FCD-2161'),
(2022, 'FCD-2162'),
(2023, 'FCD-2163'),
(2024, 'FCD-2164'),
(2025, 'FCD-2165'),
(2026, 'FCD-2166'),
(2027, 'FCD-2167'),
(2028, 'FCD-2170'),
(2029, 'FCD-2171'),
(2030, 'FCD-2181'),
(2031, 'FCD-2183'),
(2725, 'FCD-2184'),
(2032, 'FCD-2202'),
(2033, 'FCD-2203'),
(2034, 'FCD-2204'),
(2035, 'FCD-2206'),
(2036, 'FCD-2207'),
(2037, 'FCD-2208'),
(2038, 'FCD-2209'),
(2039, 'FCD-2210'),
(2040, 'FCD-2211'),
(2041, 'FCD-2212'),
(2042, 'FCD-2213'),
(2043, 'FCD-2214'),
(2044, 'FCD-2215'),
(2045, 'FCD-2218'),
(2046, 'FCD-2220'),
(2047, 'FCD-2221'),
(2732, 'FCD-2222'),
(2758, 'FCD-2227'),
(2048, 'FCD-2293'),
(2049, 'FCD-2730'),
(2050, 'FCD-3010'),
(2051, 'FCD-3011'),
(2062, 'FCD-30120'),
(2063, 'FCD-30122'),
(2064, 'FCD-30123'),
(2065, 'FCD-30124'),
(2066, 'FCD-30125'),
(2052, 'FCD-3026'),
(2053, 'FCD-3027'),
(2054, 'FCD-3028'),
(2055, 'FCD-3045'),
(2056, 'FCD-3060'),
(2057, 'FCD-3061'),
(2058, 'FCD-3090'),
(2059, 'FCD-3090/1'),
(2060, 'FCD-3090/2'),
(2061, 'FCD-3090/3'),
(2067, 'FCD-4000'),
(1646, 'FCG-001'),
(1673, 'FCI-0200'),
(1674, 'FCI-0823'),
(1675, 'FCI-1100B'),
(1676, 'FCI-1100C'),
(1677, 'FCI-1100E'),
(1678, 'FCI-1100S'),
(1679, 'FCI-1101/4'),
(1680, 'FCI-1101/5'),
(1681, 'FCI-1101A'),
(1682, 'FCI-1101C'),
(1683, 'FCI-1101S'),
(1684, 'FCI-1101T'),
(1685, 'FCI-1102'),
(1686, 'FCI-1102/1'),
(1687, 'FCI-1102/2'),
(1688, 'FCI-1102/3'),
(1689, 'FCI-1103A'),
(1690, 'FCI-1103E'),
(1691, 'FCI-1103S'),
(1692, 'FCI-1104A'),
(1693, 'FCI-1104C'),
(1694, 'FCI-1104L'),
(1695, 'FCI-1105A'),
(1696, 'FCI-1106A'),
(1697, 'FCI-1106C'),
(1698, 'FCI-1107A'),
(1699, 'FCI-1107C'),
(1700, 'FCI-1108A'),
(1701, 'FCI-1109A'),
(1702, 'FCI-1109C'),
(1703, 'FCI-1110B'),
(1704, 'FCI-1110S'),
(1705, 'FCI-1111S'),
(1706, 'FCI-1112'),
(1707, 'FCI-1117'),
(1708, 'FCI-1118'),
(1709, 'FCI-1120'),
(1710, 'FCI-1163'),
(1711, 'FCI-1164'),
(1712, 'FCI-1269'),
(1713, 'FCI-1288'),
(1714, 'FCI-1289'),
(1715, 'FCI-1290'),
(1716, 'FCI-1300'),
(1717, 'FCI-1301'),
(1718, 'FCI-1303'),
(1719, 'FCI-1304'),
(1720, 'FCI-1456'),
(1721, 'FCI-1566'),
(1722, 'FCI-1567'),
(1723, 'FCI-1600'),
(1724, 'FCI-1610'),
(1725, 'FCI-1615'),
(1726, 'FCI-1616'),
(1727, 'FCI-1618'),
(1728, 'FCI-1620'),
(1729, 'FCI-1630'),
(1730, 'FCI-1640'),
(1731, 'FCI-1650'),
(1732, 'FCI-1660'),
(1733, 'FCI-1670'),
(1734, 'FCI-1680'),
(1735, 'FCI-1690'),
(1736, 'FCI-1694'),
(1737, 'FCI-1695'),
(1738, 'FCI-1696'),
(1739, 'FCI-1697'),
(1740, 'FCI-1698'),
(1741, 'FCI-1699'),
(1742, 'FCI-1731'),
(1743, 'FCI-1732'),
(1744, 'FCI-1733'),
(1745, 'FCI-1734'),
(1746, 'FCI-1736'),
(1747, 'FCI-1739'),
(1748, 'FCI-1866'),
(1749, 'FCI-1866/1'),
(1750, 'FCI-1866/2'),
(1751, 'FCI-1866/3'),
(1752, 'FCI-1872'),
(1753, 'FCI-1880'),
(1755, 'FCI-1881'),
(1754, 'FCI-1883'),
(1756, 'FCI-1887'),
(1757, 'FCI-1906'),
(1758, 'FCI-1907'),
(1759, 'FCI-1947'),
(1760, 'FCI-1948'),
(2140, 'G14Y'),
(2141, 'G15Y'),
(2190, 'G15YC'),
(2142, 'G17Y'),
(2160, 'G17Y-4'),
(2191, 'G17YC'),
(2238, 'GJ-114-TO'),
(2239, 'GJ-118-TO'),
(2240, 'GJ-121-TO'),
(2241, 'GJ-125-TO'),
(2242, 'GJ-130-MA'),
(2250, 'GJ-1302-MA'),
(2243, 'GJ-131-MA'),
(2244, 'GJ-132-MA'),
(2245, 'GJ-152-HI'),
(2222, 'GJ-26-IS'),
(2246, 'GJ-260-NI'),
(2247, 'GJ-262-NI'),
(2248, 'GJ-263-NI'),
(2249, 'GJ-264-NI'),
(2223, 'GJ-28-IS'),
(2224, 'GJ-29-IS'),
(2728, 'GJ-29IS'),
(2225, 'GJ-37-MI'),
(2226, 'GJ-39-MI'),
(2227, 'GJ-53-MI'),
(2228, 'GJ-55-MI'),
(2229, 'GJ-59-NI'),
(2230, 'GJ-67-NI'),
(2231, 'GJ-68-NI'),
(2232, 'GJ-75-NI'),
(2233, 'GJ-84-NI'),
(2234, 'GJ-85-NI'),
(2235, 'GJ-88-NI'),
(2236, 'GJ-93-TO'),
(2237, 'GJ-94-TO'),
(2169, 'GR15Y'),
(2204, 'GR15YC'),
(2170, 'GR17Y'),
(2205, 'GR17YC'),
(2276, 'GX-102'),
(2277, 'GX-103'),
(2278, 'GX-106'),
(2279, 'GX-107'),
(2280, 'GX-108'),
(2281, 'GX-117'),
(2282, 'GX-120'),
(2283, 'GX-122'),
(2284, 'GX-123'),
(2285, 'GX-124'),
(2286, 'GX-125'),
(2287, 'GX-128'),
(2288, 'GX-129'),
(2289, 'GX-132'),
(2290, 'GX-135'),
(2291, 'GX-145'),
(2292, 'GX-148'),
(2293, 'GX-150'),
(2294, 'GX-2090'),
(2295, 'GX-2094'),
(2296, 'GX-2096'),
(2297, 'GX-2097'),
(2298, 'GX-2106'),
(2299, 'GX-2123'),
(2300, 'GX-3117'),
(2301, 'GX-3123'),
(2302, 'GX-3133'),
(2303, 'GX-3150'),
(2304, 'GX-4118'),
(2305, 'GX-4127'),
(2306, 'GX-4151'),
(2307, 'GX-4152'),
(2308, 'GX-4153'),
(2309, 'GX-4154'),
(2251, 'GX-59'),
(2252, 'GX-61'),
(2253, 'GX-63'),
(2254, 'GX-64'),
(2255, 'GX-66'),
(2256, 'GX-67'),
(2257, 'GX-68'),
(2258, 'GX-69'),
(2259, 'GX-70'),
(2260, 'GX-74'),
(2261, 'GX-76'),
(2262, 'GX-79'),
(2263, 'GX-80'),
(2264, 'GX-82'),
(2265, 'GX-83'),
(2266, 'GX-84'),
(2267, 'GX-86'),
(2268, 'GX-89'),
(2269, 'GX-90'),
(2270, 'GX-93'),
(2271, 'GX-94'),
(2272, 'GX-95'),
(2273, 'GX-96'),
(2274, 'GX-97'),
(2275, 'GX-99'),
(2143, 'H17Y'),
(2196, 'H17YC'),
(2736, 'JA 68 NI'),
(2344, 'JA-100-TO'),
(2345, 'JA-104-TO'),
(2346, 'JA-106-TO'),
(2347, 'JA-108-TO'),
(2348, 'JA-110-TO'),
(2349, 'JA-112-TO'),
(2350, 'JA-116-TO'),
(2351, 'JA-118-TO'),
(2352, 'JA-122-TO'),
(2353, 'JA-124-TO'),
(2354, 'JA-128-TO'),
(2355, 'JA-129-TO'),
(2326, 'JA-14-IS'),
(2356, 'JA-146-DA'),
(2327, 'JA-16-IS'),
(2357, 'JA-160-KO'),
(2358, 'JA-170-CA'),
(2359, 'JA-172-CA'),
(2360, 'JA-180-KU'),
(2328, 'JA-33-MI'),
(2329, 'JA-40-MI'),
(2330, 'JA-50-MI'),
(2331, 'JA-54-MI'),
(2332, 'JA-61-NI'),
(2333, 'JA-63-NI'),
(2334, 'JA-65-NI'),
(2335, 'JA-67-NI'),
(2336, 'JA-75-NI'),
(2337, 'JA-78-NI'),
(2325, 'JA-8-IS'),
(2338, 'JA-82-NI'),
(2339, 'JA-83-NI'),
(2340, 'JA-84-NI'),
(2341, 'JA-87-NI'),
(2342, 'JA-88-NI'),
(2343, 'JA-98-TO'),
(716, 'JFA-0009'),
(717, 'JFA-0101'),
(718, 'JFA-0101/1'),
(719, 'JFA-0101/2'),
(720, 'JFA-0101/3'),
(721, 'JFA-0103'),
(722, 'JFA-0103/1'),
(723, 'JFA-0104'),
(724, 'JFA-0105'),
(725, 'JFA-0108'),
(726, 'JFA-0109'),
(727, 'JFA-0111'),
(728, 'JFA-0112'),
(729, 'JFA-0116'),
(730, 'JFA-0116N'),
(731, 'JFA-0117'),
(732, 'JFA-0118'),
(733, 'JFA-0120'),
(734, 'JFA-0121'),
(735, 'JFA-0122'),
(736, 'JFA-0122/1'),
(737, 'JFA-0129'),
(738, 'JFA-0134'),
(739, 'JFA-0135'),
(740, 'JFA-0194'),
(741, 'JFA-0198'),
(742, 'JFA-0202'),
(743, 'JFA-0203'),
(2757, 'JFA-0217'),
(744, 'JFA-0226'),
(745, 'JFA-0227'),
(746, 'JFA-0227/1'),
(747, 'JFA-0231'),
(748, 'JFA-0233'),
(749, 'JFA-0236'),
(750, 'JFA-0237'),
(751, 'JFA-0238'),
(752, 'JFA-0239'),
(753, 'JFA-0241'),
(754, 'JFA-0245'),
(755, 'JFA-0247'),
(756, 'JFA-0249'),
(757, 'JFA-0251'),
(758, 'JFA-0252'),
(759, 'JFA-0253'),
(760, 'JFA-0257'),
(761, 'JFA-0276'),
(762, 'JFA-0277'),
(763, 'JFA-0278'),
(764, 'JFA-0280'),
(765, 'JFA-0281'),
(766, 'JFA-0283'),
(767, 'JFA-0284'),
(768, 'JFA-0285'),
(769, 'JFA-0286'),
(770, 'JFA-0287'),
(2768, 'JFA-0289'),
(771, 'JFA-0290'),
(772, 'JFA-0292'),
(773, 'JFA-0292/1'),
(775, 'JFA-0292/2'),
(776, 'JFA-0293'),
(777, 'JFA-0294'),
(778, 'JFA-0297'),
(779, 'JFA-0298'),
(780, 'JFA-0299'),
(781, 'JFA-0302'),
(782, 'JFA-0303'),
(783, 'JFA-0306'),
(784, 'JFA-0310'),
(785, 'JFA-0311'),
(786, 'JFA-0313'),
(787, 'JFA-0315'),
(788, 'JFA-0316'),
(789, 'JFA-0317'),
(790, 'JFA-0318'),
(791, 'JFA-0319'),
(792, 'JFA-0320'),
(793, 'JFA-0323'),
(794, 'JFA-0324'),
(795, 'JFA-0327'),
(796, 'JFA-0329'),
(797, 'JFA-0330'),
(798, 'JFA-0383'),
(799, 'JFA-0385'),
(800, 'JFA-0387'),
(801, 'JFA-0388'),
(802, 'JFA-0389'),
(803, 'JFA-0392'),
(804, 'JFA-0395'),
(805, 'JFA-0396'),
(806, 'JFA-0398'),
(807, 'JFA-0406'),
(808, 'JFA-0414'),
(809, 'JFA-0416'),
(810, 'JFA-0417'),
(811, 'JFA-0420'),
(812, 'JFA-0422'),
(813, 'JFA-0425'),
(814, 'JFA-0427'),
(815, 'JFA-0428'),
(816, 'JFA-0428/1'),
(817, 'JFA-0428/2'),
(818, 'JFA-0428/3'),
(819, 'JFA-0429'),
(820, 'JFA-0430'),
(821, 'JFA-0431'),
(822, 'JFA-0432/1'),
(823, 'JFA-0433'),
(824, 'JFA-0434'),
(825, 'JFA-0435'),
(826, 'JFA-0436'),
(827, 'JFA-0437'),
(828, 'JFA-0438'),
(829, 'JFA-0439'),
(830, 'JFA-0491'),
(831, 'JFA-0492'),
(832, 'JFA-0493'),
(833, 'JFA-0494/1'),
(834, 'JFA-0494/2'),
(835, 'JFA-0495'),
(836, 'JFA-0495/1'),
(837, 'JFA-0496'),
(838, 'JFA-0497'),
(839, 'JFA-0498'),
(840, 'JFA-0499'),
(841, 'JFA-0500'),
(842, 'JFA-0503'),
(843, 'JFA-0508'),
(844, 'JFA-0509'),
(845, 'JFA-0510'),
(846, 'JFA-0512'),
(847, 'JFA-0514'),
(848, 'JFA-0514/1'),
(849, 'JFA-0514/S'),
(850, 'JFA-0516'),
(851, 'JFA-0517'),
(852, 'JFA-0519'),
(853, 'JFA-0520/1'),
(854, 'JFA-0521'),
(855, 'JFA-0524'),
(856, 'JFA-0530'),
(857, 'JFA-0573'),
(858, 'JFA-0574'),
(859, 'JFA-0575'),
(860, 'JFA-0576'),
(861, 'JFA-0577'),
(862, 'JFA-0578'),
(863, 'JFA-0579'),
(864, 'JFA-0580'),
(865, 'JFA-0584'),
(866, 'JFA-0586'),
(867, 'JFA-0587'),
(868, 'JFA-0588'),
(869, 'JFA-0589'),
(870, 'JFA-0591'),
(871, 'JFA-0593'),
(872, 'JFA-0594'),
(873, 'JFA-0596'),
(874, 'JFA-0597'),
(875, 'JFA-0598'),
(876, 'JFA-0599'),
(877, 'JFA-0599/1'),
(878, 'JFA-0600'),
(879, 'JFA-0602'),
(880, 'JFA-0605'),
(881, 'JFA-0609'),
(882, 'JFA-0610'),
(883, 'JFA-0611'),
(884, 'JFA-0693'),
(885, 'JFA-0694'),
(886, 'JFA-0696'),
(887, 'JFA-0697'),
(888, 'JFA-0699'),
(889, 'JFA-0700'),
(890, 'JFA-0706'),
(891, 'JFA-0710'),
(892, 'JFA-0711'),
(893, 'JFA-0714'),
(894, 'JFA-0796'),
(895, 'JFA-0803'),
(896, 'JFA-0805'),
(897, 'JFA-0807'),
(898, 'JFA-0809'),
(899, 'JFA-0810'),
(900, 'JFA-0811'),
(901, 'JFA-0812'),
(902, 'JFA-0813'),
(903, 'JFA-0814'),
(904, 'JFA-0815'),
(905, 'JFA-0884'),
(906, 'JFA-0885'),
(907, 'JFA-0886'),
(908, 'JFA-0887'),
(909, 'JFA-0892'),
(910, 'JFA-0893'),
(911, 'JFA-0894'),
(912, 'JFA-0895'),
(913, 'JFA-0896'),
(914, 'JFA-0897'),
(915, 'JFA-0898'),
(916, 'JFA-0899'),
(917, 'JFA-0900'),
(918, 'JFA-0903'),
(919, 'JFA-0906'),
(920, 'JFA-0975'),
(921, 'JFA-0977'),
(922, 'JFA-0978'),
(923, 'JFA-0980'),
(924, 'JFA-0982'),
(925, 'JFA-0983'),
(926, 'JFA-0983/1'),
(927, 'JFA-0983/2'),
(928, 'JFA-0983/3'),
(929, 'JFA-0984/1'),
(930, 'JFA-0985'),
(931, 'JFA-0986'),
(932, 'JFA-0987'),
(933, 'JFA-0988'),
(934, 'JFA-0989'),
(935, 'JFA-0990'),
(936, 'JFA-0991'),
(937, 'JFA-0992'),
(938, 'JFA-0993'),
(939, 'JFA-0994'),
(940, 'JFA-0995'),
(941, 'JFA-0997'),
(942, 'JFA-0A00'),
(943, 'JFA-0A10'),
(944, 'JFA-0F00'),
(945, 'JFA-0F01'),
(946, 'JFA-0F02'),
(947, 'JFA-0F04'),
(2734, 'JFA-0F05'),
(948, 'JFA-0F10'),
(949, 'JFA-0F20'),
(950, 'JFA-0F30'),
(951, 'JFA-0F31'),
(952, 'JFA-0H01'),
(953, 'JFA-0H03'),
(954, 'JFA-0H04'),
(955, 'JFA-0H05'),
(956, 'JFA-0H06'),
(957, 'JFA-0H07'),
(958, 'JFA-0H09'),
(959, 'JFA-0H10'),
(960, 'JFA-0H12'),
(961, 'JFA-0H13'),
(962, 'JFA-0H14'),
(963, 'JFA-0H16'),
(964, 'JFA-0H17'),
(965, 'JFA-0H18'),
(966, 'JFA-0H20'),
(967, 'JFA-0H21'),
(968, 'JFA-0H22'),
(969, 'JFA-0H23'),
(970, 'JFA-0H24'),
(971, 'JFA-0H25'),
(972, 'JFA-0H26'),
(973, 'JFA-0H27'),
(974, 'JFA-0H29'),
(975, 'JFA-0H30'),
(976, 'JFA-0H31'),
(977, 'JFA-0H35'),
(978, 'JFA-0HU0'),
(979, 'JFA-0J00'),
(980, 'JFA-0J01'),
(981, 'JFA-0J02'),
(982, 'JFA-0J03'),
(983, 'JFA-0J05'),
(984, 'JFA-0K01'),
(985, 'JFA-0K01/1'),
(986, 'JFA-0K02/1'),
(987, 'JFA-0K03/1'),
(988, 'JFA-0K04/1'),
(989, 'JFA-0K07'),
(990, 'JFA-0K08'),
(991, 'JFA-0K09/1'),
(992, 'JFA-0K10'),
(993, 'JFA-0K11'),
(994, 'JFA-0K14'),
(995, 'JFA-0K15'),
(996, 'JFA-0K16'),
(997, 'JFA-0K18'),
(998, 'JFA-0K19'),
(999, 'JFA-0K21'),
(1000, 'JFA-0K22'),
(1001, 'JFA-0L00'),
(1002, 'JFA-0M00'),
(1003, 'JFA-0M01'),
(1004, 'JFA-0M02'),
(1005, 'JFA-0M03'),
(1006, 'JFA-0M04'),
(1007, 'JFA-0M05'),
(1008, 'JFA-0M06'),
(1009, 'JFA-0M07'),
(1010, 'JFA-0M08'),
(1011, 'JFA-0M09'),
(1012, 'JFA-0M14'),
(1013, 'JFA-0M15'),
(1014, 'JFA-0M19'),
(1015, 'JFA-0M20'),
(1016, 'JFA-0M24'),
(1017, 'JFA-0M25'),
(1018, 'JFA-0M26'),
(1019, 'JFA-0M28'),
(1020, 'JFA-0M29'),
(1021, 'JFA-0M32'),
(1022, 'JFA-0M36'),
(1023, 'JFA-0M39'),
(2765, 'JFA-0M58'),
(1034, 'JFA-0S00'),
(1035, 'JFA-0S01'),
(1036, 'JFA-0S02'),
(1037, 'JFA-0S03'),
(1024, 'JFA-0W00'),
(1025, 'JFA-0W01'),
(1026, 'JFA-0W02'),
(1027, 'JFA-0W03'),
(1028, 'JFA-0W04'),
(1029, 'JFA-0W07'),
(1030, 'JFA-0W08'),
(1031, 'JFA-0W09'),
(1032, 'JFA-0W10'),
(1033, 'JFA-0W13'),
(2766, 'JFA-289'),
(774, 'JFA-292/1P'),
(2742, 'JFC 214'),
(1761, 'JFC-013'),
(1762, 'JFC-102'),
(2068, 'JFC-106'),
(2069, 'JFC-109'),
(1763, 'JFC-110'),
(1764, 'JFC-111'),
(1660, 'JFC-115'),
(2070, 'JFC-119'),
(1765, 'JFC-150'),
(2071, 'JFC-197'),
(1766, 'JFC-198'),
(2072, 'JFC-199'),
(1767, 'JFC-206'),
(2073, 'JFC-207'),
(2074, 'JFC-207/2'),
(2075, 'JFC-215'),
(1768, 'JFC-216'),
(1769, 'JFC-224'),
(1770, 'JFC-225'),
(1771, 'JFC-226'),
(1772, 'JFC-227'),
(1773, 'JFC-233'),
(1774, 'JFC-235'),
(1775, 'JFC-235/1'),
(1776, 'JFC-237'),
(1661, 'JFC-238'),
(2076, 'JFC-240'),
(1777, 'JFC-243'),
(1778, 'JFC-243/1'),
(1779, 'JFC-246'),
(1780, 'JFC-246/1'),
(1781, 'JFC-247'),
(2077, 'JFC-248'),
(1782, 'JFC-284'),
(1783, 'JFC-285'),
(1784, 'JFC-286'),
(1785, 'JFC-293'),
(2078, 'JFC-295'),
(1786, 'JFC-296'),
(1787, 'JFC-297'),
(1788, 'JFC-298'),
(1789, 'JFC-299'),
(1662, 'JFC-302'),
(2079, 'JFC-303'),
(1790, 'JFC-312'),
(1791, 'JFC-313'),
(1792, 'JFC-315'),
(1793, 'JFC-316'),
(2080, 'JFC-317'),
(1794, 'JFC-383'),
(1795, 'JFC-391'),
(1796, 'JFC-393'),
(1797, 'JFC-394'),
(1798, 'JFC-394/1'),
(1799, 'JFC-397'),
(1800, 'JFC-398'),
(1801, 'JFC-399'),
(1802, 'JFC-409'),
(1803, 'JFC-411'),
(1804, 'JFC-412'),
(1805, 'JFC-413'),
(1806, 'JFC-414'),
(1807, 'JFC-419'),
(1808, 'JFC-420'),
(1809, 'JFC-450'),
(1810, 'JFC-451'),
(1811, 'JFC-452'),
(1812, 'JFC-453'),
(1813, 'JFC-455'),
(2746, 'JFC-457'),
(1814, 'JFC-458'),
(1815, 'JFC-498'),
(1816, 'JFC-498/1'),
(1817, 'JFC-499'),
(2081, 'JFC-500'),
(1663, 'JFC-501'),
(2082, 'JFC-502'),
(1664, 'JFC-503'),
(1819, 'JFC-504'),
(1820, 'JFC-505'),
(1821, 'JFC-506'),
(1822, 'JFC-508'),
(2085, 'JFC-509'),
(2086, 'JFC-509/1'),
(2087, 'JFC-509/4'),
(1823, 'JFC-510'),
(1824, 'JFC-511'),
(1825, 'JFC-514'),
(1826, 'JFC-516'),
(1827, 'JFC-518'),
(1828, 'JFC-519'),
(1829, 'JFC-521'),
(1830, 'JFC-522'),
(1831, 'JFC-550'),
(2088, 'JFC-574'),
(2089, 'JFC-582'),
(2090, 'JFC-583'),
(1832, 'JFC-585'),
(1833, 'JFC-590'),
(1834, 'JFC-593'),
(1835, 'JFC-594'),
(1836, 'JFC-597'),
(1837, 'JFC-598'),
(1838, 'JFC-599'),
(1665, 'JFC-601'),
(2091, 'JFC-606'),
(2092, 'JFC-607'),
(1666, 'JFC-614'),
(1839, 'JFC-619'),
(1840, 'JFC-692'),
(1841, 'JFC-694'),
(1842, 'JFC-699'),
(1843, 'JFC-708'),
(1844, 'JFC-797'),
(1845, 'JFC-799'),
(1667, 'JFC-800'),
(1846, 'JFC-809'),
(1847, 'JFC-810'),
(1668, 'JFC-811'),
(1669, 'JFC-812'),
(1670, 'JFC-813'),
(1849, 'JFC-823'),
(1850, 'JFC-887'),
(2764, 'JFC-889'),
(2093, 'JFC-894'),
(1851, 'JFC-896'),
(1852, 'JFC-897'),
(1853, 'JFC-898'),
(1671, 'JFC-899'),
(2094, 'JFC-901'),
(2095, 'JFC-910'),
(2096, 'JFC-995'),
(2097, 'JFC-997'),
(2098, 'JFC-998'),
(2099, 'JFC-999'),
(1854, 'JFC-E00'),
(1855, 'JFC-E21'),
(1856, 'JFC-F00'),
(1857, 'JFC-H01'),
(1858, 'JFC-H02'),
(1859, 'JFC-H05'),
(1860, 'JFC-H06'),
(1861, 'JFC-H07'),
(2100, 'JFC-H09'),
(2101, 'JFC-H10'),
(1862, 'JFC-H13'),
(1863, 'JFC-H18'),
(1864, 'JFC-H19'),
(2102, 'JFC-H21'),
(1865, 'JFC-H22'),
(1866, 'JFC-H23'),
(1867, 'JFC-H24'),
(1868, 'JFC-H25'),
(1869, 'JFC-H26'),
(2760, 'JFC-H27'),
(2103, 'JFC-J01'),
(2104, 'JFC-K00'),
(2105, 'JFC-K01'),
(1870, 'JFC-K02'),
(2106, 'JFC-K03'),
(1871, 'JFC-K05'),
(2107, 'JFC-K05/1'),
(2108, 'JFC-K05/2'),
(2109, 'JFC-K05/3'),
(2110, 'JFC-K05/4'),
(1872, 'JFC-K05/5'),
(1873, 'JFC-K06'),
(1874, 'JFC-K07'),
(1875, 'JFC-K09'),
(1876, 'JFC-K11'),
(2111, 'JFC-K12'),
(1877, 'JFC-K13'),
(1878, 'JFC-K14'),
(1879, 'JFC-K22'),
(1880, 'JFC-K50'),
(2112, 'JFC-L00'),
(2113, 'JFC-L01'),
(1672, 'JFC-W00'),
(2762, 'JFO-0019'),
(1257, 'JFO-010'),
(1268, 'JFO-0101'),
(1269, 'JFO-0102'),
(1270, 'JFO-0103'),
(1271, 'JFO-0109'),
(1258, 'JFO-011'),
(1272, 'JFO-0110'),
(1273, 'JFO-0110E'),
(1274, 'JFO-0111'),
(1275, 'JFO-0112'),
(1276, 'JFO-0113'),
(1277, 'JFO-0114'),
(1278, 'JFO-0117'),
(1259, 'JFO-012'),
(1260, 'JFO-013'),
(1261, 'JFO-014'),
(1262, 'JFO-015'),
(1263, 'JFO-016'),
(1264, 'JFO-017'),
(1279, 'JFO-0195'),
(1280, 'JFO-0197'),
(1281, 'JFO-0198'),
(1282, 'JFO-0200'),
(1283, 'JFO-0206'),
(1284, 'JFO-0210'),
(1285, 'JFO-0210/1'),
(1286, 'JFO-0211'),
(1287, 'JFO-0212'),
(1288, 'JFO-0213'),
(1289, 'JFO-0214'),
(1290, 'JFO-0215'),
(1265, 'JFO-022'),
(1291, 'JFO-0279'),
(1292, 'JFO-0297'),
(1293, 'JFO-0298'),
(1294, 'JFO-0301'),
(1295, 'JFO-0302'),
(1296, 'JFO-0306'),
(1297, 'JFO-0307'),
(1298, 'JFO-0310'),
(1299, 'JFO-0311'),
(1300, 'JFO-0313'),
(1301, 'JFO-0314'),
(1302, 'JFO-0315'),
(1266, 'JFO-033'),
(1303, 'JFO-0396'),
(1304, 'JFO-0398'),
(1305, 'JFO-0404'),
(1306, 'JFO-0406'),
(1307, 'JFO-0407'),
(1308, 'JFO-0409'),
(1309, 'JFO-0410'),
(1310, 'JFO-0411'),
(1311, 'JFO-0490'),
(1312, 'JFO-0498'),
(1267, 'JFO-050'),
(1313, 'JFO-0501'),
(1314, 'JFO-0504'),
(1315, 'JFO-0505'),
(1316, 'JFO-0505P'),
(1317, 'JFO-0506'),
(1318, 'JFO-0507'),
(1319, 'JFO-0510'),
(1320, 'JFO-0511'),
(1321, 'JFO-0581'),
(1322, 'JFO-0582'),
(1323, 'JFO-0583'),
(1324, 'JFO-0592'),
(1325, 'JFO-0593'),
(1326, 'JFO-0594'),
(1327, 'JFO-0595'),
(1328, 'JFO-0597'),
(1329, 'JFO-0598'),
(1330, 'JFO-0599'),
(1331, 'JFO-0601'),
(1332, 'JFO-0602'),
(1333, 'JFO-0603'),
(1334, 'JFO-0604'),
(1335, 'JFO-0606'),
(1336, 'JFO-0704'),
(1337, 'JFO-0705'),
(1338, 'JFO-0802'),
(1339, 'JFO-0890'),
(1340, 'JFO-0895'),
(1341, 'JFO-0896'),
(1342, 'JFO-0898'),
(1343, 'JFO-0898/1'),
(1344, 'JFO-0899'),
(1345, 'JFO-0902'),
(1346, 'JFO-0903'),
(1347, 'JFO-0906'),
(1348, 'JFO-0908'),
(1349, 'JFO-0909'),
(1350, 'JFO-0912'),
(1351, 'JFO-0970'),
(1352, 'JFO-0981'),
(1353, 'JFO-0984'),
(1354, 'JFO-0985'),
(1355, 'JFO-0989'),
(1356, 'JFO-0997'),
(1357, 'JFO-0997/1'),
(1358, 'JFO-0F01'),
(1359, 'JFO-0F02'),
(1360, 'JFO-0F30'),
(1361, 'JFO-0J00'),
(1362, 'JFO-0K00'),
(1363, 'JFO-0K01/1'),
(1364, 'JFO-0K01/2'),
(1365, 'JFO-0K06'),
(1366, 'JFO-0M00'),
(1367, 'JFO-0W00'),
(2669, 'JJ-0001'),
(2670, 'JJ-0002'),
(2671, 'JJ-0003'),
(2672, 'JJ-0004'),
(2673, 'JJ-0005'),
(2595, 'K-91-H-DC'),
(2596, 'K-91-L-DC'),
(2594, 'K-91/1'),
(2591, 'K-91/2'),
(2593, 'K-91/2-24'),
(2592, 'K-91/2-DC'),
(2754, 'K97/2'),
(2144, 'L12Y'),
(2126, 'L14'),
(2145, 'L14Y'),
(2154, 'L14Y-4'),
(2192, 'L14YC'),
(2127, 'L15'),
(2146, 'L15Y'),
(2155, 'L15Y-4'),
(2193, 'L15YC'),
(2128, 'L17'),
(2147, 'L17Y'),
(2156, 'L17Y-4'),
(2194, 'L17YC'),
(2129, 'L19'),
(2148, 'L19Y'),
(2195, 'L19YC'),
(2171, 'LR12'),
(2172, 'LR14'),
(2174, 'LR14Y'),
(2173, 'LR15'),
(2185, 'LR15T'),
(2216, 'LR15TC'),
(2175, 'LR15Y'),
(2206, 'LR15YC'),
(2215, 'LR15ZC'),
(2186, 'LR17T'),
(2218, 'LR17TC'),
(2176, 'LR17Y'),
(2207, 'LR17YC'),
(2217, 'LR17ZC'),
(2177, 'LR19Y'),
(2134, 'M14C'),
(2197, 'M14YC'),
(2597, 'N-2-DC'),
(2361, 'N-76'),
(2149, 'N12Y'),
(2130, 'N14'),
(2150, 'N14Y'),
(2157, 'N14Y-4'),
(2131, 'N15'),
(2151, 'N15Y'),
(2158, 'N15Y-4'),
(2198, 'N15YC'),
(2132, 'N17'),
(2152, 'N17Y'),
(2159, 'N17Y-4'),
(2199, 'N17YC'),
(2133, 'N19'),
(2219, 'P15'),
(2221, 'P15Y'),
(2642, 'PB-0201'),
(2647, 'PB-0203'),
(2643, 'PB-0204'),
(2644, 'PB-0205'),
(2648, 'PB-0206'),
(2649, 'PB-0207'),
(2650, 'PB-0208'),
(2651, 'PB-0209'),
(2645, 'PB-0211'),
(2652, 'PB-0212'),
(2653, 'PB-0213'),
(2646, 'PB-0214'),
(2654, 'PB-0215'),
(2655, 'PB-0216'),
(2656, 'PB-0217'),
(2657, 'PB-0218'),
(2658, 'PB-0219'),
(2659, 'PB-0220'),
(2660, 'PB-0221'),
(2661, 'PB-0222'),
(2662, 'PB-0223'),
(2663, 'PB-0224'),
(2664, 'PB-0225'),
(2665, 'PB-3058'),
(2362, 'R-78'),
(2365, 'SR-125'),
(2363, 'SR-60'),
(2364, 'SR-73'),
(2178, 'SR15Y'),
(2208, 'SR15YC'),
(2371, 'SX-116'),
(2372, 'SX-119'),
(2373, 'SX-120'),
(2374, 'SX-126'),
(2366, 'SX-67'),
(2367, 'SX-72'),
(2368, 'SX-75'),
(2369, 'SX-77'),
(2370, 'SX-95'),
(2135, 'T14'),
(2136, 'T15'),
(2598, 'T91/2N-DC'),
(2375, 'TA-20-B'),
(2376, 'TA-30-B'),
(2377, 'TA-50-E'),
(2378, 'TA-55-E'),
(2379, 'TA-60-B'),
(2686, 'TC-0401'),
(2687, 'TC-0402'),
(2688, 'TC-0403'),
(2689, 'TC-0404'),
(2380, 'TR-007seg'),
(2381, 'TR-011seg'),
(2382, 'TR-017seg'),
(2731, 'U-C101 (FCI-1600)'),
(2724, 'U-CI02'),
(2220, 'U15'),
(2690, 'VD-1010'),
(2704, 'VD-1012'),
(2691, 'VD-1020'),
(2699, 'VD-1021'),
(2692, 'VD-1030'),
(2700, 'VD-1031'),
(2705, 'VD-1032'),
(2693, 'VD-1040'),
(2701, 'VD-1041'),
(2694, 'VD-1050'),
(2695, 'VD-1060'),
(2702, 'VD-1061'),
(2696, 'VD-1070'),
(2697, 'VD-1080'),
(2698, 'VD-1090'),
(2703, 'VD-1101'),
(2706, 'VD-1202'),
(2179, 'VR17JY'),
(2114, 'WA-100'),
(2115, 'WA-200'),
(2116, 'WA-300'),
(1149, 'WAP 105'),
(1145, 'WAP-102'),
(1146, 'WAP-103'),
(1147, 'WAP-103S'),
(1148, 'WAP-104'),
(1150, 'WAP-105S'),
(1151, 'WAP-106S'),
(1152, 'WAP-107S'),
(1153, 'WAP-108'),
(1154, 'WAP-108S'),
(1155, 'WAP-109'),
(1156, 'WAP-110'),
(1157, 'WAP-111'),
(1158, 'WAP-113'),
(1159, 'WAP-114'),
(1160, 'WAP-116'),
(2755, 'WAP-119'),
(1161, 'WAP-139'),
(2733, 'WAP-139/S'),
(1162, 'WAP-144'),
(1163, 'WAP-147'),
(1164, 'WAP-161'),
(1165, 'WAP-162'),
(1166, 'WAP-163'),
(1167, 'WAP-165'),
(1168, 'WAP-179'),
(1169, 'WAP-180'),
(1170, 'WAP-181'),
(1171, 'WAP-182'),
(1172, 'WAP-183'),
(1173, 'WAP-184'),
(1174, 'WAP-185'),
(1175, 'WAP-186'),
(1176, 'WAP-187'),
(2753, 'WAP-187S'),
(1177, 'WAP-189'),
(1178, 'WAP-190'),
(1179, 'WAP-193'),
(1180, 'WAP-194'),
(1181, 'WAP-198'),
(1182, 'WAP-200/4-S'),
(1183, 'WAP-200/6-S'),
(1184, 'WAP-202'),
(1185, 'WAP-202/7'),
(1186, 'WAP-203'),
(1187, 'WAP-204'),
(1188, 'WAP-205'),
(1189, 'WAP-206'),
(1190, 'WAP-207'),
(1191, 'WAP-208'),
(1192, 'WAP-210'),
(1193, 'WAP-211'),
(1194, 'WAP-212'),
(1195, 'WAP-213'),
(1196, 'WAP-220'),
(1197, 'WAP-221'),
(1198, 'WAP-223'),
(1199, 'WAP-239'),
(1200, 'WAP-241'),
(1201, 'WAP-243'),
(1202, 'WAP-249'),
(1203, 'WAP-250'),
(1204, 'WAP-251'),
(1205, 'WAP-266'),
(1206, 'WAP-268'),
(1207, 'WAP-277'),
(1208, 'WAP-280'),
(1209, 'WAP-281'),
(1210, 'WAP-285'),
(1211, 'WAP-286'),
(1212, 'WAP-287'),
(1213, 'WAP-287/7'),
(1214, 'WAP-294'),
(1215, 'WAP-304'),
(1216, 'WAP-311'),
(1217, 'WAP-319'),
(1218, 'WAP-321'),
(1219, 'WAP-330'),
(2752, 'WAP-330/S'),
(1220, 'WAP-331'),
(1221, 'WAP-332'),
(1222, 'WAP-342'),
(1223, 'WAP-343'),
(1224, 'WAP-346'),
(1225, 'WAP-348'),
(1226, 'WAP-349'),
(1227, 'WAP-349/7'),
(1228, 'WAP-354'),
(1229, 'WAP-359'),
(1230, 'WAP-360/5'),
(1231, 'WAP-361'),
(1232, 'WAP-364'),
(1233, 'WAP-365'),
(1234, 'WAP-369'),
(1235, 'WAP-374'),
(1236, 'WAP-380'),
(1237, 'WAP-382'),
(1238, 'WAP-382/S'),
(1239, 'WAP-383'),
(1240, 'WAP-384'),
(1241, 'WAP-385'),
(1242, 'WAP-385/7'),
(1243, 'WAP-601'),
(1244, 'WAP-602'),
(1245, 'WAP-603'),
(1246, 'WAP-604'),
(1247, 'WAP-605'),
(1248, 'WAP-606'),
(1249, 'WAP-700'),
(1250, 'WAP-800'),
(2599, 'WDE-1203'),
(2600, 'WDE-1204'),
(2713, 'WEA-001'),
(2714, 'WEA-004'),
(2715, 'WEA-006'),
(2716, 'WEA-007'),
(1629, 'WEH-0001'),
(1630, 'WEH-0002'),
(1631, 'WEH-0003'),
(1469, 'WEO-0001'),
(1470, 'WEO-0002'),
(1471, 'WEO-0003'),
(1472, 'WEO-0004'),
(1473, 'WEO-0005'),
(1474, 'WEO-0006'),
(1475, 'WEO-0007'),
(1476, 'WEO-0008'),
(1477, 'WEO-0009'),
(1478, 'WEO-0010'),
(1479, 'WEO-0011'),
(1480, 'WEO-0012'),
(1481, 'WEO-0014'),
(1482, 'WEO-0015'),
(1483, 'WEO-0016'),
(1484, 'WEO-0017'),
(1485, 'WEO-0018'),
(1486, 'WEO-0019'),
(1487, 'WEO-509'),
(1488, 'WEO-510'),
(1489, 'WEO-511'),
(1490, 'WEO-512'),
(1491, 'WEO-513'),
(1492, 'WEO-514'),
(1493, 'WEO-515/1'),
(1494, 'WEO-517'),
(1495, 'WEO-517/1'),
(1496, 'WEO-522'),
(1497, 'WEO-522/2'),
(1498, 'WEO-523'),
(1499, 'WEO-523/1'),
(1500, 'WEO-524'),
(1501, 'WEO-591/1'),
(1502, 'WEO-600'),
(1503, 'WEO-610'),
(1504, 'WEO-620'),
(2607, 'WFC-201'),
(2608, 'WFC-241'),
(2609, 'WFC-251'),
(2610, 'WFC-281'),
(2611, 'WFC-321'),
(2612, 'WFF-501'),
(2613, 'WFF-521'),
(2614, 'WFF-541'),
(2615, 'WFF-561'),
(2616, 'WFF-581'),
(2617, 'WFF-601'),
(2618, 'WFF-621'),
(2619, 'WFF-641'),
(2620, 'WFMA-001'),
(2621, 'WFMA-101'),
(2622, 'WFMA-201'),
(2623, 'WFMA-301'),
(2624, 'WFMA-401'),
(2625, 'WFMA-901'),
(2626, 'WFMI-661'),
(2627, 'WFMI-681'),
(2628, 'WFMI-701'),
(2629, 'WFMI-721'),
(2630, 'WFMI-741'),
(2631, 'WFMI-761'),
(2632, 'WFMI-781'),
(2633, 'WFMI-801'),
(2634, 'WFV-701'),
(2635, 'WFV-721'),
(2636, 'WFV-741'),
(2637, 'WFV-801'),
(2638, 'WFV-821'),
(2639, 'WFV-841'),
(2640, 'WFV-861'),
(2641, 'WFV-881'),
(1409, 'WO 344'),
(1368, 'WO-110'),
(1369, 'WO-120'),
(1370, 'WO-130'),
(1371, 'WO-131'),
(1372, 'WO-132'),
(1375, 'WO-133'),
(1373, 'WO-136'),
(1374, 'WO-137'),
(1376, 'WO-140'),
(1377, 'WO-150'),
(1378, 'WO-151'),
(1379, 'WO-152'),
(1380, 'WO-153'),
(1381, 'WO-154'),
(1382, 'WO-160'),
(1383, 'WO-170'),
(1384, 'WO-180'),
(1385, 'WO-181'),
(1386, 'WO-190'),
(1387, 'WO-200'),
(1388, 'WO-205'),
(1389, 'WO-207'),
(1390, 'WO-210'),
(1391, 'WO-220'),
(1392, 'WO-230'),
(1393, 'WO-240'),
(1394, 'WO-250'),
(1395, 'WO-252'),
(1396, 'WO-260'),
(1397, 'WO-261'),
(1398, 'WO-270'),
(1399, 'WO-280'),
(1400, 'WO-290'),
(1401, 'WO-300'),
(1402, 'WO-310'),
(1403, 'WO-330'),
(1404, 'WO-331'),
(1405, 'WO-340'),
(1406, 'WO-341'),
(1407, 'WO-342'),
(1408, 'WO-343'),
(1410, 'WO-345'),
(1411, 'WO-350'),
(1412, 'WO-360'),
(1413, 'WO-370'),
(1414, 'WO-380'),
(1415, 'WO-390'),
(1416, 'WO-400'),
(1417, 'WO-410'),
(1418, 'WO-411'),
(1419, 'WO-420'),
(1420, 'WO-421'),
(1421, 'WO-430'),
(1422, 'WO-440'),
(1423, 'WO-450'),
(1424, 'WO-460'),
(1425, 'WO-470'),
(1426, 'WO-480'),
(1427, 'WO-490'),
(1428, 'WO-500'),
(1429, 'WO-510'),
(1430, 'WO-530'),
(1431, 'WO-540'),
(1432, 'WO-541'),
(1433, 'WO-550'),
(1434, 'WO-551'),
(1435, 'WO-560'),
(1436, 'WO-561'),
(1437, 'WO-570'),
(1438, 'WO-580'),
(1439, 'WO-590'),
(1440, 'WO-591'),
(1441, 'WO-592'),
(1442, 'WO-600'),
(1443, 'WO-601'),
(1444, 'WO-610'),
(1445, 'WO-612'),
(1446, 'WO-613'),
(1447, 'WO-620'),
(1448, 'WO-630'),
(1449, 'WO-640'),
(1450, 'WO-650'),
(1451, 'WO-660'),
(1452, 'WO-670'),
(1453, 'WO-680'),
(1454, 'WO-690'),
(1455, 'WO-700'),
(1456, 'WO-710'),
(1457, 'WO-711'),
(1458, 'WO-720'),
(1459, 'WO-730'),
(1460, 'WO-740'),
(1461, 'WO-750'),
(1462, 'WO-760'),
(1463, 'WO-800'),
(1505, 'WOE-100'),
(1506, 'WOE-110'),
(1507, 'WOE-120'),
(1508, 'WOE-130'),
(1509, 'WOE-131'),
(1510, 'WOE-210'),
(1511, 'WOE-211'),
(1512, 'WOE-212'),
(1513, 'WOE-213'),
(1514, 'WOE-214'),
(1515, 'WOE-215'),
(1516, 'WOE-216'),
(1517, 'WOE-220'),
(1518, 'WOE-221'),
(1519, 'WOE-222'),
(1520, 'WOE-223'),
(1521, 'WOE-224'),
(1522, 'WOE-226'),
(1523, 'WOE-230'),
(1524, 'WOE-231'),
(1525, 'WOE-232'),
(1526, 'WOE-233'),
(1527, 'WOE-234'),
(1528, 'WOE-240'),
(1529, 'WOE-241'),
(1530, 'WOE-242'),
(1531, 'WOE-243'),
(1532, 'WOE-244'),
(1533, 'WOE-245'),
(1534, 'WOE-246'),
(1535, 'WOE-250'),
(1536, 'WOE-251'),
(1537, 'WOE-300'),
(1538, 'WOE-300/1'),
(1539, 'WOE-300/2'),
(1540, 'WOE-300/3'),
(1541, 'WOE-300/4'),
(1542, 'WOE-301'),
(1543, 'WOE-302'),
(1544, 'WOE-303'),
(1545, 'WOE-304'),
(1546, 'WOE-305'),
(1547, 'WOE-306'),
(1548, 'WOE-307'),
(1549, 'WOE-308'),
(1550, 'WOE-309'),
(1551, 'WOE-310'),
(1552, 'WOE-311'),
(1553, 'WOE-312'),
(1554, 'WOE-313'),
(1555, 'WOE-314'),
(1556, 'WOE-346'),
(1557, 'WOE-400'),
(1558, 'WOE-401'),
(1559, 'WOE-402'),
(1560, 'WOE-403'),
(1561, 'WOE-410'),
(1562, 'WOE-420'),
(1563, 'WOE-430'),
(1564, 'WOE-440'),
(1565, 'WOE-441'),
(1566, 'WOE-450'),
(1567, 'WOE-451'),
(1568, 'WOE-452'),
(1569, 'WOE-453'),
(1570, 'WOE-454'),
(2748, 'WOE-455'),
(1571, 'WOE-457'),
(1572, 'WOE-458'),
(1573, 'WOE-460'),
(1574, 'WOE-471'),
(1575, 'WOE-500'),
(1576, 'WOE-505'),
(1577, 'WOE-506'),
(1578, 'WOE-510'),
(1579, 'WOE-600'),
(1580, 'WOE-610'),
(1581, 'WOE-611'),
(1582, 'WOE-612'),
(1583, 'WOE-613'),
(1584, 'WOE-614'),
(1585, 'WOE-620'),
(1586, 'WOE-621'),
(1587, 'WOE-622'),
(1588, 'WOE-623'),
(1589, 'WOE-624'),
(1590, 'WOE-625'),
(1591, 'WOE-630'),
(1592, 'WOE-631'),
(1593, 'WOE-640'),
(1594, 'WOE-641'),
(1595, 'WOE-650'),
(1596, 'WOE-652'),
(1597, 'WOE-660'),
(1598, 'WOE-670'),
(1599, 'WOE-680'),
(1600, 'WOE-691'),
(1601, 'WOE-700'),
(1602, 'WOE-710'),
(1603, 'WOE-710P'),
(1604, 'WOE-800'),
(1605, 'WOE-801'),
(1606, 'WOE-802'),
(1607, 'WOE-803'),
(1608, 'WOE-810'),
(1609, 'WOE-811'),
(1610, 'WOE-890'),
(1611, 'WOE-900'),
(1612, 'WOE-901'),
(1613, 'WOE-902'),
(1614, 'WOE-903'),
(1615, 'WOE-904'),
(1616, 'WOE-905'),
(1617, 'WOE-906'),
(1618, 'WOE-908'),
(1619, 'WOE-909'),
(1620, 'WOE-910'),
(1621, 'WOE-911'),
(1622, 'WOE-912'),
(1623, 'WOE-913'),
(1624, 'WOE-914'),
(1625, 'WOE-915'),
(1626, 'WOE-916'),
(1627, 'WOE-918'),
(1628, 'WOE-931'),
(1465, 'WOH-100'),
(1466, 'WOH-100/1'),
(1467, 'WOH-200'),
(1468, 'WOH-300'),
(1464, 'WOP-1001'),
(2743, 'WR 373'),
(1038, 'WR-001'),
(1039, 'WR-002'),
(1040, 'WR-003'),
(1041, 'WR-005'),
(1042, 'WR-006'),
(1043, 'WR-007'),
(1044, 'WR-008'),
(1045, 'WR-009'),
(1046, 'WR-100'),
(1047, 'WR-106'),
(1048, 'WR-107'),
(1049, 'WR-109'),
(1050, 'WR-114'),
(1051, 'WR-117'),
(1052, 'WR-160'),
(1053, 'WR-191'),
(1054, 'WR-192'),
(1055, 'WR-194'),
(1056, 'WR-196'),
(1057, 'WR-197'),
(1058, 'WR-198'),
(1059, 'WR-199/7'),
(1060, 'WR-200'),
(1069, 'WR-200/10'),
(1061, 'WR-200/2'),
(1062, 'WR-200/3'),
(1063, 'WR-200/4'),
(1064, 'WR-200/5'),
(1065, 'WR-200/6'),
(1066, 'WR-200/7'),
(1067, 'WR-200/8'),
(2730, 'WR-200/8 S'),
(1068, 'WR-200/9'),
(1070, 'WR-201'),
(1071, 'WR-203'),
(1072, 'WR-204'),
(1073, 'WR-205'),
(1074, 'WR-206'),
(1075, 'WR-209'),
(1076, 'WR-210'),
(1077, 'WR-211'),
(1078, 'WR-212'),
(1079, 'WR-213'),
(1080, 'WR-223'),
(1081, 'WR-224'),
(1082, 'WR-226'),
(1083, 'WR-229'),
(1084, 'WR-232'),
(1085, 'WR-236'),
(1086, 'WR-244'),
(1087, 'WR-245'),
(1088, 'WR-251'),
(1089, 'WR-252'),
(1090, 'WR-256'),
(1091, 'WR-257/1'),
(1092, 'WR-257/3'),
(1093, 'WR-263'),
(1094, 'WR-265/1'),
(1095, 'WR-274'),
(1096, 'WR-275'),
(1097, 'WR-278'),
(1098, 'WR-281'),
(1099, 'WR-282'),
(1100, 'WR-283'),
(1101, 'WR-286/1'),
(1102, 'WR-293'),
(1103, 'WR-295'),
(1104, 'WR-300'),
(1105, 'WR-308'),
(1106, 'WR-311'),
(1107, 'WR-314'),
(1108, 'WR-314/1'),
(1109, 'WR-316'),
(1110, 'WR-317'),
(1111, 'WR-325'),
(1112, 'WR-326'),
(1113, 'WR-327/1'),
(1114, 'WR-335'),
(1115, 'WR-346'),
(1116, 'WR-347'),
(1117, 'WR-348'),
(1118, 'WR-348/1'),
(1119, 'WR-349'),
(1120, 'WR-355/7'),
(1121, 'WR-361'),
(1122, 'WR-362'),
(1123, 'WR-363'),
(1124, 'WR-364'),
(1125, 'WR-365'),
(1126, 'WR-366'),
(1127, 'WR-368'),
(1128, 'WR-369'),
(1129, 'WR-371'),
(1130, 'WR-400'),
(1131, 'WR-406/2'),
(1132, 'WR-407'),
(1133, 'WR-408'),
(1134, 'WR-500'),
(1135, 'WR-600'),
(1136, 'WR-700'),
(1137, 'WR-744'),
(1138, 'WR-800'),
(1139, 'WR-900'),
(1140, 'WR923GNC'),
(1141, 'WR924GNC'),
(1142, 'WR930GNC'),
(1143, 'WR966GNC'),
(1144, 'WR979GNC'),
(2601, 'WRE-1404'),
(2602, 'WRE-1405'),
(2603, 'WRE-2205'),
(2604, 'WRE-2405'),
(2605, 'WRE-7204'),
(2606, 'WRE-7205'),
(2117, 'WSC-0.7'),
(2118, 'WSC-1.00'),
(2119, 'WSC-1.4'),
(2383, 'XD-1204'),
(2384, 'XD-1207'),
(2385, 'XD-1211'),
(2209, 'XR15YC'),
(2210, 'XR17YC'),
(2180, 'ZR15Y'),
(2181, 'ZR17Y'),
(2211, 'ZR17YC');

-- --------------------------------------------------------

--
-- Table structure for table `reclamos`
--

CREATE TABLE `reclamos` (
  `id_reclamo` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `cantidad_total` varchar(100) DEFAULT NULL,
  `observacion` text,
  `fecha` date DEFAULT NULL,
  `fecha_emision` date DEFAULT NULL,
  `fecha_recepcion` date DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `id_origen` int(11) DEFAULT NULL,
  `lote` varchar(200) DEFAULT NULL,
  `id_resultado` int(11) DEFAULT NULL,
  `nro_reclamo` varchar(200) DEFAULT NULL,
  `cant_infundados` varchar(200) DEFAULT NULL,
  `cant_fundados` varchar(200) DEFAULT NULL,
  `cant_tema_comercial` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reclamos`
--

INSERT INTO `reclamos` (`id_reclamo`, `id_cliente`, `id_producto`, `id`, `cantidad_total`, `observacion`, `fecha`, `fecha_emision`, `fecha_recepcion`, `motivo`, `id_origen`, `lote`, `id_resultado`, `nro_reclamo`, `cant_infundados`, `cant_fundados`, `cant_tema_comercial`) VALUES
(1170, 125, 914, 12, '40', '', '2016-02-25', NULL, '2016-02-25', 'Por exceso de cantidad.', 1, '-', 20, '2452', '0', '0', '40'),
(1171, 233, 1043, 12, '1', '', '2016-02-25', '2016-02-24', '2016-02-25', 'Abollado.', 1, '20/10/11', 14, '2453', '0', '1', '0'),
(1172, 233, 1724, 6, '2', '', '2016-02-25', '2016-02-24', '2016-02-25', 'Se abrieron. Pierden.', 2, '-', 7, '2453', '0', '2', '0'),
(1173, 233, 1940, 1, '1', 'No esta detallado en el informe.', '2016-02-25', '2016-02-24', '2016-02-25', 'Pierden. Falla.', 1, '30/05/2014', 3, '2453', '0', '1', '0'),
(1174, 233, 1941, 6, '2', '', '2016-02-25', '2016-02-24', '2016-02-25', 'Pierden. Falla.', 1, '14/05/2015', 7, '2453', '0', '2', '0'),
(1175, 37, 1370, 12, '580', '', '2016-02-25', '2015-12-23', '2016-02-25', 'Sin descripción.', 2, '2015', 20, '2454', '0', '0', '580'),
(1176, 55, 1445, 3, '1', '', '2016-02-29', '2016-02-22', '2016-02-26', 'No enrosca.', 1, '05/03/15', 4, '2455', '1', '0', '0'),
(1177, 55, 2567, 4, '2', '', '2016-02-29', '2016-02-22', '2016-02-26', 'La baja no funciona.', 1, '-', 22, '2455', '0', '2', '0'),
(1178, 58, 282, 12, '12', '', '2016-03-01', '2016-02-15', '2016-03-01', 'Mal pedidos.', 1, '-', 20, '2456', '0', '0', '12'),
(1179, 3, 1163, 12, '6', '', '2016-03-03', '2016-02-25', '2016-03-03', 'Mal pedidos, filtros ok.', 1, '-', 20, '2457', '0', '0', '6'),
(1180, 3, 613, 12, '1', '', '2016-03-03', '2016-02-25', '2016-03-03', 'Dañado', 1, '25/10/2014', 14, '2457', '0', '1', '0'),
(1181, 3, 2016, 1, '2', '1 unidad con O´ring dañado por manipulación inadecuada.', '2016-03-03', '2016-02-25', '2016-03-03', 'Falla', 1, '-', 4, '2457', '2', '0', '0'),
(1182, 3, 1723, 12, '1', '', '2016-03-03', '2016-02-25', '2016-03-03', 'Se desarmó.', 1, 'L.17769   08/01/2015', 14, '2457', '0', '1', '0'),
(1183, 3, 2397, 12, '2', 'Conector dañado por manipulación inadecuada.', '2016-03-03', '2016-02-25', '2016-03-03', 'Fallan.', 1, '15H21', 14, '2457', '2', '0', '0'),
(1184, 3, 1403, 12, '1', '', '2016-03-03', '2016-02-25', '2016-03-03', 'Descentrado.', 1, '-', 17, '2457', '0', '1', '0'),
(1185, 3, 1622, 12, '6', '', '2016-03-03', '2016-02-25', '2016-03-03', 'Partida fallada.', 2, '16223', 13, '2457', '0', '6', '0'),
(1186, 3, 1585, 12, '1', '', '2016-03-03', '2016-02-25', '2016-03-03', 'Sin sello.', 2, '13021     15/02/2012', 16, '2457', '0', '1', '0'),
(1187, 3, 2071, 12, '1', '', '2016-03-03', '2016-02-25', '2016-03-03', 'Sin goma.', 1, '24/05/2015', 16, '2457', '0', '1', '0'),
(1189, 3, 702, 12, '20', '', '2016-03-03', '2016-02-25', '2016-03-03', 'Partida fallada.', 1, '23/11/2015', 13, '2457', '0', '20', '0'),
(1190, 3, 1602, 12, '5', '', '2016-03-03', '2016-02-25', '2016-03-03', 'Sin trabas.', 2, '20/05/2013     15623', 20, '2457', '0', '0', '5'),
(1191, 3, 76, 12, '1', '', '2016-03-03', '2016-02-25', '2016-03-03', 'No es el producto.', 1, '09/2015', 21, '2457', '0', '1', '0'),
(1192, 3, 323, 12, '3', '', '2016-03-03', '2016-02-25', '2016-03-03', 'Se desarma el sello.', 1, '1233/05', 3, '2457', '0', '3', '0'),
(1193, 152, 1004, 12, '200', '', '2016-03-03', '2016-03-02', '2016-03-03', 'Sin descripción.', 1, '13/07/2015', 20, '2458', '0', '0', '200'),
(1194, 46, 1980, 1, '1', '', '2016-03-03', '2016-03-01', '2016-03-03', 'Sin descripción.', 1, '1512', 4, '2459', '1', '0', '0'),
(1195, 234, 76, 5, '227', 'Es AKX-1457/C.', '2016-03-04', '2016-03-02', '2016-03-04', 'Fuera de medida.', 1, '09/15', 21, '2460', '0', '227', '0'),
(1196, 56, 1965, 6, '1', 'Se adjunta informe técnico.', '2016-03-04', '2016-03-02', '2016-03-04', 'Pierde por arriba.', 1, '-', 8, '2461', '1', '0', '0'),
(1197, 63, 2219, 2, '1', 'Falla no atribuible al producto. Informe tecnico adjunto. ', '2016-03-09', NULL, '2016-03-09', 'Se puso en corto.', 1, '-', 3, '2462', '1', '0', '0'),
(1198, 70, 2449, 12, '10', '2 unidades dañadas.', '2016-03-11', '2016-03-10', '2016-03-10', 'Garantia.', 1, '-', 20, '2463', '0', '2', '8'),
(1199, 70, 2487, 12, '40', '', '2016-03-11', '2016-03-10', '2016-03-10', 'Garantia.', 1, '-', 20, '2463', '0', '0', '40'),
(1200, 70, 2479, 12, '10', '3 unidades dañadas.', '2016-03-11', '2016-03-10', '2016-03-10', 'Garantia.', 1, '-', 20, '2463', '0', '3', '7'),
(1201, 70, 2445, 12, '50', '4 unidades dañadas.', '2016-03-11', '2016-03-10', '2016-03-10', 'Garantia.', 1, '-', 20, '2463', '0', '4', '46'),
(1202, 70, 2440, 12, '30', '4 unidades dañadas.', '2016-03-11', '2016-03-10', '2016-03-10', 'Garantia.', 1, '-', 20, '2463', '0', '4', '26'),
(1203, 11, 1724, 12, '1', '', '2016-03-14', NULL, '2016-03-14', 'Fallado.', 2, '14/05/2015', 14, '2464', '0', '1', '0'),
(1204, 11, 1729, 1, '1', '', '2016-03-14', NULL, '2016-03-14', 'Fallado.', 1, '-', 7, '2464', '0', '1', '0'),
(1205, 11, 1723, 1, '1', '', '2016-03-14', NULL, '2016-03-14', 'Fallado.', 2, '06/01/2015', 7, '2464', '0', '1', '0'),
(1206, 11, 1980, 1, '1', '', '2016-03-14', NULL, '2016-03-14', 'Fallado.', 1, '1512', 4, '2464', '1', '0', '0'),
(1207, 11, 2016, 1, '1', 'Se observa faltante de O´ ring y purgador.', '2016-03-14', NULL, '2016-03-14', 'Fallado.', 1, '-', 4, '2464', '1', '0', '0'),
(1208, 11, 1347, 1, '1', '', '2016-03-14', NULL, '2016-03-14', 'Fallado.', 1, '28/2014', 4, '2464', '1', '0', '0'),
(1209, 11, 1370, 1, '54', '', '2016-03-14', NULL, '2016-03-14', 'Fallado.', 2, '17/05/2012', 20, '2464', '0', '0', '54'),
(1210, 11, 1387, 1, '1', '', '2016-03-14', NULL, '2016-03-14', 'Fallado.', 2, '10/06/2015', 20, '2464', '0', '0', '1'),
(1211, 11, 1058, 12, '4', '', '2016-03-14', NULL, '2016-03-14', 'Mal estado.', 2, '15280      30/04/201', 14, '2464', '0', '4', '0'),
(1212, 11, 1396, 1, '1', 'Rosca defectuosa por manipulación inadecuada.', '2016-03-14', NULL, '2016-03-14', 'Fallado.', 1, '31/2014', 5, '2464', '1', '0', '0'),
(1213, 11, 1456, 6, '1', '', '2016-03-14', NULL, '2016-03-14', 'Pierde.', 1, '24/04/2013', 7, '2464', '0', '1', '0'),
(1214, 11, 1285, 1, '1', '', '2016-03-14', NULL, '2016-03-14', 'Pierde.', 1, '-', 10, '2464', '0', '1', '0'),
(1216, 234, 2011, 1, '1', '', '2016-03-15', NULL, '2016-03-15', 'Sensor fallado.', 1, '1240', 17, '2465', '0', '1', '0'),
(1217, 100, 2123, 12, '500', '', '2016-03-17', '2016-03-15', '2016-03-17', 'Mal pedidos.', 2, '-', 20, '2466', '0', '0', '500'),
(1218, 135, 1144, 12, '6', '', '2016-03-17', '2016-03-15', '2016-03-17', 'Mal pedidos.', 2, '-', 20, '2467', '0', '0', '6'),
(1219, 28, 748, 12, '2', '', '2016-03-18', '2016-03-17', '2016-03-18', 'No pedido.', 1, '-', 20, '2468', '0', '0', '2'),
(1220, 28, 2253, 12, '4', 'Ver informe tecnico adjunto.', '2016-03-18', '2016-03-17', '2016-03-18', 'Fallaron.', 1, 'L17', 2, '2468', '4', '0', '0'),
(1221, 28, 1429, 12, '1', '', '2016-03-18', '2016-03-17', '2016-03-18', 'Abollado.', 1, '12/11/2014', 14, '2468', '0', '1', '0'),
(1222, 43, 1285, 12, '2', '', '2016-03-23', '2016-03-18', '2016-03-18', 'Producto defectuoso.', 1, '04/24/15', 10, '2469', '0', '2', '0'),
(1223, 228, 1004, 12, '92', '', '2016-03-23', '2016-03-23', '2016-03-23', 'Fuera de medida.', 1, '18/07/2014', 13, '2470', '0', '92', '0'),
(1224, 169, 610, 12, '18', '', '2016-03-23', '2016-03-11', '2016-03-23', 'Sin descripción.', 2, '26/02/2016', 20, '2471', '0', '0', '18'),
(1225, 16, 1767, 12, '30', '', '2016-03-23', '2016-03-12', '2016-03-23', 'Mal pedido.', 1, '07/2014', 20, '2472', '0', '0', '30'),
(1226, 16, 1925, 12, '4', '', '2016-03-23', '2016-03-12', '2016-03-23', 'Fallado O ´ring.', 1, '03/2015', 3, '2472', '0', '4', '0'),
(1227, 16, 1951, 12, '1', '', '2016-03-23', '2016-03-12', '2016-03-23', 'Fallado. ( Rosca)', 1, '1516', 17, '2472', '0', '1', '0'),
(1228, 16, 1724, 1, '1', '', '2016-03-23', '2016-03-12', '2016-03-23', 'Fallado.', 2, '-', 4, '2472', '1', '0', '0'),
(1229, 16, 1062, 12, '1', '', '2016-03-23', '2016-03-12', '2016-03-23', 'Aplastado.', 2, '30/09/2014', 14, '2472', '0', '1', '0'),
(1230, 16, 1943, 12, '1', '', '2016-03-23', '2016-03-12', '2016-03-23', 'Pico roto.', 1, '15/01/2013', 14, '2472', '0', '1', '0'),
(1231, 16, 1704, 12, '1', '', '2016-03-23', '2016-03-12', '2016-03-23', 'Pico liso.', 1, '24/04/2015', 17, '2472', '0', '1', '0'),
(1232, 16, 2016, 1, '1', '', '2016-03-23', '2016-03-12', '2016-03-23', 'Sin descripción.', 1, '-', 7, '2472', '0', '1', '0'),
(1233, 16, 2070, 12, '1', '', '2016-03-23', '2016-03-12', '2016-03-23', 'O ´ring en la brida. (Adentro)', 1, '27/2014', 10, '2472', '0', '1', '0'),
(1234, 16, 149, 12, '1', '', '2016-03-23', '2016-03-12', '2016-03-23', 'Aplastado. (En un kit)', 1, '09/07/2015', 14, '2472', '0', '1', '0'),
(1235, 16, 2011, 12, '1', '', '2016-03-23', '2016-03-12', '2016-03-23', 'Sonajero.', 1, '1424', 17, '2472', '0', '1', '0'),
(1236, 16, 1602, 12, '1', 'Filtro usado.', '2016-03-23', '2016-03-12', '2016-03-23', 'Acusa falta de presion.', 1, '06/2015', 4, '2472', '1', '0', '0'),
(1237, 16, 1237, 12, '24', '', '2016-03-23', '2016-03-12', '2016-03-23', 'No se pidio.', 1, '19/08/2015', 20, '2472', '0', '0', '24'),
(1238, 16, 2220, 12, '100', '', '2016-03-23', '2016-03-12', '2016-03-23', 'No se pidieron.', 1, '-', 20, '2472', '0', '0', '100'),
(1239, 16, 2219, 12, '200', '', '2016-03-23', '2016-03-12', '2016-03-23', 'No se pidieron.', 1, '-', 20, '2472', '0', '0', '200'),
(1240, 16, 2221, 12, '200', '', '2016-03-23', '2016-03-12', '2016-03-23', 'No se pidieron.', 1, '-', 20, '2472', '0', '0', '200'),
(1241, 16, 2166, 12, '4', 'Ver informe tecnico.', '2016-03-23', '2016-03-12', '2016-03-23', 'Falladas.', 1, '-', 2, '2472', '4', '0', '0'),
(1242, 124, 2562, 12, '600', '', '2016-03-31', '2016-03-14', '2016-03-31', 'Sin descripción.', 1, '-', 20, '2473', '0', '0', '600'),
(1243, 28, 2430, 4, '2', 'Son 2 unidades. No es 1 unidad como detalla el informe.', '2016-03-31', '2016-03-21', '2016-03-31', 'No funcionan', 1, '-', 22, '2474', '0', '2', '0'),
(1244, 10, 2030, 6, '1', 'Ver informe tecnico.', '2016-03-31', '2016-03-23', '2016-03-31', 'Pierde.', 1, '-', 8, '2475', '1', '0', '0'),
(1245, 10, 2725, 1, '1', '', '2016-03-31', '2016-03-23', '2016-03-31', 'Fallo.', 1, '-', 3, '2475', '0', '1', '0'),
(1246, 46, 1951, 12, '3', '', '2016-03-31', '2016-03-28', '2016-03-31', 'Fallados.', 1, '1516', 20, '2476', '0', '0', '3'),
(1247, 46, 1951, 1, '1', 'Ver informe técnico.', '2016-03-31', '2016-03-28', '2016-03-31', 'Para control.', 1, '1516', 1, '2476', '0', '1', '0'),
(1248, 4, 76, 5, '1', '', '2016-04-05', '2016-03-17', '2016-04-01', 'Fuera de medida.', 1, '09/15', 21, '2477', '0', '1', '0'),
(1249, 4, 2398, 4, '2', '', '2016-04-05', '2016-03-17', '2016-04-01', 'Fallaron.', 1, 'I0J04', 3, '2477', '0', '2', '0'),
(1250, 4, 1723, 6, '2', '', '2016-04-05', '2016-03-17', '2016-04-01', 'Fallaron.', 1, '23/02/2015', 7, '2477', '1', '1', '0'),
(1251, 4, 2558, 12, '1', '', '2016-04-05', '2016-03-17', '2016-04-01', 'Rota.', 1, '-', 14, '2477', '0', '0', '1'),
(1252, 4, 1309, 1, '1', '', '2016-04-05', '2016-03-17', '2016-04-01', 'Fallo.', 1, 'JUL 30 14', 4, '2477', '1', '0', '0'),
(1253, 4, 1723, 12, '1', '', '2016-04-05', '2016-03-17', '2016-04-01', 'Fallo.', 1, '-', 4, '2477', '0', '0', '1'),
(1254, 4, 1682, 12, '1', '', '2016-04-05', '2016-03-17', '2016-04-01', 'Pico torcido.', 1, '18/07/2015', 14, '2477', '0', '1', '0'),
(1255, 4, 1723, 12, '1', '', '2016-04-05', '2016-03-17', '2016-04-01', 'Se partio.', 1, '17871 / 10/02/2015', 14, '2477', '0', '1', '0'),
(1256, 4, 2479, 12, '10', '', '2016-04-05', '2016-03-17', '2016-04-01', 'Rotas.', 1, '-', 14, '2477', '0', '10', '0'),
(1257, 4, 1347, 1, '1', 'Filtro usado.', '2016-04-05', '2016-03-17', '2016-04-01', 'Fallo.', 1, 'AUG 02 14', 4, '2477', '1', '0', '0'),
(1258, 4, 1382, 6, '1', 'Es WO-160, no es WO-153 como detalla el informe. Presencia de aceite entre junta y brida.', '2016-04-05', '2016-03-17', '2016-04-01', 'Pierde.', 1, '06/11/15', 8, '2477', '1', '0', '0'),
(1259, 4, 2440, 12, '10', '', '2016-04-05', '2016-03-17', '2016-04-01', 'Rotas.', 1, '-', 14, '2477', '0', '10', '0'),
(1260, 4, 1329, 1, '1', 'Ver informe tecnico.', '2016-04-05', '2016-03-17', '2016-04-01', 'Fallado.', 1, 'AUG 02 2014', 2, '2477', '1', '0', '0'),
(1261, 4, 1945, 12, '1', '', '2016-04-05', '2016-03-17', '2016-04-01', 'Pico roto.', 1, '12/2014', 14, '2477', '0', '1', '0'),
(1262, 4, 2050, 12, '1', '', '2016-04-05', '2016-03-17', '2016-04-01', 'Fallado.', 1, '1122', 14, '2477', '0', '1', '0'),
(1263, 70, 2440, 12, '10', '', '2016-04-05', NULL, '2016-04-01', 'Rotas.', 1, '-', 4, '2478', '10', '0', '0'),
(1264, 70, 2487, 4, '19', '', '2016-04-05', NULL, '2016-04-01', 'Falladas.', 1, '-', 4, '2478', '19', '0', '0'),
(1265, 70, 2269, 12, '2', 'Bujia dañada por exceso de torque.', '2016-04-05', NULL, '2016-04-01', 'Sin uso. Se corto tornillo.', 1, 'F93', 2, '2478', '2', '0', '0'),
(1266, 70, 2269, 2, '4', 'Bujias usadas.', '2016-04-05', NULL, '2016-04-01', 'Quemadas.', 1, 'F93', 2, '2478', '4', '0', '0'),
(1267, 20, 1445, 1, '1', '', '2016-04-06', '2016-03-29', '2016-04-01', 'Sin descripción.', 1, '01/23/2013', 7, '2479', '0', '1', '0'),
(1268, 20, 1941, 1, '5', '2 unidades no presentan fallas.', '2016-04-06', '2016-03-29', '2016-04-01', 'Sin descripción.', 1, '14/05/2015 // 30/10/2015', 3, '2479', '2', '3', '0'),
(1269, 20, 1941, 1, '4', '', '2016-04-06', '2016-03-29', '2016-04-01', 'Sin descripción.', 1, '14/05/2015 // 15/01/2015', 11, '2479', '0', '4', '0'),
(1270, 20, 2016, 1, '1', '', '2016-04-06', '2016-03-29', '2016-04-01', 'Sin descripción.', 1, '-', 4, '2479', '1', '0', '0'),
(1271, 20, 1975, 1, '1', '', '2016-04-06', '2016-03-29', '2016-04-01', 'Sin descripción.', 1, '1518', 12, '2479', '0', '1', '0'),
(1272, 20, 1723, 1, '1', '', '2016-04-06', '2016-03-29', '2016-04-01', 'Sin descripción.', 1, '05/02/2015 / 17871', 7, '2479', '0', '1', '0'),
(1273, 20, 1387, 12, '1', '', '2016-04-06', '2016-03-29', '2016-04-01', 'Sin descripción.', 2, '19NOV2014 / 17116', 16, '2479', '0', '1', '0'),
(1274, 20, 2540, 4, '1', 'Filamento de luz baja no funciona.', '2016-04-06', '2016-03-29', '2016-04-01', 'Sin descripción.', 1, '-', 3, '2479', '0', '1', '0'),
(1275, 82, 2541, 12, '50', '', '2016-04-07', '2016-03-30', '2016-04-05', 'Sin descripción.', 1, '-', 20, '2480', '0', '0', '50'),
(1276, 82, 2120, 12, '600', '', '2016-04-07', '2016-03-30', '2016-04-05', 'Sin descripción.', 1, '-', 20, '2480', '0', '0', '600'),
(1277, 82, 1645, 12, '200', '', '2016-04-07', '2016-03-30', '2016-04-05', 'Sin descripción.', 1, '-', 20, '2480', '0', '0', '200'),
(1278, 82, 1004, 12, '80', '', '2016-04-07', '2016-03-30', '2016-04-05', 'Sin descripción.', 1, '-', 20, '2480', '0', '0', '80'),
(1279, 82, 2549, 12, '20', '', '2016-04-07', '2016-03-30', '2016-04-05', 'Sin descripción.', 1, '-', 20, '2480', '0', '0', '20'),
(1280, 82, 2553, 12, '20', '', '2016-04-07', '2016-03-30', '2016-04-05', 'Sin descripción.', 1, '-', 20, '2480', '0', '0', '20'),
(1281, 82, 2563, 12, '30', '', '2016-04-07', '2016-03-30', '2016-04-05', 'Sin descripción.', 1, '-', 20, '2480', '0', '0', '30'),
(1282, 82, 2572, 12, '100', '', '2016-04-07', '2016-03-30', '2016-04-05', 'Sin descripción.', 1, '-', 20, '2480', '0', '0', '100'),
(1283, 82, 2584, 12, '20', '', '2016-04-07', '2016-03-30', '2016-04-05', 'Sin descripción.', 1, '-', 20, '2480', '0', '0', '20'),
(1284, 82, 2585, 12, '20', '', '2016-04-07', '2016-03-30', '2016-04-05', 'Sin descripción.', 1, '-', 20, '2480', '0', '0', '20'),
(1285, 82, 2589, 12, '20', '', '2016-04-07', '2016-03-30', '2016-04-05', 'Sin descripción.', 1, '-', 20, '2480', '0', '0', '20'),
(1286, 82, 2525, 12, '30', '', '2016-04-07', '2016-03-30', '2016-04-05', 'Sin descripción.', 1, '-', 20, '2480', '0', '0', '30'),
(1287, 82, 1266, 12, '100', '', '2016-04-07', '2016-03-30', '2016-04-05', 'Sin descripción.', 1, '-', 20, '2480', '0', '0', '100'),
(1288, 82, 1300, 12, '30', '', '2016-04-07', '2016-03-30', '2016-04-05', 'Sin descripción.', 1, '-', 20, '2480', '0', '0', '30'),
(1289, 82, 1308, 12, '30', '', '2016-04-07', '2016-03-30', '2016-04-05', 'Sin descripción.', 1, '-', 20, '2480', '0', '0', '30'),
(1290, 82, 2549, 12, '20', '', '2016-04-07', '2016-03-30', '2016-04-05', 'Sin descripción.', 1, '-', 20, '2480', '0', '0', '20'),
(1291, 82, 2554, 12, '24', '', '2016-04-07', '2016-03-30', '2016-04-05', 'Sin descripción.', 1, '-', 20, '2480', '0', '0', '24'),
(1292, 125, 206, 12, '100', '', '2016-04-12', NULL, '2016-04-08', 'Error de código.', 1, '-', 20, '2481', '0', '0', '100'),
(1293, 3, 1723, 12, '28', 'Filtros sin uso.', '2016-04-12', '2016-04-06', '2016-04-08', 'Partida fallada (antigua).', 1, '04/2015', 20, '2482', '0', '0', '28'),
(1294, 3, 554, 12, '20', '', '2016-04-12', '2016-04-06', '2016-04-08', 'No pedidos.', 1, '-', 20, '2482', '0', '0', '20'),
(1295, 3, 1171, 12, '2', '', '2016-04-12', '2016-04-06', '2016-04-08', 'No pedidos.', 1, '-', 20, '2482', '0', '0', '2'),
(1296, 3, 1425, 3, '1', '', '2016-04-12', '2016-04-06', '2016-04-08', 'Rosca.', 1, '06/16/15', 5, '2482', '0', '1', '0'),
(1297, 3, 1622, 12, '17', '', '2016-04-12', '2016-04-06', '2016-04-08', 'Partida fallada.', 2, '16223', 13, '2482', '0', '17', '0'),
(1298, 38, 444, 12, '100', '', '2016-04-12', NULL, '2016-04-11', 'Sin descripción.', 1, '-', 20, '2483', '0', '0', '100'),
(1299, 38, 621, 12, '60', '', '2016-04-12', NULL, '2016-04-11', 'Sin descripción.', 1, '-', 20, '2483', '0', '0', '60'),
(1300, 38, 1380, 12, '60', '', '2016-04-12', NULL, '2016-04-11', 'Sin descripción.', 1, '-', 20, '2483', '0', '0', '60'),
(1301, 24, 1732, 12, '54', 'Infome 413.', '2016-04-13', '2016-04-05', '2016-04-11', 'Elemento interno suelto y soporte de montaje roto.', 2, '-', 23, '2484', '0', '54', '0'),
(1302, 24, 1729, 12, '11', 'Informe Nº413', '2016-04-13', '2016-04-05', '2016-04-11', 'Elemento interno suelto y soporte de montaje roto.', 2, '-', 23, '2484', '0', '11', '0'),
(1303, 24, 1724, 12, '1', '', '2016-04-13', '2016-04-05', '2016-04-11', 'Elemento interno suelto y soporte de montaje roto.', 2, '-', 4, '2484', '0', '1', '0'),
(1304, 24, 1733, 12, '13', '', '2016-04-13', '2016-04-05', '2016-04-11', 'Elemento interno suelto y soporte de montaje roto.', 2, '-', 23, '2484', '0', '13', '0'),
(1305, 24, 1728, 12, '35', 'Informe Nº413. Son 35 unidades. No son 37 unidades como detalla el informe.', '2016-04-13', '2016-04-05', '2016-04-11', 'Elemento interno suelto y soporte de montaje roto.', 2, '-', 23, '2484', '0', '35', '0'),
(1306, 24, 1731, 12, '2', 'Informe Nº413. No esta detallado.', '2016-04-13', '2016-04-05', '2016-04-11', 'Elemento interno suelto y soporte de montaje roto.', 2, '-', 23, '2484', '0', '2', '0'),
(1307, 24, 1723, 12, '81', 'Informe Nº413', '2016-04-13', '2016-04-05', '2016-04-11', 'Elemento interno suelto y soporte de montaje roto.', 2, '-', 14, '2484', '0', '81', '0'),
(1308, 24, 1442, 6, '6', 'Informe Nº414', '2016-04-13', '2016-04-05', '2016-04-11', 'Defecto en el engrafado (pierde) y abolladuras.', 1, 'JUN 20 2014', 7, '2484', '0', '6', '0'),
(1309, 24, 817, 12, '1', '', '2016-04-13', '2016-04-05', '2016-04-11', 'Defecto en el medio filtrante (pliegos rotos).', 1, '07/07/2015', 14, '2484', '0', '1', '0'),
(1310, 24, 1983, 12, '20', '', '2016-04-13', '2016-04-05', '2016-04-11', 'Tienen edefecto en la carcasa (abolladuras).', 1, '1320', 14, '2484', '0', '20', '0'),
(1311, 17, 1444, 12, '60', '', '2016-04-15', '2016-03-28', '2016-04-14', 'Sin descripción.', 1, '-', 20, '2485', '0', '0', '60'),
(1312, 17, 1104, 12, '56', '', '2016-04-15', '2016-03-28', '2016-04-14', 'Sin descripción.', 2, '-', 20, '2485', '0', '0', '56'),
(1313, 17, 706, 12, '20', '', '2016-04-15', '2016-03-28', '2016-04-14', 'Sin descripción.', 1, '-', 20, '2485', '0', '0', '20'),
(1314, 79, 632, 12, '10', '', '2016-04-21', '2016-02-02', '2016-04-19', 'Error comercial.', 1, '-', 20, '2486', '0', '0', '10'),
(1315, 1, 1103, 12, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Abollado.', 2, '17734', 14, '2487', '0', '1', '0'),
(1316, 1, 1067, 12, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Abollado.', 2, '17322', 14, '2487', '0', '1', '0'),
(1317, 1, 1384, 12, '17', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Fallados.', 2, '16565 / 12/2013', 13, '2487', '0', '17', '0'),
(1318, 1, 2011, 12, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Fallado.', 1, '1534', 14, '2487', '0', '1', '0'),
(1319, 1, 1166, 12, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Abollado.', 2, '17073', 14, '2487', '0', '1', '0'),
(1320, 1, 1723, 12, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Fallado.', 1, '17871 / 10/02/15', 20, '2487', '0', '1', '0'),
(1321, 1, 1931, 5, '2', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Fallado.', 1, '09/2014', 6, '2487', '0', '2', '0'),
(1322, 1, 1382, 1, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Sin descripción.', 1, '06/11/15', 4, '2487', '1', '0', '0'),
(1323, 1, 1352, 1, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Sin descripción.', 1, 'SEP 24 2012', 4, '2487', '1', '0', '0'),
(1324, 1, 1969, 1, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Sin descripción.', 1, '04/30/15', 5, '2487', '0', '1', '0'),
(1325, 1, 1944, 12, '2', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Pico roto.', 1, '10/05/2012', 14, '2487', '0', '2', '0'),
(1326, 1, 1943, 12, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Pico roto.', 1, '15/01/15', 14, '2487', '0', '1', '0'),
(1327, 1, 2016, 12, '4', 'Rosca del purgador suelta.', '2016-04-21', '2016-01-19', '2016-04-18', 'Fallados.', 1, '-', 23, '2487', '0', '4', '0'),
(1328, 1, 2074, 12, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Fallados.', 1, '-', 23, '2487', '0', '1', '0'),
(1329, 1, 2555, 12, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Quemada.', 1, '-', 14, '2487', '0', '1', '0'),
(1330, 1, 1938, 12, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Fallado.', 2, '16762', 14, '2487', '0', '1', '0'),
(1331, 1, 1732, 12, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Despegado.', 2, '16695 / 26/03/14', 14, '2487', '0', '1', '0'),
(1332, 1, 1395, 12, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Abollado.', 1, '03/23/13', 14, '2487', '0', '1', '0'),
(1333, 1, 1737, 12, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Pico roto.', 1, '07-13', 14, '2487', '0', '1', '0'),
(1334, 1, 2430, 4, '2', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Quemadas.', 1, '-', 22, '2487', '0', '2', '0'),
(1335, 1, 1972, 12, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Fallado.', 1, '1240', 14, '2487', '0', '1', '0'),
(1336, 1, 2275, 2, '3', 'Bulbo de incandescencia inflamado por exceso de tiempo de suministro electrico. ', '2016-04-21', '2016-01-19', '2016-04-18', 'Quemadas.', 1, 'C74', 2, '2487', '3', '0', '0'),
(1337, 1, 2568, 4, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Quemada.', 1, '-', 22, '2487', '0', '1', '0'),
(1338, 1, 1945, 12, '2', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Pico roto.', 1, '2012', 14, '2487', '0', '2', '0'),
(1339, 1, 1902, 12, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Abollados,', 2, '2223/04', 14, '2487', '0', '1', '0'),
(1340, 1, 1370, 1, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Fallado.', 2, '17117 / 22/06/2015', 5, '2487', '0', '1', '0'),
(1341, 1, 1062, 12, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Abollado.', 2, '20/05/15', 14, '2487', '0', '1', '0'),
(1342, 1, 1251, 6, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Pierde aire.', 1, '-', 7, '2487', '0', '1', '0'),
(1343, 1, 1980, 1, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Fallado.', 1, '1110', 4, '2487', '1', '0', '0'),
(1344, 1, 1724, 12, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Fallado.', 2, '-', 23, '2487', '0', '1', '0'),
(1345, 1, 1729, 12, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Fallado.', 2, '-', 23, '2487', '0', '1', '0'),
(1346, 1, 1732, 12, '1', '', '2016-04-21', '2016-01-19', '2016-04-18', 'Fallado.', 2, '-', 23, '2487', '0', '1', '0'),
(1348, 1, 1328, 12, '200', '30 unidades estuche deteriorado.', '2016-04-21', NULL, '2016-04-18', 'Sin decripción.', 1, '-', 20, '2488', '0', '30', '170'),
(1349, 1, 1166, 12, '1', '', '2016-04-21', NULL, '2016-04-18', 'Abollado.', 2, '31/07/2014', 14, '2488', '0', '1', '0'),
(1350, 1, 772, 12, '1', '', '2016-04-21', NULL, '2016-04-18', 'Sin decripción.', 2, '23/08/2013 / 15861', 14, '2488', '0', '1', '0'),
(1351, 1, 576, 12, '1', '', '2016-04-21', NULL, '2016-04-18', 'Sin decripción.', 2, '15899', 14, '2488', '0', '1', '0'),
(1352, 1, 1093, 12, '1', '', '2016-04-21', NULL, '2016-04-18', 'Sin decripción.', 2, '02/07/213 / 15685', 14, '2488', '0', '1', '0'),
(1353, 1, 1370, 12, '1', '', '2016-04-21', NULL, '2016-04-18', 'Sin decripción.', 1, '01/07/2013', 16, '2488', '0', '1', '0'),
(1354, 1, 1723, 1, '1', '', '2016-04-21', NULL, '2016-04-18', 'Sin decripción.', 1, '2011', 7, '2488', '0', '1', '0'),
(1355, 1, 1724, 1, '1', '', '2016-04-21', NULL, '2016-04-18', 'Sin decripción.', 2, '07/2010', 7, '2488', '0', '1', '0'),
(1356, 1, 1733, 1, '1', '', '2016-04-21', NULL, '2016-04-18', 'Sin decripción.', 2, '03/05', 7, '2488', '0', '1', '0'),
(1357, 1, 1916, 12, '3', '', '2016-04-21', NULL, '2016-04-18', 'Sin decripción.', 2, '11/11/13', 17, '2488', '0', '3', '0'),
(1358, 1, 1506, 12, '1', '', '2016-04-21', NULL, '2016-04-18', 'Sin decripción.', 2, '17/06/2011', 14, '2488', '0', '1', '0'),
(1359, 1, 740, 12, '1', '', '2016-04-21', NULL, '2016-04-18', 'Sin decripción.', 1, '1241', 14, '2488', '0', '1', '0'),
(1360, 1, 2393, 4, '2', '', '2016-04-21', NULL, '2016-04-18', 'Sin decripción.', 1, '-', 22, '2488', '0', '2', '0'),
(1361, 1, 2389, 4, '2', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '-', 4, '2488', '2', '0', '0'),
(1362, 1, 2540, 4, '3', '1 unidad quemada.', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '-', 14, '2488', '0', '3', '0'),
(1363, 1, 2555, 4, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '-', 4, '2488', '1', '0', '0'),
(1364, 1, 1944, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '25/05/2013', 14, '2488', '0', '1', '0'),
(1365, 1, 1983, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '1342', 14, '2488', '0', '1', '0'),
(1366, 1, 1972, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '1240', 14, '2488', '0', '1', '0'),
(1367, 1, 1990, 1, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '1326', 7, '2488', '0', '1', '0'),
(1368, 1, 1968, 1, '2', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '1342', 4, '2488', '2', '0', '0'),
(1369, 1, 1969, 1, '4', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '11/08/14 / 11/04/14', 4, '2488', '4', '0', '0'),
(1370, 1, 715, 12, '3', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 2, '16377', 15, '2488', '0', '3', '0'),
(1371, 1, 715, 12, '2', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 2, '24/10/2013', 14, '2488', '0', '2', '0'),
(1372, 1, 493, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 2, '17057 / 21/07/14', 14, '2488', '0', '1', '0'),
(1373, 1, 1983, 1, '2', '1 pichado / 1 lemento suelto.', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '1342 / 1344', 7, '2488', '0', '2', '0'),
(1374, 1, 1945, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '05/2014', 14, '2488', '0', '1', '0'),
(1375, 1, 720, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '17262', 14, '2488', '0', '1', '0'),
(1376, 1, 1723, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '-', 23, '2488', '0', '1', '0'),
(1377, 1, 1384, 12, '31', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 2, '16565 / 12/2013', 13, '2488', '0', '31', '0'),
(1378, 1, 393, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '06/06/2012', 14, '2488', '0', '1', '0'),
(1379, 1, 1210, 12, '3', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 2, '17075', 14, '2488', '0', '3', '0'),
(1380, 1, 1980, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '1016', 14, '2488', '0', '1', '0'),
(1381, 1, 1972, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '1424', 14, '2488', '0', '1', '0'),
(1382, 1, 1972, 12, '1', 'Sin uso.', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '1344', 20, '2488', '0', '0', '1'),
(1383, 1, 1968, 1, '1', 'Rosca plastica mal confeccionada.', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '1344', 5, '2488', '0', '1', '0'),
(1384, 1, 1996, 1, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '1032', 7, '2488', '0', '1', '0'),
(1385, 1, 460, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '16890 / 17/05/14', 14, '2488', '0', '1', '0'),
(1386, 1, 1949, 1, '2', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '15/01/2013', 7, '2488', '0', '2', '0'),
(1387, 1, 1921, 12, '2', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '-', 17, '2488', '0', '2', '0'),
(1388, 1, 1506, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 2, '16051', 17, '2488', '0', '1', '0'),
(1389, 1, 1973, 1, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '1016', 4, '2488', '1', '0', '0'),
(1390, 1, 1981, 1, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '2016', 4, '2488', '1', '0', '0'),
(1391, 1, 2031, 1, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '-', 4, '2488', '1', '0', '0'),
(1392, 1, 1387, 1, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 2, '-', 4, '2488', '1', '0', '0'),
(1393, 1, 1370, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 2, '17117 / 25NOV14', 18, '2488', '0', '1', '0'),
(1394, 1, 1695, 1, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '-', 11, '2488', '0', '1', '0'),
(1395, 1, 1405, 1, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '06/03/10', 4, '2488', '1', '0', '0'),
(1396, 1, 1417, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, 'FEB 25 2012', 14, '2488', '0', '1', '0'),
(1397, 1, 1729, 1, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 2, '2010', 7, '2488', '0', '1', '0'),
(1398, 1, 1944, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '25/05/2013', 14, '2488', '0', '1', '0'),
(1399, 1, 1941, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '15/01/2013', 14, '2488', '0', '1', '0'),
(1400, 1, 1413, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '06/28/14', 17, '2488', '0', '1', '0'),
(1401, 1, 1931, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '11/2013', 14, '2488', '0', '1', '0'),
(1402, 1, 1622, 12, '69', '9 unidades usadas.', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 2, '16223', 13, '2488', '0', '69', '0'),
(1403, 1, 1622, 12, '12', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '11/2014', 20, '2488', '0', '0', '12'),
(1404, 1, 1240, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 2, '16718', 14, '2488', '0', '1', '0'),
(1405, 1, 1062, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '13/07/2007 / B1308', 14, '2488', '0', '1', '0'),
(1406, 1, 1105, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '17935', 14, '2488', '0', '1', '0'),
(1407, 1, 816, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 2, '07/01/2015', 14, '2488', '0', '1', '0'),
(1408, 1, 1941, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '14/05/2014', 14, '2488', '0', '1', '0'),
(1409, 1, 1987, 1, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '2016', 7, '2488', '0', '1', '0'),
(1410, 1, 610, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 2, '24/07/2015 / 18017 ', 14, '2488', '0', '1', '0'),
(1411, 1, 1945, 12, '2', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '10/08/2012', 14, '2488', '0', '2', '0'),
(1412, 1, 1981, 1, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '1424', 4, '2488', '1', '0', '0'),
(1413, 1, 1938, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 2, '16762', 16, '2488', '0', '1', '0'),
(1414, 1, 2395, 12, '2', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '-', 14, '2488', '0', '2', '0'),
(1415, 1, 1729, 12, '2', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 2, '04/2012', 23, '2488', '0', '2', '0'),
(1416, 1, 1732, 1, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 2, '2011', 7, '2488', '0', '1', '0'),
(1417, 1, 1421, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '-', 16, '2488', '0', '1', '0'),
(1418, 1, 1387, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, 'MAR 28 2015', 23, '2488', '0', '1', '0'),
(1419, 1, 1405, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '06/11/15', 18, '2488', '0', '1', '0'),
(1420, 1, 1951, 1, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '1512', 17, '2488', '0', '1', '0'),
(1421, 1, 1413, 1, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '01/26/15', 4, '2488', '1', '0', '0'),
(1422, 1, 1403, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '-', 16, '2488', '0', '1', '0'),
(1423, 1, 1387, 12, '2', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, 'MAR 28 2015', 14, '2488', '0', '2', '0'),
(1424, 1, 1599, 12, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '23/01/2015', 16, '2488', '0', '1', '0'),
(1425, 1, 1387, 12, '2', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 2, '10/06/2015 17116', 16, '2488', '0', '2', '0'),
(1426, 1, 1718, 1, '1', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '1531', 12, '2488', '0', '1', '0'),
(1427, 1, 1940, 12, '3', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '30/05/2014', 14, '2488', '0', '3', '0'),
(1428, 1, 1941, 12, '2', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '-', 14, '2488', '0', '2', '0'),
(1429, 1, 76, 12, '24', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '09/15', 21, '2488', '0', '24', '0'),
(1430, 1, 2016, 1, '5', '4 Unidades no entra  el acople. 1 unidad rosca de purgador suelta. ', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '-', 3, '2488', '0', '5', '0'),
(1431, 1, 2016, 1, '3', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '-', 4, '2488', '3', '0', '0'),
(1432, 1, 1968, 1, '2', '1 unidad usada.', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '1242 / 1252', 6, '2488', '0', '1', '1'),
(1433, 1, 1969, 1, '4', '', '2016-04-22', NULL, '2016-04-18', 'Sin decripción.', 1, '11/08/14', 6, '2488', '0', '4', '0'),
(1435, 65, 1918, 12, '100', '', '2016-04-22', '2016-04-13', '2016-04-21', 'Error de pedido. ', 1, '-', 20, '2489', '0', '0', '100'),
(1436, 128, 121, 12, '4', '', '2016-04-22', '2016-03-16', '2016-04-21', 'Mal pedido.', 1, '-', 20, '2490', '0', '0', '4'),
(1437, 233, 1954, 12, '1', '', '2016-04-22', '2016-03-29', '2016-04-19', 'Abollado (roto).', 1, '-', 14, '2491', '0', '1', '0'),
(1438, 233, 1405, 12, '1', '', '2016-04-22', '2016-03-29', '2016-04-19', 'Oxidado (roto).', 1, '06/11/15', 18, '2491', '0', '1', '0'),
(1439, 233, 1327, 12, '1', '', '2016-04-22', '2016-03-29', '2016-04-19', 'Roto.', 1, '11/05/09', 14, '2491', '0', '1', '0'),
(1440, 233, 2193, 2, '4', '', '2016-04-22', '2016-03-29', '2016-04-19', 'Bujias falladas.', 1, '-', 4, '2491', '4', '0', '0'),
(1441, 233, 1941, 1, '1', '', '2016-04-22', '2016-03-29', '2016-04-19', 'Falla.', 1, '09/05/2015', 12, '2491', '0', '1', '0'),
(1442, 233, 1098, 12, '3', '', '2016-04-22', '2016-03-29', '2016-04-19', 'Mal pedido.', 2, '-', 20, '2491', '0', '0', '3'),
(1443, 234, 2016, 1, '15', '', '2016-04-22', '2016-04-18', '2016-04-22', 'Sin descripción.', 1, '-', 6, '2492', '0', '8', '7'),
(1444, 234, 1375, 1, '1', 'Presencia de aceite entre carcasa y sello.', '2016-04-22', '2016-04-18', '2016-04-22', 'Sin descripción.', 1, 'MAY 23 2014', 7, '2492', '1', '0', '0'),
(1445, 28, 1723, 1, '1', '', '2016-04-22', NULL, '2016-04-22', 'Sin descripción.', 1, '-', 7, '2493', '0', '1', '0'),
(1446, 228, 1004, 12, '4', '', '2016-04-27', '2016-04-22', '2016-04-27', 'Fuera de medida.', 1, '-', 13, '2494', '0', '4', '0'),
(1447, 28, 2016, 1, '2', '', '2016-04-28', '2016-04-22', '2016-04-28', 'Fallaron.', 1, '-', 4, '2495', '2', '0', '0'),
(1448, 233, 2016, 1, '1', 'No calza el conector.', '2016-04-29', '2016-04-27', '2016-04-29', 'Fallo.', 1, '-', 3, '2496', '0', '1', '0'),
(1449, 233, 1941, 6, '2', '', '2016-04-29', '2016-04-27', '2016-04-29', 'Fallo. Pierden.', 1, '14/05/2015', 8, '2496', '2', '0', '0'),
(1450, 233, 389, 12, '1', '', '2016-04-29', '2016-04-27', '2016-04-29', 'Papel muy dañado.', 1, '10/11/2015', 14, '2496', '0', '1', '0'),
(1451, 114, 313, 12, '40', '', '2016-04-29', NULL, '2016-04-29', 'Error de pedido.', 1, '-', 20, '2497', '0', '0', '40'),
(1452, 52, 2726, 12, '678', '', '2016-05-05', NULL, '2016-05-05', 'Sin descripción.', 1, '-', 21, '2498', '0', '678', '0'),
(1453, 52, 2727, 12, '579', '', '2016-05-05', NULL, '2016-05-05', 'Sin descripción.', 1, '-', 21, '2498', '0', '579', '0'),
(1454, 57, 693, 12, '67', '', '2016-05-09', '2016-04-19', '2016-05-09', 'Devolución por motivos comerciales.', 1, '09/12/2015', 6, '2499', '0', '0', '67'),
(1455, 57, 1682, 1, '1', '', '2016-05-09', '2016-04-19', '2016-05-09', 'No entra en uno de sus lados.', 1, '10/10/2013', 17, '2499', '0', '1', '0'),
(1456, 57, 2430, 4, '2', '', '2016-05-09', '2016-04-19', '2016-05-09', 'Unas de las lámpara no prende.', 1, '14e07', 22, '2499', '1', '1', '0'),
(1457, 57, 2390, 4, '2', '', '2016-05-09', '2016-04-19', '2016-05-09', 'Una de las lámparas no prende.', 1, '15e18', 4, '2499', '2', '0', '0'),
(1458, 57, 1983, 6, '1', '', '2016-05-09', '2016-04-19', '2016-05-09', 'Pierde por uno de los picos.', 1, '1342', 7, '2499', '0', '1', '0'),
(1459, 57, 1608, 12, '7', '', '2016-05-09', '2016-04-19', '2016-05-09', 'Ya fueron repuestos.', 1, '-', 20, '2499', '0', '0', '7'),
(1460, 57, 1972, 12, '1', '', '2016-05-09', '2016-04-19', '2016-05-09', 'Tiene algo suelto en su interior.', 1, '1252', 23, '2499', '0', '1', '0'),
(1461, 94, 1447, 12, '20', '', '2016-05-09', '2016-04-26', '2016-05-09', 'Mercaderia no pedida.', 1, '18/2014', 20, '2500', '0', '0', '20'),
(1462, 11, 1377, 12, '1', '', '2016-05-09', NULL, '2016-05-09', 'Fallado.', 1, '05-12/2014', 17, '2501', '0', '1', '0'),
(1463, 11, 610, 12, '2', '', '2016-05-09', NULL, '2016-05-09', 'Abollado.', 2, '31/07/2015', 14, '2501', '0', '2', '0'),
(1464, 11, 1387, 12, '1', 'Extracción con herramienta inadecuada. No apto para verificar.', '2016-05-09', NULL, '2016-05-09', 'Fallado', 2, '10/06/2015', 2, '2501', '1', '0', '0'),
(1465, 11, 1387, 1, '1', '', '2016-05-09', NULL, '2016-05-09', 'Fallado.', 1, '26/05/2015', 4, '2501', '1', '0', '0'),
(1466, 11, 1723, 12, '1', '', '2016-05-09', NULL, '2016-05-09', 'Fallado.', 2, '01/12/2014  17768', 14, '2501', '0', '1', '0'),
(1467, 11, 1388, 12, '1', '', '2016-05-09', NULL, '2016-05-09', 'Fallado.', 1, '09/11/2015', 23, '2501', '0', '1', '0'),
(1468, 11, 1388, 1, '1', '', '2016-05-09', NULL, '2016-05-09', 'Fallado.', 1, '09/11/2015', 4, '2501', '1', '0', '0'),
(1469, 11, 1946, 12, '5', '', '2016-05-09', NULL, '2016-05-09', 'Fallado.', 2, '07/01/2009', 14, '2501', '0', '5', '0'),
(1470, 11, 1682, 12, '1', '', '2016-05-09', NULL, '2016-05-09', 'Fallado.', 1, '30/08/2014', 17, '2501', '0', '1', '0'),
(1471, 11, 1105, 12, '1', '', '2016-05-09', NULL, '2016-05-09', 'Filtro en mal estado.', 2, '18595', 14, '2501', '0', '1', '0'),
(1472, 11, 1370, 1, '3', '', '2016-05-09', NULL, '2016-05-09', 'Fallados.', 2, '22/10/2013', 5, '2501', '0', '3', '0'),
(1473, 11, 459, 12, '1', '', '2016-05-09', NULL, '2016-05-09', 'No coinciden las medidas.', 2, '14/10/2009', 6, '2501', '0', '1', '0'),
(1474, 20, 1940, 1, '5', 'Es FCD-0911, no es FCD-0913 como detalla el informe.', '2016-05-09', '2016-05-02', '2016-05-09', 'Sin descripción.', 1, '-', 6, '2502', '0', '5', '0'),
(1475, 20, 1940, 1, '1', '', '2016-05-09', '2016-05-02', '2016-05-09', 'Sin descripción', 1, '-', 6, '2502', '0', '1', '0'),
(1476, 20, 1370, 1, '1', '', '2016-05-09', '2016-05-02', '2016-05-09', 'Sin descripción.', 2, '16/07/2015   17117', 4, '2502', '1', '0', '0'),
(1477, 20, 1403, 12, '1', '', '2016-05-09', '2016-05-02', '2016-05-09', 'Sin descripción.', 1, '-', 10, '2502', '0', '1', '0'),
(1478, 20, 1511, 12, '1', 'Filtro usado. Papel dañado.', '2016-05-09', '2016-05-02', '2016-05-09', 'Sin descripción.', 1, '-', 14, '2502', '1', '0', '0'),
(1479, 20, 1835, 12, '4', '', '2016-05-09', '2016-05-02', '2016-05-09', 'Sin descripción.', 1, '1516', 20, '2502', '0', '0', '4'),
(1480, 15, 1456, 3, '1', '', '2016-05-10', '2016-04-28', '2016-05-10', 'Falla en rosca.', 1, '140424', 4, '2503', '1', '0', '0'),
(1481, 15, 1945, 12, '2', '', '2016-05-10', '2016-04-28', '2016-05-10', 'Pico roto.', 1, '12/2014', 14, '2503', '0', '2', '0'),
(1482, 15, 1941, 12, '1', '', '2016-05-10', '2016-04-28', '2016-05-10', 'Pico roto.', 1, '10/08/2012', 14, '2503', '0', '1', '0'),
(1483, 15, 1944, 10, '1', '', '2016-05-10', '2016-04-28', '2016-05-10', 'Tapado.', 1, '17/06/2015', 3, '2503', '0', '1', '0'),
(1484, 15, 1980, 6, '1', '', '2016-05-10', '2016-04-28', '2016-05-10', 'Pierde.', 1, '1326', 3, '2503', '0', '1', '0'),
(1485, 15, 1989, 6, '1', 'No es FCD-2068 es FCD-2067/2.', '2016-05-11', '2016-04-28', '2016-05-10', 'Pierde.', 1, '-', 8, '2503', '1', '0', '0'),
(1486, 15, 1980, 12, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Filtro maltratado.', 1, '1110', 14, '2503', '0', '1', '0'),
(1487, 15, 1370, 3, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Falla en rosca.', 1, '29/03/2015', 5, '2503', '0', '1', '0'),
(1488, 15, 1508, 12, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Filtro maltratado.', 2, '17840', 14, '2503', '0', '1', '0'),
(1489, 15, 1723, 6, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Pierde.', 1, '17817   05/02/2015', 7, '2503', '0', '1', '0'),
(1490, 15, 1969, 6, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Chupa aire.', 1, '10/20/2012', 7, '2503', '0', '1', '0'),
(1491, 15, 1719, 6, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Pierde.', 1, '06/2013', 7, '2503', '0', '1', '0'),
(1492, 15, 1972, 6, '1', 'Es FCD-2061. No es FCD-2161 como detalla el informe.', '2016-05-11', '2016-04-28', '2016-05-10', 'Chupa aire.', 1, '1128', 8, '2503', '1', '0', '0'),
(1493, 15, 1739, 12, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Pico roto.', 1, '17916   22/06/2015', 14, '2503', '0', '1', '0'),
(1494, 15, 1729, 6, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Chupa aire.', 1, '12/2014', 8, '2503', '1', '0', '0'),
(1495, 15, 1622, 12, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Diferencia en medidas.', 2, '16223', 13, '2503', '0', '1', '0'),
(1496, 15, 2016, 6, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Chupa aire.', 1, '-', 8, '2503', '1', '0', '0'),
(1497, 15, 1369, 12, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Filtro maltratado.', 1, '-', 14, '2503', '0', '1', '0'),
(1498, 15, 2016, 6, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Chupa aire.', 1, '-', 8, '2503', '1', '0', '0'),
(1499, 15, 1944, 1, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Rosca tapada.', 1, '10/08/2012', 3, '2503', '0', '1', '0'),
(1500, 15, 1953, 6, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Chupa aire.', 1, '11/04/2014', 8, '2503', '1', '0', '0'),
(1501, 15, 1384, 12, '23', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Mala partida.', 1, '16565  19/12/2013', 13, '2503', '0', '23', '0'),
(1502, 15, 1431, 8, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Pierde por junta.', 1, '-', 4, '2503', '1', '0', '0'),
(1503, 15, 1387, 8, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Pierde por junta.', 1, '17116', 4, '2503', '1', '0', '0'),
(1504, 15, 1506, 12, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Falta una pieza.', 1, '-', 16, '2503', '0', '1', '0'),
(1505, 15, 2016, 12, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Algo suelto adentro.', 1, '-', 23, '2503', '0', '1', '0'),
(1506, 15, 1723, 10, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Pico tapado.', 1, '-', 11, '2503', '0', '1', '0'),
(1507, 15, 1382, 3, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Falla rosca.', 1, '05/14/2013', 5, '2503', '0', '1', '0'),
(1508, 15, 1369, 12, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Algo suelto adentro.', 1, '-', 23, '2503', '0', '1', '0'),
(1509, 15, 1622, 12, '4', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Falla en junta.', 2, '16223', 13, '2503', '0', '4', '0'),
(1510, 15, 1945, 12, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Pico partido.', 1, '30/02/2012', 14, '2503', '0', '1', '0'),
(1511, 15, 1931, 12, '2', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Algo suelto adentro.', 1, '11/2013', 17, '2503', '0', '2', '0'),
(1512, 15, 1972, 12, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Algo suelto adentro.', 1, '1344', 23, '2503', '0', '1', '0'),
(1513, 15, 848, 12, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Abollado.', 2, '15/02/2013', 14, '2503', '0', '1', '0'),
(1514, 15, 872, 12, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Plastico partido.', 1, '-', 14, '2503', '0', '1', '0'),
(1515, 15, 872, 12, '1', 'Producto dañado por manipulación inadecuada.', '2016-05-11', '2016-04-28', '2016-05-10', 'Chapa rota.', 1, '-', 2, '2503', '1', '0', '0'),
(1516, 15, 381, 12, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Filtro roto.', 1, '10/11/2011', 14, '2503', '0', '1', '0'),
(1517, 15, 1682, 5, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Picos fallados.', 1, '-', 19, '2503', '1', '0', '0'),
(1518, 15, 1729, 6, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Pierde.', 1, '15/01/2015', 8, '2503', '1', '0', '0'),
(1519, 15, 1901, 5, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Diferencia en altura.', 1, '05/01/2012', 6, '2503', '0', '1', '0'),
(1520, 15, 1940, 1, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Problema con picos.', 1, '20/04/2013', 4, '2503', '1', '0', '0'),
(1521, 15, 1086, 12, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Goma rota.', 2, '5861', 14, '2503', '0', '1', '0'),
(1522, 15, 1388, 3, '2', 'Filtro usado.', '2016-05-11', '2016-04-28', '2016-05-10', 'Falla en rosca.', 1, '04/24/2015', 4, '2503', '2', '0', '0'),
(1523, 15, 1972, 6, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Chupa aire.', 1, '1534', 8, '2503', '1', '0', '0'),
(1524, 15, 1407, 3, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Diferencia en rosca.', 1, '21/2012', 5, '2503', '0', '1', '0'),
(1525, 15, 2016, 12, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Chupa aire.', 1, '-', 18, '2503', '0', '1', '0'),
(1526, 15, 1622, 12, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Diferencia en medida.', 2, '16223', 13, '2503', '0', '1', '0'),
(1527, 15, 2397, 4, '2', '', '2016-05-11', '2016-04-28', '2016-05-10', 'No anda la baja.', 1, '11l29', 3, '2503', '0', '2', '0'),
(1528, 15, 2139, 12, '35', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Mala partida.', 1, '-', 14, '2503', '0', '35', '0'),
(1529, 15, 2139, 2, '21', 'Bujías usadas.', '2016-05-11', '2016-04-28', '2016-05-10', 'Mala partida.', 1, '-', 4, '2503', '21', '0', '0'),
(1530, 15, 2176, 2, '14', 'Bujías usadas.', '2016-05-11', '2016-04-28', '2016-05-10', 'Fallada.', 1, '-', 4, '2503', '14', '0', '0'),
(1531, 15, 2137, 2, '8', 'Bujías usadas.', '2016-05-11', '2016-04-28', '2016-05-10', 'Falladas.', 1, '-', 4, '2503', '8', '0', '0'),
(1532, 15, 2147, 2, '7', 'Bujías usadas.', '2016-05-11', '2016-04-28', '2016-05-10', 'Falladas.', 1, '-', 4, '2503', '7', '0', '0'),
(1533, 15, 2180, 2, '2', 'Bujías usadas.', '2016-05-11', '2016-04-28', '2016-05-10', 'Falladas.', 1, '-', 4, '2503', '2', '0', '0'),
(1534, 15, 2141, 2, '7', 'Bujías usadas.', '2016-05-11', '2016-04-28', '2016-05-10', 'Falladas.', 1, '-', 4, '2503', '7', '0', '0'),
(1535, 15, 2146, 2, '8', 'Bujías usadas.', '2016-05-11', '2016-04-28', '2016-05-10', 'Falladas.', 1, '-', 4, '2503', '8', '0', '0'),
(1536, 15, 2175, 2, '15', 'Bujías usadas.', '2016-05-11', '2016-04-28', '2016-05-10', 'Falladas.', 1, '-', 4, '2503', '15', '0', '0'),
(1537, 15, 2175, 2, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Fallada.', 1, '-', 3, '2503', '0', '1', '0'),
(1538, 15, 2199, 2, '1', 'Bujías usadas.', '2016-05-11', '2016-04-28', '2016-05-10', 'Fallada.', 1, '-', 4, '2503', '1', '0', '0'),
(1539, 15, 2181, 2, '2', 'Bujías usadas.', '2016-05-11', '2016-04-28', '2016-05-10', 'Falladas.', 1, '-', 4, '2503', '2', '0', '0'),
(1540, 15, 2166, 2, '4', 'Bujías usadas.', '2016-05-11', '2016-04-28', '2016-05-10', 'Falladas.', 1, '-', 4, '2503', '4', '0', '0'),
(1541, 15, 2166, 2, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Fallada.', 1, '-', 3, '2503', '0', '1', '0'),
(1542, 15, 2194, 2, '3', 'Bujías usadas.', '2016-05-11', '2016-04-28', '2016-05-10', 'Falladas.', 1, '-', 4, '2503', '3', '0', '0'),
(1543, 15, 2224, 2, '1', 'Falla no atribuible al producto.', '2016-05-11', '2016-04-28', '2016-05-10', 'Fallada', 1, 'H97', 2, '2503', '1', '0', '0'),
(1544, 15, 1937, 12, '1', '', '2016-05-11', '2016-04-28', '2016-05-10', 'Falta junta.', 1, '05/01/2012', 16, '2503', '0', '1', '0'),
(1545, 15, 2116, 12, '1', 'No esta detallado en el informe.', '2016-05-11', '2016-04-28', '2016-05-10', 'Sin descripción.', 1, '-', 20, '2503', '0', '0', '1'),
(1546, 79, 2729, 12, '1000', '', '2016-05-11', NULL, '2016-05-11', 'Sin descripción.', 1, '-', 20, '2504', '0', '0', '1000'),
(1547, 15, 1945, 12, '1', '', '2016-05-12', '2016-05-12', '2016-05-10', 'Conducto tapado.', 1, '30122012', 14, '2503', '0', '1', '0'),
(1548, 4, 1723, 12, '394', '', '2016-05-12', '2016-04-08', '2016-04-13', 'Partida con problemas de perdida.', 2, '-', 20, '2506', '0', '0', '394'),
(1549, 128, 1990, 6, '1', '', '2016-05-12', '2016-05-10', '2016-05-12', 'Pierde.', 1, '1514', 8, '2507', '1', '0', '0'),
(1550, 28, 2269, 12, '1', 'Bujia dañada por exceso de torque. No procede.', '2016-05-12', '2016-05-09', '2016-05-12', 'Roto.', 1, 'T35', 2, '2508', '1', '0', '0'),
(1551, 28, 1949, 1, '2', 'Bomba dañada.', '2016-05-12', '2016-05-09', '2016-05-12', 'Trabado.', 1, '30/10/2015', 3, '2508', '0', '2', '0'),
(1552, 13, 2033, 12, '2', '', '2016-05-16', '2016-05-13', '2016-05-16', 'Sin uso.', 1, '-', 20, '2509', '0', '0', '2'),
(1553, 233, 1186, 12, '7', 'No son WAP-207 son WAP-203.', '2016-05-16', '2016-05-11', '2016-05-16', 'Rotos.', 1, '-', 14, '2510', '0', '7', '0');
INSERT INTO `reclamos` (`id_reclamo`, `id_cliente`, `id_producto`, `id`, `cantidad_total`, `observacion`, `fecha`, `fecha_emision`, `fecha_recepcion`, `motivo`, `id_origen`, `lote`, `id_resultado`, `nro_reclamo`, `cant_infundados`, `cant_fundados`, `cant_tema_comercial`) VALUES
(1554, 233, 281, 12, '4', '', '2016-05-16', '2016-05-11', '2016-05-16', 'Mal pedidos.', 1, '01/2011', 20, '2510', '0', '0', '4'),
(1555, 5, 1083, 12, '1', '', '2016-05-17', '2016-05-06', '2016-05-17', 'Aplastado.', 2, '18034', 14, '2511', '0', '1', '0'),
(1556, 5, 1124, 12, '1', '', '2016-05-17', '2016-05-06', '2016-05-17', 'Plastico partido.', 1, '09/12/2013', 14, '2511', '0', '1', '0'),
(1557, 5, 1982, 12, '1', '', '2016-05-17', '2016-05-06', '2016-05-17', 'Parte suelta adentro.', 1, '1512', 23, '2511', '0', '1', '0'),
(1558, 5, 1982, 12, '1', '', '2016-05-17', '2016-05-06', '2016-05-17', 'Parte suelta adentro.', 1, '1228', 14, '2511', '0', '1', '0'),
(1559, 5, 715, 12, '1', '', '2016-05-17', '2016-05-06', '2016-05-17', 'Goma cortada.', 2, '18121', 14, '2511', '0', '1', '0'),
(1560, 5, 1283, 6, '1', '', '2016-05-18', '2016-05-06', '2016-05-17', 'Pierde.', 1, '31/05/2014', 7, '2511', '0', '1', '0'),
(1561, 5, 1945, 12, '1', '', '2016-05-18', '2016-05-06', '2016-05-17', 'Pico roto.', 1, '04/2015', 14, '2511', '0', '1', '0'),
(1562, 5, 1943, 12, '1', '', '2016-05-18', '2016-05-06', '2016-05-17', 'Pico roto.', 1, '-', 14, '2511', '0', '1', '0'),
(1563, 5, 1728, 6, '1', '', '2016-05-18', '2016-05-06', '2016-05-17', 'Pierde en la unión.', 1, '10/2013', 7, '2511', '0', '1', '0'),
(1564, 5, 1723, 6, '1', 'No son 2 unidades como detalla el informe, es 1 unidad.', '2016-05-18', '2016-05-06', '2016-05-17', 'Pierde en la unión.', 2, '-', 7, '2511', '0', '1', '0'),
(1565, 5, 1404, 1, '1', '', '2016-05-18', '2016-05-06', '2016-05-17', 'Fallado.', 1, '07/26/12', 5, '2511', '0', '1', '0'),
(1566, 5, 1431, 12, '1', '', '2016-05-18', '2016-05-06', '2016-05-17', 'Rosca de arriba despegada.', 1, '05/15/13', 14, '2511', '0', '1', '0'),
(1567, 5, 1258, 12, '1', '', '2016-05-18', '2016-05-06', '2016-05-17', 'Abollado.', 1, '15509', 14, '2511', '0', '1', '0'),
(1568, 5, 1724, 6, '2', '', '2016-05-18', '2016-05-06', '2016-05-17', 'Pierde por la unón.', 2, '05/12', 7, '2511', '0', '2', '0'),
(1569, 5, 625, 12, '1', 'No esta detallado en el informe.', '2016-05-18', '2016-05-06', '2016-05-17', 'Sin descripción.', 2, '-', 14, '2511', '0', '1', '0'),
(1570, 5, 1729, 1, '1', 'No esta detallado en el informe.', '2016-05-18', '2016-05-06', '2016-05-17', 'Sin descripción.', 2, '15/01/13', 7, '2511', '0', '1', '0'),
(1571, 5, 1370, 1, '1', 'No esta detallado en el informe.', '2016-05-18', '2016-05-06', '2016-05-17', 'Sin descripción.', 2, '17117', 5, '2511', '0', '1', '0'),
(1572, 4, 2016, 6, '1', '', '2016-05-20', '2016-05-13', '2016-05-20', 'Se descarga.', 1, '-', 8, '2512', '1', '0', '0'),
(1573, 4, 1723, 6, '2', '', '2016-05-20', '2016-05-13', '2016-05-20', 'Pierde por la unión.', 2, '1787  10/02/2015', 7, '2512', '0', '2', '0'),
(1574, 4, 1943, 12, '1', '', '2016-05-20', '2016-05-13', '2016-05-20', 'Fallado. No arranco el auto.', 1, '-', 23, '2512', '0', '1', '0'),
(1575, 4, 2430, 4, '2', '', '2016-05-20', '2016-05-13', '2016-05-20', 'Falladas.', 1, '11M03', 3, '2512', '0', '2', '0'),
(1576, 4, 2555, 4, '1', '', '2016-05-20', '2016-05-13', '2016-05-20', 'Falladas.', 1, '-', 3, '2512', '0', '1', '0'),
(1577, 4, 1745, 6, '1', '', '2016-05-20', '2016-05-13', '2016-05-20', 'Pierde por la valvula. Presión interna.', 1, '-', 7, '2512', '0', '1', '0'),
(1578, 4, 1990, 6, '1', '', '2016-05-20', '2016-05-13', '2016-05-20', 'Fallo. No arranco el auto.', 1, '1512', 7, '2512', '0', '1', '0'),
(1579, 4, 1682, 6, '1', '', '2016-05-20', '2016-05-13', '2016-05-20', 'Pierde.', 1, '-', 7, '2512', '0', '1', '0'),
(1580, 4, 1405, 12, '1', '', '2016-05-20', '2016-05-13', '2016-05-20', 'Pierde por la brida.', 1, '11/22/2015', 17, '2512', '0', '1', '0'),
(1581, 4, 1941, 1, '2', '', '2016-05-20', '2016-05-13', '2016-05-20', 'Fallo.No  arranco  el auto.', 1, '15/01/2015', 3, '2512', '0', '2', '0'),
(1582, 4, 2224, 2, '1', 'Perno de conexión dañado por exceso de torque', '2016-05-20', '2016-05-13', '2016-05-20', 'Fallada.', 1, 'B54', 14, '2512', '1', '0', '0'),
(1583, 24, 1724, 12, '145', '', '2016-05-20', '2016-04-07', '2016-05-20', 'Elemento interno suelto.', 2, '-', 23, '2513', '0', '145', '0'),
(1584, 24, 2056, 12, '5', '', '2016-05-20', '2016-04-07', '2016-05-20', 'Defecto en el engrafado de la tapa con la carcaza.', 1, '1304', 18, '2513', '0', '1', '4'),
(1585, 24, 961, 12, '2', '', '2016-05-20', '2016-04-07', '2016-05-20', 'Defecto en el sello de poliuretano.', 1, '10/09/2014', 9, '2513', '0', '2', '0'),
(1586, 24, 879, 12, '2', '', '2016-05-20', '2016-04-07', '2016-05-20', 'Pliegues despegados.', 1, '-', 17, '2513', '0', '2', '0'),
(1587, 24, 1732, 12, '7', '', '2016-05-23', '2016-05-06', '2016-05-23', 'Elemento interno suelto.', 2, '-', 23, '2514', '0', '7', '0'),
(1588, 24, 1729, 12, '11', '', '2016-05-23', '2016-05-06', '2016-05-23', 'Elemento interno suelto.', 2, '-', 23, '2514', '0', '11', '0'),
(1589, 24, 1724, 12, '1', '', '2016-05-23', '2016-05-06', '2016-05-23', 'Elemento interno suelto.', 2, '-', 23, '2514', '0', '1', '0'),
(1590, 24, 1728, 12, '18', '', '2016-05-23', '2016-05-06', '2016-05-23', 'Elemento interno suelto.', 2, '-', 23, '2514', '0', '18', '0'),
(1591, 24, 1723, 12, '22', '', '2016-05-23', '2016-05-06', '2016-05-23', 'Elemento interno suelto.', 2, '-', 23, '2514', '0', '22', '0'),
(1592, 24, 1733, 12, '3', '', '2016-05-23', '2016-05-06', '2016-05-23', 'Elemento interno suelto.', 2, '-', 23, '2514', '0', '3', '0'),
(1593, 24, 1731, 12, '7', '', '2016-05-23', '2016-05-06', '2016-05-23', 'Elemento interno suelto.', 2, '-', 23, '2514', '0', '7', '0'),
(1594, 71, 1943, 12, '1', '', '2016-05-23', '2016-05-03', '2016-05-23', 'Carcaza fisurada.', 1, '15/06/2012', 23, '2515', '0', '1', '0'),
(1595, 71, 1251, 12, '1', '', '2016-05-23', '2016-05-03', '2016-05-23', 'Carcaza con perforaciones', 1, '-', 18, '2515', '0', '1', '0'),
(1596, 32, 381, 12, '9', '', '2016-05-23', '2016-05-16', '2016-05-23', 'Sin descripcion.', 1, '15640', 20, '2516', '0', '0', '9'),
(1597, 32, 1951, 12, '2', 'Falta sello y junta antivibratoria.', '2016-05-23', '2016-05-16', '2016-05-23', 'Sin descripción.', 1, '1512', 16, '2516', '0', '0', '2'),
(1598, 32, 1967, 12, '1', '', '2016-05-23', '2016-05-16', '2016-05-23', 'Sin descripción.', 1, '1304', 14, '2516', '0', '1', '0'),
(1599, 32, 1733, 6, '1', '', '2016-05-23', '2016-05-16', '2016-05-23', 'Sin descripción.', 2, '06/2012', 7, '2516', '0', '1', '0'),
(1600, 32, 2034, 1, '1', 'Filtro usado. No se verifican fallas.', '2016-05-23', '2016-05-16', '2016-05-23', 'Sin descripción.', 1, '-', 4, '2516', '1', '0', '0'),
(1601, 32, 1382, 1, '1', 'Filtro usado. No se verifican fallas,', '2016-05-23', '2016-05-16', '2016-05-23', 'Sin descripción.', 1, '06/11/2015', 4, '2516', '1', '0', '0'),
(1602, 56, 2730, 12, '140', '', '2016-05-23', '2016-05-09', '2016-05-23', 'Sin descripción.', 1, '-', 20, '2517', '0', '0', '140'),
(1603, 24, 1729, 12, '1674', '', '2016-05-24', '2016-05-17', '2016-05-24', 'Exeso de adhesivo en el interior del elemento filtrante.', 2, '-', 13, '2518', '0', '1674', '0'),
(1604, 4, 2555, 4, '2', '', '2016-05-24', '2016-05-13', '2016-05-20', 'Falladas.', 1, '-', 4, '2512', '2', '0', '0'),
(1605, 232, 1728, 12, '100', '', '2016-05-27', NULL, '2016-05-26', 'Garantia.', 1, '2015', 20, '2505', '0', '0', '100'),
(1606, 28, 1949, 12, '1', '', '2016-05-27', '2016-05-13', '2016-05-26', 'Cebador trabado.', 1, '30/10/2015', 3, '2519', '0', '1', '0'),
(1607, 28, 2555, 12, '2', '', '2016-05-27', '2016-05-13', '2016-05-26', 'Quemada', 1, '-', 22, '2519', '0', '2', '0'),
(1608, 40, 2731, 12, '1', '', '2016-05-27', NULL, '2016-05-26', 'Sin descripción.', 2, '18281', 14, '2520', '0', '1', '0'),
(1609, 40, 1058, 12, '1', 'Producto dañado por manipulación inadecuada.', '2016-05-27', NULL, '2016-05-26', 'Sin descripción.', 2, '16321', 14, '2520', '1', '0', '0'),
(1610, 46, 2725, 6, '1', 'Pierde por conexión de drenaje.', '2016-05-31', '2016-05-28', '2016-05-31', 'Sin descripcón.', 1, '-', 7, '2521', '0', '1', '0'),
(1611, 46, 2683, 13, '1', '', '2016-05-31', '2016-05-28', '2016-05-31', 'Sin descripción.', 1, '-', 4, '2521', '1', '0', '0'),
(1612, 57, 88, 12, '10', '', '2016-06-03', '2016-05-20', '2016-06-03', 'Mal pedido.', 1, '08/2014', 20, '2522', '0', '0', '10'),
(1613, 57, 1607, 12, '30', '', '2016-06-03', '2016-05-20', '2016-06-03', 'Mal pedido.', 1, '-', 20, '2522', '0', '0', '30'),
(1614, 126, 495, 12, '24', '', '2016-06-03', '2016-05-23', '2016-06-03', 'Cambio por FAP-4061/1', 1, '09/05/2015', 20, '2523', '0', '0', '24'),
(1615, 9, 495, 12, '1', '', '2016-06-03', '2016-06-16', '2016-06-03', 'Rejilla metálica deformada.', 1, '-', 14, '2524', '0', '1', '0'),
(1616, 9, 618, 12, '1', '', '2016-06-03', '2016-06-16', '2016-06-03', 'Roto.', 1, 'B 1507   15/07/19', 14, '2524', '0', '1', '0'),
(1617, 9, 1945, 12, '1', '', '2016-06-03', '2016-06-16', '2016-06-03', 'Pico roto.', 1, '05/2014', 14, '2524', '0', '1', '0'),
(1618, 9, 1972, 3, '1', '', '2016-06-03', '2016-06-16', '2016-06-03', 'Falta rosca donde va el sensor.', 1, '1516', 5, '2524', '0', '1', '0'),
(1619, 9, 1980, 6, '1', '', '2016-06-03', '2016-06-16', '2016-06-03', 'Obstruida la salida.', 1, '1512', 7, '2524', '0', '1', '0'),
(1620, 9, 1737, 6, '1', '', '2016-06-03', '2016-06-16', '2016-06-03', 'Filtro tapado.', 2, '17469    16/12/2014', 7, '2524', '0', '1', '0'),
(1621, 9, 2591, 11, '1', '', '2016-06-03', '2016-06-16', '2016-06-03', 'No funcionan.', 1, '-', 4, '2524', '1', '0', '0'),
(1622, 9, 1421, 12, '1', '', '2016-06-03', '2016-06-16', '2016-06-03', 'Oxidado.', 1, '11/2014', 18, '2524', '0', '1', '0'),
(1623, 9, 1424, 3, '3', '', '2016-06-03', '2016-06-16', '2016-06-03', 'Fallan en la rosca.', 1, '04/07/2015', 5, '2524', '0', '3', '0'),
(1624, 9, 1431, 12, '1', '', '2016-06-03', '2016-06-16', '2016-06-03', 'Oxidado.', 1, '-', 18, '2524', '0', '1', '0'),
(1625, 9, 1724, 6, '1', '', '2016-06-03', '2016-06-16', '2016-06-03', 'Presenta fuga.', 2, '18024    03/05/2013', 7, '2524', '0', '1', '0'),
(1626, 9, 2505, 12, '4500', '', '2016-06-03', '2016-06-16', '2016-06-03', 'Enviadas por error.', 1, '-', 20, '2524', '0', '0', '4500'),
(1627, 38, 2050, 12, '80', '', '2016-06-02', '2016-06-01', '2016-06-03', 'Sin descripción.', 1, '1544', 20, '2525', '0', '0', '80'),
(1628, 58, 1941, 1, '1', '', '2016-06-06', '2016-05-28', '2016-06-06', 'No arranca.', 1, '09/06/2015', 12, '2526', '0', '1', '0'),
(1629, 58, 1554, 12, '1', '', '2016-06-06', '2016-05-28', '2016-06-06', 'No tiene junta.', 1, '08/2014', 16, '2526', '0', '1', '0'),
(1630, 58, 1731, 6, '1', '', '2016-06-06', '2016-05-28', '2016-06-06', 'Pierde.', 1, '07/2010', 7, '2526', '0', '1', '0'),
(1631, 58, 2071, 3, '1', '', '2016-06-06', '2016-05-28', '2016-06-06', 'Rosca fallada.', 1, '24/05/2015', 5, '2526', '0', '1', '0'),
(1632, 58, 1457, 12, '1', '', '2016-06-06', '2016-05-28', '2016-06-06', 'Mal pedido.', 1, '-', 20, '2526', '0', '0', '1'),
(1633, 58, 1359, 12, '5', '', '2016-06-06', '2016-05-28', '2016-06-06', 'Sin descripción.', 1, '09/10/2015', 20, '2526', '0', '0', '5'),
(1634, 58, 2046, 12, '7', '', '2016-06-06', '2016-05-28', '2016-06-06', 'Fuera de medida.', 1, '-', 20, '2526', '0', '0', '7'),
(1635, 10, 2074, 1, '9', 'O´ring fuera de medida.', '2016-06-06', '2016-05-05', '2016-06-06', 'Fallado.', 1, '03/11/2012', 6, '2527', '0', '0', '9'),
(1636, 10, 1729, 1, '1', '', '2016-06-06', '2016-05-05', '2016-06-06', 'Fallado.', 1, '12/2014', 4, '2527', '1', '0', '0'),
(1637, 10, 1972, 1, '2', '', '2016-06-06', '2016-05-05', '2016-06-06', 'Fallado.', 1, '-', 4, '2527', '2', '0', '0'),
(1638, 10, 1881, 12, '1', '', '2016-06-06', '2016-05-05', '2016-06-06', 'Fallado.', 1, '18/2014', 17, '2527', '0', '1', '0'),
(1639, 10, 874, 12, '1', '', '2016-06-06', '2016-05-05', '2016-06-06', 'Fallado.', 1, '10/2014', 14, '2527', '0', '1', '0'),
(1640, 10, 2016, 12, '1', '', '2016-06-06', '2016-05-05', '2016-06-06', 'Fallado.', 1, '-', 23, '2527', '0', '1', '0'),
(1641, 10, 1968, 3, '1', '', '2016-06-06', '2016-05-05', '2016-06-06', 'Fallado.', 1, '1344', 5, '2527', '0', '1', '0'),
(1642, 10, 1945, 12, '2', '', '2016-06-06', '2016-05-05', '2016-06-06', 'Pico roto.', 1, '05/2014', 14, '2527', '0', '2', '0'),
(1643, 10, 1941, 1, '1', '', '2016-06-06', '2016-05-05', '2016-06-06', 'Fallado.', 1, '-', 4, '2527', '1', '0', '0'),
(1644, 10, 1949, 6, '2', '', '2016-06-06', '2016-05-05', '2016-06-06', 'Roto, pierde.', 1, '20/04/2013', 7, '2527', '0', '2', '0'),
(1645, 10, 1949, 12, '3', '', '2016-06-06', '2016-05-05', '2016-06-06', 'Roto, pierde.', 1, '20/04/2013', 14, '2527', '0', '3', '0'),
(1646, 10, 1415, 12, '1', '', '2016-06-06', '2016-05-05', '2016-06-06', 'Sin junta.', 1, '16/06/2014', 16, '2527', '0', '1', '0'),
(1647, 84, 1787, 12, '24', '', '2016-06-06', NULL, '2016-06-06', 'Sin descripción.', 1, '-', 20, '2528', '0', '0', '24'),
(1648, 16, 1622, 12, '91', '', '2016-06-15', '2015-05-23', '2016-06-10', 'Fallados.', 2, '16223', 20, '2529', '0', '0', '91'),
(1649, 16, 2703, 12, '2', '', '2016-06-15', '2015-05-23', '2016-06-10', 'Roto.', 2, '-', 14, '2529', '0', '2', '0'),
(1650, 16, 1948, 12, '16', '', '2016-06-15', '2015-05-23', '2016-06-10', 'Devolución.', 1, '09/2014', 20, '2529', '0', '0', '16'),
(1651, 16, 2700, 12, '2', '', '2016-06-15', '2015-05-23', '2016-06-10', 'Roto.', 2, '-', 14, '2529', '0', '2', '0'),
(1652, 16, 1945, 12, '1', '', '2016-06-15', '2015-05-23', '2016-06-10', 'Roto.', 1, '12/2014', 14, '2529', '0', '1', '0'),
(1653, 16, 2699, 12, '1', '', '2016-06-15', '2015-05-23', '2016-06-10', 'Roto.', 2, '-', 14, '2529', '0', '1', '0'),
(1654, 16, 2088, 12, '1', '', '2016-06-15', '2015-05-23', '2016-06-10', 'Rosca fallada.', 1, '11/18/2008', 18, '2529', '0', '1', '0'),
(1655, 16, 1951, 6, '1', 'Posible desplazamiento de junta.', '2016-06-15', '2015-05-23', '2016-06-10', 'Chupa aire.', 1, '1424', 4, '2529', '1', '0', '0'),
(1656, 16, 2680, 12, '1', '', '2016-06-15', '2015-05-23', '2016-06-10', 'Roto.', 2, '-', 14, '2529', '0', '1', '0'),
(1657, 16, 1347, 6, '1', '', '2016-06-15', '2015-05-23', '2016-06-10', 'Pierde.', 1, '31/2014', 8, '2529', '1', '0', '0'),
(1658, 16, 1949, 6, '1', '', '2016-06-15', '2015-05-23', '2016-06-10', 'Chupa aire.', 1, '20/04/2013', 7, '2529', '0', '1', '0'),
(1659, 16, 1736, 10, '1', '', '2016-06-15', '2015-05-23', '2016-06-10', 'Fallado.', 2, '02/2014', 11, '2529', '0', '1', '0'),
(1660, 16, 2682, 12, '1', '', '2016-06-15', '2015-05-23', '2016-06-10', 'Fallado.', 1, '-', 20, '2529', '0', '0', '1'),
(1661, 16, 2681, 12, '1', '', '2016-06-15', '2015-05-23', '2016-06-10', 'Fallado.', 2, '-', 20, '2529', '0', '0', '1'),
(1662, 16, 2701, 12, '2', '', '2016-06-15', '2015-05-23', '2016-06-10', 'Roto.', 2, '-', 14, '2529', '0', '2', '0'),
(1663, 234, 2016, 6, '1', 'Conector fuera de medida.', '2016-06-15', '2016-06-10', '2016-06-15', 'Pierde.', 1, '-', 6, '2530', '0', '1', '0'),
(1664, 234, 2016, 6, '1', '', '2016-06-15', '2016-06-10', '2016-06-15', 'Pierde.', 1, '-', 7, '2530', '0', '1', '0'),
(1665, 234, 625, 12, '1', '', '2016-06-15', '2016-06-10', '2016-06-15', 'Centro desplazado.', 2, '15408', 14, '2530', '0', '1', '0'),
(1666, 234, 1601, 5, '1', '', '2016-06-15', '2016-06-10', '2016-06-15', 'Fuera de medida.', 2, '-', 6, '2530', '0', '1', '0'),
(1667, 234, 1931, 5, '1', '', '2016-06-15', '2016-06-10', '2016-06-15', 'Problema con O´ring.', 1, '06/2014', 6, '2530', '0', '1', '0'),
(1668, 234, 1622, 12, '1', '', '2016-06-15', '2016-06-10', '2016-06-15', 'Falta O´ring.', 2, '02/03/2012', 16, '2530', '0', '1', '0'),
(1669, 234, 689, 12, '1', '', '2016-06-15', '2016-06-10', '2016-06-15', 'Fallado.', 1, '22/09/2015', 17, '2530', '0', '1', '0'),
(1670, 4, 1885, 12, '30', '', '2016-06-21', '2016-06-08', '2016-06-21', 'Enviado en exceso.', 1, '-', 20, '2531', '0', '0', '30'),
(1671, 4, 1893, 12, '20', '', '2016-06-21', '2016-06-08', '2016-06-21', 'Enviado en exceso.', 1, '-', 20, '2531', '0', '0', '20'),
(1672, 4, 1921, 12, '40', '', '2016-06-21', '2016-06-08', '2016-06-21', 'Enviado en exceso.', 1, '-', 20, '2531', '0', '0', '40'),
(1673, 4, 1968, 12, '40', '', '2016-06-21', '2016-06-08', '2016-06-21', 'Enviado en exceso.', 1, '-', 20, '2531', '0', '0', '40'),
(1674, 4, 1973, 12, '20', '', '2016-06-21', '2016-06-08', '2016-06-21', 'Enviado en exceso.', 1, '-', 20, '2531', '0', '0', '20'),
(1675, 4, 1980, 12, '30', '', '2016-06-21', '2016-06-08', '2016-06-21', 'Enviado en exceso.', 1, '-', 20, '2531', '0', '0', '30'),
(1676, 4, 1982, 12, '20', '', '2016-06-21', '2016-06-08', '2016-06-21', 'Enviado en exceso.', 1, '-', 20, '2531', '0', '0', '20'),
(1677, 4, 1983, 12, '20', '', '2016-06-21', '2016-06-08', '2016-06-21', 'Enviado en exceso.', 1, '-', 20, '2531', '0', '0', '20'),
(1678, 4, 1987, 12, '40', '', '2016-06-21', '2016-06-08', '2016-06-21', 'Enviado en exceso.', 1, '-', 20, '2531', '0', '0', '40'),
(1679, 4, 1230, 12, '1', '', '2016-06-21', '2016-06-10', '2016-06-21', 'Devolución comercial.', 1, '-', 20, '2532', '0', '0', '1'),
(1680, 4, 1909, 12, '4', '', '2016-06-21', '2016-06-10', '2016-06-21', 'Devolución comercial.', 2, '13729      11/06/12', 20, '2532', '0', '0', '4'),
(1681, 113, 1145, 12, '6', '', '2016-06-21', '2016-05-18', '2016-06-21', 'No corresponde a lo solicitado.', 1, '03/06/2014', 20, '2533', '0', '0', '6'),
(1682, 7, 617, 12, '1800', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '1800'),
(1683, 7, 433, 12, '700', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '700'),
(1684, 7, 538, 12, '400', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 2, '-', 20, '2534', '0', '0', '400'),
(1685, 7, 439, 12, '160', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '160'),
(1686, 7, 603, 12, '250', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '250'),
(1687, 7, 621, 12, '260', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción,', 1, '-', 20, '2534', '0', '0', '260'),
(1688, 7, 359, 12, '400', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '400'),
(1689, 7, 358, 12, '200', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 2, '-', 20, '2534', '0', '0', '200'),
(1690, 7, 583, 12, '102', '', '2016-06-22', NULL, '2016-06-22', 'descripción.', 2, '-', 20, '2534', '0', '0', '102'),
(1691, 7, 450, 12, '300', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 2, '-', 20, '2534', '0', '0', '300'),
(1692, 7, 580, 12, '16', '', '2016-06-22', NULL, '2016-06-22', 'Estuche dañado.', 2, '-', 20, '2534', '0', '0', '16'),
(1693, 7, 426, 12, '48', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '48'),
(1694, 7, 1251, 12, '256', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '256'),
(1695, 7, 1252, 12, '32', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '32'),
(1696, 7, 1384, 12, '320', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 2, '-', 20, '2534', '0', '0', '320'),
(1697, 7, 1456, 12, '24', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '24'),
(1698, 7, 1416, 12, '120', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '120'),
(1699, 7, 1425, 12, '260', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '260'),
(1700, 7, 1419, 12, '180', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '180'),
(1701, 7, 1442, 12, '40', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '40'),
(1702, 7, 1951, 12, '200', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '200'),
(1703, 7, 1955, 12, '240', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '240'),
(1704, 7, 1982, 12, '200', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '200'),
(1705, 7, 1973, 12, '400', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '400'),
(1706, 7, 2006, 12, '50', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '50'),
(1707, 7, 2732, 12, '20', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '20'),
(1708, 7, 1964, 12, '50', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '50'),
(1709, 7, 2060, 12, '48', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '48'),
(1710, 7, 1966, 12, '36', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '36'),
(1711, 7, 1887, 12, '100', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '100'),
(1712, 7, 1916, 12, '200', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 2, '-', 20, '2534', '0', '0', '200'),
(1713, 7, 1965, 12, '24', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '24'),
(1714, 7, 2028, 12, '100', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '100'),
(1715, 7, 1193, 12, '66', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 2, '-', 20, '2534', '0', '0', '66'),
(1716, 7, 1175, 12, '155', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '155'),
(1717, 7, 1145, 12, '60', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '60'),
(1718, 7, 1165, 12, '78', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '78'),
(1719, 7, 1167, 12, '32', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 2, '-', 20, '2534', '0', '0', '32'),
(1720, 7, 1182, 12, '360', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '360'),
(1721, 7, 1164, 12, '120', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 2, '-', 20, '2534', '0', '0', '120'),
(1722, 7, 1248, 12, '40', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '40'),
(1723, 7, 2733, 12, '120', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '120'),
(1724, 7, 841, 12, '260', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '260'),
(1725, 7, 818, 12, '100', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '100'),
(1726, 7, 1002, 12, '120', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '120'),
(1727, 7, 898, 12, '72', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '72'),
(1728, 7, 739, 12, '120', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '120'),
(1729, 7, 1021, 12, '60', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '60'),
(1730, 7, 1003, 12, '80', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '80'),
(1731, 7, 961, 12, '38', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '38'),
(1732, 7, 725, 12, '40', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '40'),
(1733, 7, 732, 12, '100', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '100'),
(1734, 7, 944, 12, '100', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '100'),
(1735, 7, 1030, 12, '40', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '40'),
(1736, 7, 865, 12, '40', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '40'),
(1737, 7, 819, 12, '60', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '60'),
(1738, 7, 760, 12, '100', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '100'),
(1739, 7, 2734, 12, '40', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '40'),
(1740, 7, 1794, 12, '192', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '192'),
(1741, 7, 1775, 12, '40', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '40'),
(1742, 7, 1847, 12, '50', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '50'),
(1743, 7, 1096, 12, '1008', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '1008'),
(1744, 7, 1039, 12, '450', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '450'),
(1745, 7, 1054, 12, '240', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '240'),
(1746, 7, 1040, 12, '20', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '20'),
(1747, 7, 1132, 12, '24', '', '2016-06-22', NULL, '2016-06-22', 'Estuche dañado.', 1, '-', 20, '2534', '0', '0', '24'),
(1748, 7, 289, 12, '200', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '200'),
(1749, 7, 51, 12, '60', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '60'),
(1750, 7, 305, 12, '40', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '40'),
(1751, 7, 1599, 12, '500', '', '2016-06-22', NULL, '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '500'),
(1752, 7, 1439, 12, '96', '', '2016-06-22', '2016-06-16', '2016-06-22', 'Sin descripción.', 1, '-', 20, '2534', '0', '0', '96'),
(1753, 40, 1015, 12, '1', '', '2016-06-22', NULL, '2016-06-22', 'Error de medida.', 1, '20/10/2011', 20, '2535', '0', '0', '1'),
(1754, 40, 1554, 12, '3', '', '2016-06-22', NULL, '2016-06-22', 'Partida a controlar.', 1, '30/09/2013', 13, '2535', '0', '3', '0'),
(1755, 40, 1554, 12, '1', '', '2016-06-22', NULL, '2016-06-22', 'Roto al sacar.', 1, '30/09/2013', 14, '2535', '0', '1', '0'),
(1756, 20, 1983, 12, '1', '', '2016-06-22', '2016-06-08', '2016-06-22', 'Sin descripción.', 1, '1424', 14, '2536', '0', '1', '0'),
(1757, 20, 1382, 1, '1', 'Filtro con exceso de uso.', '2016-06-22', '2016-06-08', '2016-06-22', 'Sin descripción.', 1, '06/11/2015', 4, '2536', '1', '0', '0'),
(1758, 20, 1733, 12, '1', '', '2016-06-22', '2016-06-08', '2016-06-22', 'Sin descripción.', 2, '17834    26/06/2015', 14, '2536', '0', '1', '0'),
(1759, 20, 1931, 5, '1', '', '2016-06-22', '2016-06-08', '2016-06-22', 'Sin descripción.', 1, '06/2014', 6, '2536', '0', '1', '0'),
(1760, 20, 1949, 12, '1', '', '2016-06-22', '2016-06-08', '2016-06-22', 'Sin descripción.', 1, '30/10/2015', 3, '2536', '0', '1', '0'),
(1761, 20, 2193, 2, '8', '', '2016-06-22', '2016-06-08', '2016-06-22', 'Sin descripción.', 1, '-', 4, '2536', '8', '0', '0'),
(1762, 20, 634, 12, '1', 'Filtro usado. Papel colapsado.', '2016-06-22', '2016-06-08', '2016-06-22', 'Sin descripción.', 1, '18/03/2014', 20, '2536', '0', '0', '1'),
(1763, 4, 2269, 12, '2', 'Manipulación inadecuada.', '2016-06-23', '2016-06-10', '2016-06-23', 'Se rompio el tornillo al colocar.', 1, '004', 14, '2537', '2', '0', '0'),
(1764, 4, 2178, 2, '4', '', '2016-06-23', '2016-06-10', '2016-06-23', 'Fallaron.', 1, '-', 4, '2537', '4', '0', '0'),
(1765, 4, 2016, 5, '1', 'Conector fuera de medida.', '2016-06-23', '2016-06-10', '2016-06-23', 'Fallo.', 1, '-', 6, '2537', '0', '1', '0'),
(1766, 4, 1941, 6, '2', '', '2016-06-23', '2016-06-10', '2016-06-23', 'Fallaron chupa aire.', 1, '30/10/2015', 7, '2537', '0', '2', '0'),
(1767, 4, 2226, 2, '4', 'Exceso de tiempo electrico.', '2016-06-23', '2016-06-10', '2016-06-23', 'Fallaron.', 1, 'H97', 4, '2537', '4', '0', '0'),
(1768, 4, 1347, 6, '1', '', '2016-06-23', '2016-06-10', '2016-06-23', 'Pierde por la brida.', 1, '-', 8, '2537', '1', '0', '0'),
(1769, 4, 2398, 4, '2', '', '2016-06-23', '2016-06-10', '2016-06-23', 'Fallaron.', 1, '14631', 4, '2537', '2', '0', '0'),
(1770, 4, 1731, 6, '1', '', '2016-06-23', '2016-06-10', '2016-06-23', 'Pierde.', 2, '-', 7, '2537', '0', '1', '0'),
(1771, 4, 2430, 4, '2', '', '2016-06-23', '2016-06-10', '2016-06-23', 'Fallada.', 1, '14E15', 22, '2537', '0', '2', '0'),
(1772, 4, 1591, 12, '1', 'Filtro usado. Exceso de uso.', '2016-06-23', '2016-06-10', '2016-06-23', 'No levanta presion.', 2, '03/10/2013', 2, '2537', '1', '0', '0'),
(1773, 4, 1941, 12, '1', '', '2016-06-23', '2016-06-10', '2016-06-23', 'Pico roto.', 1, '14/05/2015', 14, '2537', '0', '1', '0'),
(1774, 29, 1608, 12, '1', 'Papel deteriorado.', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción.', 1, '-', 14, '2538', '0', '1', '0'),
(1775, 29, 1370, 1, '2', '', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción.', 1, '29/2015', 4, '2538', '2', '0', '0'),
(1776, 29, 1941, 12, '1', '', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción.', 1, '-', 14, '2538', '0', '1', '0'),
(1777, 29, 1384, 12, '4', '', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción.', 2, '20/12/2013', 13, '2538', '0', '4', '0'),
(1778, 29, 1602, 1, '2', 'Faltante de sello.', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción.', 1, '05/2015', 4, '2538', '2', '0', '0'),
(1779, 29, 1729, 6, '1', '', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción.', 2, '08/2012', 7, '2538', '0', '1', '0'),
(1780, 29, 1428, 3, '1', '', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción.', 1, '06/21/2010', 5, '2538', '0', '1', '0'),
(1781, 29, 1622, 12, '10', '', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción.', 2, '16223', 20, '2538', '0', '0', '10'),
(1782, 29, 1980, 12, '1', '', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción.', 1, '1512', 14, '2538', '0', '1', '0'),
(1783, 29, 1381, 1, '1', '', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción.', 1, '05/31/2014', 4, '2538', '1', '0', '0'),
(1784, 29, 1405, 12, '1', '', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción.', 1, '06/12/2015', 18, '2538', '0', '1', '0'),
(1785, 29, 1723, 12, '1', '', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción.', 2, '17769   02/12/2014', 17, '2538', '0', '1', '0'),
(1786, 29, 1723, 6, '2', '', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción.', 2, '12/2011', 7, '2538', '0', '2', '0'),
(1787, 29, 1723, 12, '1', '', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción', 2, '02/12/2014', 14, '2538', '0', '1', '0'),
(1788, 29, 1931, 5, '1', '', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción.', 1, '09/2014', 6, '2538', '0', '1', '0'),
(1789, 29, 1719, 1, '1', '', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción.', 1, '06/2013', 4, '2538', '1', '0', '0'),
(1790, 29, 1682, 12, '1', '', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción.', 1, '24/04/2015', 17, '2538', '0', '1', '0'),
(1791, 29, 1682, 12, '1', '', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción,', 1, '-', 20, '2538', '0', '0', '1'),
(1792, 29, 1682, 6, '2', '', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción', 1, '-', 4, '2538', '2', '0', '0'),
(1793, 29, 1123, 12, '1', '', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción.', 1, '-', 14, '2538', '0', '1', '0'),
(1794, 29, 715, 12, '1', '', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción.', 2, '16377     25/10/2013', 14, '2538', '0', '1', '0'),
(1795, 29, 1982, 6, '1', '', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción.', 1, '1252', 7, '2538', '0', '1', '0'),
(1796, 29, 689, 12, '1', '', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción.', 1, '14/08/2014', 14, '2538', '0', '1', '0'),
(1797, 29, 1415, 12, '1', '', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción.', 2, '06/2014', 18, '2538', '0', '1', '0'),
(1798, 29, 1146, 12, '1', '', '2016-06-23', '2016-06-02', '2016-06-23', 'Sin descripción.', 1, '17072', 14, '2538', '0', '1', '0'),
(1799, 28, 2016, 12, '1', '', '2016-06-27', '2016-05-31', '2016-06-27', 'Soporte fuera de medida.', 1, '-', 23, '2539', '0', '1', '0'),
(1800, 28, 2016, 6, '1', '', '2016-06-27', '2016-05-31', '2016-06-27', 'Soporte fuera de medida.', 1, '-', 7, '2539', '0', '1', '0'),
(1801, 28, 2016, 5, '1', 'Conector fuera de medida.', '2016-06-27', '2016-05-31', '2016-06-27', 'Soporte fuera de medida.', 1, '-', 6, '2539', '0', '1', '0'),
(1802, 28, 2269, 12, '1', 'Ver IT Nº273.', '2016-06-27', '2016-05-31', '2016-06-27', 'Desarmada.', 1, 'A16', 14, '2539', '1', '0', '0'),
(1803, 28, 493, 12, '1', '', '2016-06-27', '2015-05-30', '2016-06-27', 'Felpa despegado.', 2, '27/06/2015', 14, '2540', '0', '1', '0'),
(1804, 28, 2269, 12, '1', 'Ver IT Nº274.', '2016-06-27', '2015-05-30', '2016-06-27', 'Rota.', 1, 'T35', 14, '2540', '1', '0', '0'),
(1805, 28, 2271, 12, '1', 'Perno de conexión dañado por exceso de torque.', '2016-06-27', '2016-06-13', '2016-06-27', 'Desarmada.', 1, 'E94', 14, '2541', '1', '0', '0'),
(1806, 8, 1728, 6, '1', 'Pico deformado por manipulación inadecuada. Falla no atribuible al producto.', '2016-07-01', '2016-05-03', '2016-07-01', 'Pierde.', 1, '20/03/2013', 7, '2542', '1', '0', '0'),
(1807, 8, 1969, 3, '1', '', '2016-07-01', '2016-05-03', '2016-07-01', 'Falla en la rosca.', 1, '01/26/2015', 5, '2542', '0', '1', '0'),
(1810, 8, 1728, 6, '2', '', '2016-07-04', '2016-05-03', '2016-07-04', 'Fallaron.', 2, '12/2011', 7, '2542', '0', '2', '0'),
(1812, 8, 1969, 6, '1', '', '2016-07-04', '2016-05-03', '2016-07-04', 'Pierde.', 1, '01/26/2015', 7, '2542', '0', '1', '0'),
(1814, 8, 2030, 3, '1', 'Rosca forzada.', '2016-07-04', '2016-05-03', '2016-07-04', 'Falla rosca.', 1, '-', 2, '2542', '1', '0', '0'),
(1815, 8, 2393, 4, '2', '', '2016-07-04', '2016-05-03', '2016-07-04', 'Fallaron.', 1, '-', 3, '2542', '0', '2', '0'),
(1816, 8, 2430, 4, '2', '', '2016-07-04', '2016-05-03', '2016-07-04', 'Fallaron.', 1, '12L25', 4, '2542', '2', '0', '0'),
(1817, 8, 1981, 6, '1', '', '2016-07-04', '2016-05-03', '2016-07-04', 'Toma aire.', 1, '1016', 7, '2542', '0', '1', '0'),
(1818, 8, 1981, 6, '1', '', '2016-07-04', '2016-05-03', '2016-07-04', 'Toma aire.', 1, '1424', 8, '2542', '1', '0', '0'),
(1819, 8, 1975, 12, '1', '', '2016-07-04', '2016-05-03', '2016-07-04', 'Se vacia forma aire.', 1, '-', 23, '2542', '0', '1', '0'),
(1820, 8, 1944, 6, '1', '', '2016-07-04', '2016-05-03', '2016-07-04', 'Forma aire falla.', 1, '-', 8, '2542', '1', '0', '0'),
(1821, 8, 1941, 6, '1', '', '2016-07-04', '2016-05-03', '2016-07-04', 'Falla toma aire.', 1, '14/05/2015', 7, '2542', '0', '1', '0'),
(1822, 8, 2016, 12, '1', '', '2016-07-04', '2016-05-03', '2016-07-04', 'Forma aire.', 1, '-', 23, '2542', '0', '1', '0'),
(1823, 8, 2016, 5, '2', 'Conector fuera d medida.', '2016-07-04', '2016-05-03', '2016-07-04', 'Forma aire.', 1, '0732', 6, '2542', '0', '2', '0'),
(1824, 8, 2251, 2, '3', 'Bujía usadas.', '2016-07-04', '2016-05-03', '2016-07-04', 'Fallaron.', 1, 'R04', 2, '2542', '3', '0', '0'),
(1825, 8, 2725, 12, '1', '', '2016-07-04', '2016-05-03', '2016-07-04', 'Sensor muy pegado al caño.', 1, '03/06/2015', 17, '2542', '0', '1', '0'),
(1826, 8, 1682, 1, '1', '', '2016-07-04', '2016-05-03', '2016-07-04', 'Fallo.', 1, '15/08/2015', 4, '2542', '1', '0', '0'),
(1827, 8, 1922, 12, '1', '', '2016-07-04', '2016-05-03', '2016-07-04', 'Falta O´ring.', 1, '6711   19/01/2009', 16, '2542', '0', '1', '0'),
(1828, 8, 2398, 4, '6', '', '2016-07-04', '2016-05-03', '2016-07-04', 'Fallaron.', 1, '15A07', 3, '2542', '0', '6', '0'),
(1829, 8, 2555, 4, '1', '', '2016-07-04', '2016-05-03', '2016-07-04', 'Quemada.', 1, '-', 22, '2542', '0', '1', '0'),
(1830, 8, 2555, 4, '1', '', '2016-07-04', '2016-05-03', '2016-07-04', 'Fallo.', 1, '-', 3, '2542', '0', '1', '0'),
(1831, 8, 2540, 4, '1', '', '2016-07-04', '2016-05-03', '2016-07-04', 'Quemada.', 1, '-', 22, '2542', '0', '1', '0'),
(1832, 8, 2540, 4, '1', '', '2016-07-04', '2016-05-03', '2016-07-04', 'Fallo.', 1, '-', 3, '2542', '0', '1', '0'),
(1833, 8, 2413, 4, '1', '', '2016-07-04', '2016-05-03', '2016-07-04', 'Fallo.', 1, '-', 3, '2542', '0', '1', '0'),
(1834, 8, 1957, 1, '1', 'Filtro usado.', '2016-07-04', '2016-05-03', '2016-07-04', 'No es mismo de la foto.', 1, '-', 4, '2542', '1', '0', '0'),
(1835, 8, 1957, 12, '2', 'Falta purgador.', '2016-07-04', '2016-05-03', '2016-07-04', 'No es el mismo de la foto.', 1, '-', 20, '2542', '0', '0', '2'),
(1836, 8, 1946, 5, '1', '', '2016-07-04', '2016-05-03', '2016-07-04', 'Fallado.', 1, '05/01/2012', 6, '2542', '0', '1', '0'),
(1837, 8, 2390, 4, '2', '', '2016-07-04', '2016-05-03', '2016-07-04', 'Falladas.', 1, '-', 4, '2542', '2', '0', '0'),
(1838, 235, 2453, 12, '4', '', '2016-07-04', '2016-06-27', '2016-07-04', 'Sin descripción.', 1, '-', 14, '2543', '0', '4', '0'),
(1839, 235, 2534, 12, '1', '', '2016-07-04', '2016-06-27', '2016-07-04', 'Sin descripción.', 1, '-', 20, '2543', '0', '0', '1'),
(1840, 55, 693, 5, '1', '', '2016-07-04', '2016-06-21', '2016-07-04', 'Fallado.', 1, '12/2015', 6, '2544', '0', '1', '0'),
(1841, 55, 2271, 2, '1', 'Bujía carbonizada. Falla no atribuible al producto.', '2016-07-04', '2016-06-21', '2016-07-04', 'Falla.', 1, 'C00', 2, '2544', '1', '0', '0'),
(1842, 55, 2681, 13, '1', '', '2016-07-04', '2016-06-21', '2016-07-04', 'Falla.', 2, '-', 4, '2544', '1', '0', '0'),
(1843, 8, 1388, 3, '1', '', '2016-07-05', '2016-05-03', '2016-07-01', 'Falla en la rosca.', 1, '04/24/15', 5, '2542', '0', '1', '0'),
(1844, 20, 1370, 1, '1', '', '2016-07-06', '2016-07-05', '2016-07-06', 'Sin descripción.', 1, '05/29/2015', 4, '2545', '1', '0', '0'),
(1845, 24, 1729, 12, '120', 'Desprendimiento de tapa metálica.', '2016-07-07', '2016-06-23', '2016-07-05', 'Elemento interior suelto.', 2, '-', 13, '2546', '0', '120', '0'),
(1846, 46, 1412, 1, '1', '', '2016-07-14', '2016-07-12', '2016-07-14', 'Sin descripción.', 1, '-', 3, '2547', '0', '1', '0'),
(1847, 46, 2725, 6, '1', '', '2016-07-14', '2016-07-12', '2016-07-14', 'Sin descripción.', 1, '03/06/2015', 7, '2547', '0', '1', '0'),
(1848, 46, 1473, 12, '20', '5 unidades con presencia parcial de óxido.', '2016-07-18', '2016-07-05', '2016-07-18', 'Mal estado. Oxidados.', 1, '30/12/2012', 18, '2548', '0', '5', '15'),
(1849, 135, 2453, 12, '250', 'Son 250 unidades. No son 260 unidades como detalla el informe.', '2016-07-18', NULL, '2016-07-18', 'Sin descripción.', 1, '-', 20, '2549', '0', '0', '250'),
(1850, 135, 2735, 12, '48', '', '2016-07-18', NULL, '2016-07-18', 'Sin descripción.', 1, '-', 20, '2549', '0', '0', '48'),
(1851, 4, 1142, 12, '8', '', '2016-07-18', '2016-07-01', '2016-07-18', 'Devolución comercial. Sin rotación.', 2, '18605   27/01/2016', 20, '2550', '0', '0', '8'),
(1852, 4, 1153, 12, '2', '', '2016-07-18', '2016-07-01', '2016-07-18', 'Devolución comercial. Pedido por error.', 2, '8625      11/12/2009', 20, '2550', '0', '0', '2'),
(1853, 6, 1982, 12, '2', 'Carcasa deformada por exceso de  presión. Falla no atribuible al producto.', '2016-07-19', '2016-06-22', '2016-07-19', 'Sin descripción.', 1, '1534', 14, '2551', '2', '0', '0'),
(1854, 6, 1983, 1, '1', '', '2016-07-19', '2016-06-22', '2016-07-19', 'Sin descripción.', 1, '1512', 23, '2551', '0', '1', '0'),
(1855, 6, 1983, 1, '1', '', '2016-07-19', '2016-06-22', '2016-07-19', 'Sin descripción.', 1, '1516', 5, '2551', '0', '1', '0'),
(1856, 6, 1980, 12, '1', 'Carcasa deformada por exceso de presión. Falla no atribuible al producto.', '2016-07-19', '2016-06-22', '2016-07-19', 'Sin descripción.', 1, '1215', 14, '2551', '1', '0', '0'),
(1857, 6, 1387, 1, '1', '', '2016-07-19', '2016-06-22', '2016-07-19', 'Sin descripción.', 1, '01/08/2016', 4, '2551', '1', '0', '0'),
(1858, 6, 1370, 1, '2', 'Filtro usado. Presencia de aceite entre junta y brida.', '2016-07-19', '2016-06-22', '2016-07-19', 'Sin descripción.', 1, '01/05/2016', 4, '2551', '2', '0', '0'),
(1859, 6, 1370, 1, '1', '', '2016-07-19', '2016-06-22', '2016-07-19', 'Sin descripción.', 2, '17117    12/06/2015', 18, '2551', '0', '1', '0'),
(1860, 6, 1405, 1, '1', '', '2016-07-19', '2016-06-22', '2016-07-19', 'Sin descripción.', 1, '09/14/2015', 5, '2551', '0', '1', '0'),
(1861, 6, 1384, 12, '3', '', '2016-07-19', '2016-06-22', '2016-07-19', 'Sin descripción.', 2, '16565   12/2013', 13, '2551', '0', '3', '0'),
(1862, 6, 1058, 12, '1', '', '2016-07-19', '2016-06-22', '2016-07-19', 'Sin descripción.', 2, '18134', 14, '2551', '0', '1', '0'),
(1863, 6, 1723, 1, '1', '', '2016-07-19', '2016-06-22', '2016-07-19', 'Sin descripción.', 2, '02/2015', 7, '2551', '0', '1', '0'),
(1864, 6, 1978, 1, '1', '', '2016-07-19', '2016-06-22', '2016-07-19', 'Sin descripción.', 1, '07/28/2014', 12, '2551', '0', '1', '0'),
(1865, 6, 1941, 1, '1', '', '2016-07-19', '2016-06-22', '2016-07-19', 'Sin descripción.', 1, '14/05/2015', 4, '2551', '1', '0', '0'),
(1866, 6, 2011, 1, '1', '', '2016-07-19', '2016-06-22', '2016-07-19', 'Sin descripción.', 1, '1534', 23, '2551', '0', '1', '0'),
(1867, 6, 1733, 1, '1', '', '2016-07-19', '2016-06-22', '2016-07-19', 'Sin descripción.', 2, '06/2012', 7, '2551', '0', '1', '0'),
(1868, 6, 1506, 12, '1', 'Filtro usado. Exceso de uso.', '2016-07-19', '2016-06-22', '2016-07-19', 'Sin descripción.', 2, '17278', 2, '2551', '1', '0', '0'),
(1869, 6, 1382, 1, '2', 'Filtro usado. Exceso de uso.', '2016-07-19', '2016-06-22', '2016-07-19', 'Sin descripción.', 1, '09/12/2015', 2, '2551', '2', '0', '0'),
(1870, 6, 2127, 2, '4', 'Problema del motor.', '2016-07-19', '2016-06-22', '2016-07-19', 'Sin descripción.', 1, '-', 4, '2551', '4', '0', '0'),
(1871, 6, 2139, 12, '4', '', '2016-07-19', '2016-06-22', '2016-07-19', 'Sin descripción.', 1, '-', 14, '2551', '0', '4', '0'),
(1872, 6, 1738, 1, '2', '', '2016-07-19', '2016-06-22', '2016-07-19', 'Sin descripción.', 2, '-', 7, '2551', '0', '2', '0'),
(1873, 6, 1984, 1, '1', '', '2016-07-19', '2016-06-22', '2016-07-19', 'Sin descripción.', 1, '10/06/2012', 4, '2551', '1', '0', '0'),
(1874, 6, 1148, 12, '1', '', '2016-07-19', '2016-06-22', '2016-07-19', 'Sin descripción.', 1, '-', 14, '2551', '0', '1', '0'),
(1875, 6, 1996, 12, '1', '', '2016-07-19', '2016-06-22', '2016-07-19', 'Sin descripción.', 1, '1032', 20, '2551', '0', '0', '1'),
(1876, 6, 1695, 1, '1', 'Falla no atribuible al producto.', '2016-07-19', '2016-06-22', '2016-07-19', 'Sin descripción.', 1, '-', 14, '2551', '1', '0', '0'),
(1877, 65, 1739, 12, '300', '', '2016-07-19', NULL, '2016-07-19', 'Error de pedido.', 2, '18641    10/03/2016', 20, '2552', '0', '0', '300'),
(1878, 65, 33, 12, '10', '', '2016-07-19', NULL, '2016-07-19', 'Duplicaron pedido.', 1, '30/12/2015', 20, '2552', '0', '0', '10'),
(1879, 65, 1379, 12, '10', '', '2016-07-19', NULL, '2016-07-19', 'Duplicaron pedido.', 1, '09/07/2015', 20, '2552', '0', '0', '10'),
(1880, 65, 1380, 12, '10', '', '2016-07-19', NULL, '2016-07-19', 'Duplicaron pedido.', 1, '11/27/2015', 20, '2552', '0', '0', '10'),
(1881, 65, 494, 12, '10', '', '2016-07-19', NULL, '2016-07-19', 'Duplicaron pedido.', 2, '17755      28/05/2015', 20, '2552', '0', '0', '10'),
(1882, 65, 1374, 12, '10', '', '2016-07-19', NULL, '2016-07-19', 'Duplicaron pedido.', 1, '06/09/2015', 20, '2552', '0', '0', '10'),
(1883, 65, 1723, 6, '3', 'No son 2 como detalla informe. Son 3 unidades.', '2016-07-19', NULL, '2016-07-19', 'Garantia.', 2, '17871', 7, '2552', '0', '3', '0'),
(1884, 65, 2074, 12, '1', '', '2016-07-19', NULL, '2016-07-19', 'Garantia.', 1, '-', 14, '2552', '0', '1', '0'),
(1885, 65, 1728, 6, '1', '', '2016-07-19', NULL, '2016-07-19', 'Garantia.', 1, '10/2013', 8, '2552', '1', '0', '0'),
(1886, 65, 1682, 6, '1', '', '2016-07-19', NULL, '2016-07-19', 'Garantia.', 1, '10/10/2013', 8, '2552', '1', '0', '0'),
(1888, 65, 1975, 6, '9', '7 uniddaes sin uso. Estuches escritos.', '2016-07-19', NULL, '2016-07-19', 'Pierden.', 1, '1518', 8, '2552', '2', '0', '7'),
(1889, 4, 1387, 6, '1', 'Presencia de aceite entre sello y brida.', '2016-07-20', '2016-07-01', '2016-07-20', 'Fallo. Pierde.', 1, '01/08/2016', 8, '2553', '1', '0', '0'),
(1890, 4, 1996, 6, '1', '', '2016-07-20', '2016-07-01', '2016-07-20', 'Se descarga.', 1, '1032', 8, '2553', '1', '0', '0'),
(1891, 4, 1329, 6, '1', '', '2016-07-20', '2016-07-01', '2016-07-20', 'Pierde por la brida.', 1, '-', 7, '2553', '0', '1', '0'),
(1892, 4, 2101, 12, '1', 'Purgador dañado por exceso de torque.', '2016-07-20', '2016-07-01', '2016-07-20', 'Roto el sensor.', 1, '1252', 14, '2553', '1', '0', '0'),
(1893, 4, 1833, 3, '1', '', '2016-07-20', '2016-07-01', '2016-07-20', 'Fallo la rosca.', 1, '-', 5, '2553', '0', '1', '0'),
(1894, 4, 1721, 12, '1', '', '2016-07-20', '2016-07-01', '2016-07-20', 'Fuera de medida.', 1, '-', 19, '2553', '1', '0', '0'),
(1895, 4, 1602, 12, '1', 'Filtro usado. Exceso de uso.', '2016-07-20', '2016-07-01', '2016-07-20', 'Fallado.', 2, '17372', 2, '2553', '1', '0', '0'),
(1896, 234, 1932, 5, '1', '', '2016-07-21', '2016-07-14', '2016-07-21', 'No entra. Ver O´ring', 1, '06/2014', 6, '2554', '0', '1', '0'),
(1897, 234, 1441, 12, '1', 'Falta O´ring.', '2016-07-21', '2016-07-14', '2016-07-21', 'Falta junta.', 1, '09/10/2015', 16, '2554', '0', '1', '0'),
(1898, 234, 1617, 5, '1', 'Falta O´ring.', '2016-07-21', '2016-07-14', '2016-07-21', 'Fuera de medida.', 1, '-', 19, '2554', '1', '0', '0'),
(1899, 234, 1387, 3, '1', '', '2016-07-21', '2016-07-14', '2016-07-21', 'Falla rosca.', 1, '01/08/2016', 4, '2554', '1', '0', '0'),
(1900, 234, 1972, 5, '1', '', '2016-07-21', '2016-07-14', '2016-07-21', 'Picos fuera de medida', 1, '1534', 19, '2554', '1', '0', '0'),
(1901, 24, 1723, 12, '33', '', '2016-07-25', '2016-07-20', '2016-07-25', 'Sin descripción.', 2, '-', 20, '2555', '0', '0', '33'),
(1902, 24, 1723, 12, '10', '', '2016-07-25', '2016-07-20', '2016-07-25', 'Sin descripción.', 2, '-', 14, '2555', '0', '10', '0'),
(1903, 24, 946, 12, '1', '', '2016-07-25', '2016-07-20', '2016-07-25', 'Sin descripción.', 2, '18482        21/01/2016', 9, '2555', '0', '1', '0'),
(1904, 24, 946, 1, '2', '', '2016-07-25', '2016-07-20', '2016-07-25', 'Sin descripción.', 2, '18482         21/02/2016', 20, '2555', '0', '0', '2'),
(1905, 24, 1403, 12, '3', 'Falta junta. Manipulación inadecuada.', '2016-07-25', '2016-07-20', '2016-07-25', 'Sin descripción.', 1, '01-07/2016', 16, '2555', '0', '0', '3'),
(1906, 4, 1748, 12, '9', '', '2016-07-26', '2016-07-21', '2016-07-25', 'Pedido por error.', 1, '0934', 20, '2556', '0', '0', '9'),
(1907, 4, 1683, 12, '3', '', '2016-07-26', '2016-07-21', '2016-07-26', 'Pedido por error.', 1, '25/07/2013', 20, '2556', '0', '0', '3'),
(1909, 28, 1411, 3, '1', '', '2016-07-27', '2016-07-20', '2016-07-27', 'Pierde.', 1, '11/11/2013', 5, '2557', '0', '1', '0'),
(1910, 28, 1945, 12, '1', 'Mala manipulacion.', '2016-07-27', '2016-07-20', '2016-07-27', 'Pico roto.', 1, '09/2015', 14, '2557', '1', '0', '0'),
(1911, 230, 589, 12, '14', '', '2016-07-29', NULL, '2016-07-28', '-', 1, '22/09/2012', 20, '2558', '0', '0', '14'),
(1912, 4, 1289, 12, '1', '', '2016-08-02', '2016-07-21', '2016-07-27', 'Rota la junta.', 1, 'L.22/14', 10, '2559', '0', '1', '0'),
(1913, 4, 702, 12, '10', '', '2016-08-02', '2016-07-21', '2016-07-27', 'Mal fabricado. El trapezoidal esta del lado opuesto.', 1, 'L. 23/11/15', 13, '2559', '0', '10', '0'),
(1914, 4, 1602, 12, '5', '', '2016-08-02', '2016-07-21', '2016-07-27', 'Partida vieja.', 2, 'L. 15678 18/06/13', 20, '2559', '0', '0', '5'),
(1915, 4, 2228, 12, '4', 'Bujías usadas. Exceso de hollín. Falla del motor. ', '2016-08-02', '2016-07-21', '2016-07-27', 'Colocadas y al mes fallaron.', 1, 'N84', 14, '2559', '4', '0', '0'),
(1916, 4, 1941, 6, '1', '', '2016-08-02', '2016-07-21', '2016-07-27', 'Fallo.', 1, '30/10/15', 8, '2559', '1', '0', '0'),
(1917, 4, 2253, 12, '4', 'Bujías usadas. Tubo incandescente inflamado por exceso de tiempo de suministro eléctrico.', '2016-08-02', '2016-07-21', '2016-07-27', 'Falladas.', 1, 'I17', 14, '2559', '4', '0', '0'),
(1918, 4, 2016, 6, '1', '', '2016-08-02', '2016-07-21', '2016-07-27', 'Fallado. Pierde.', 1, '-', 7, '2559', '0', '1', '0'),
(1919, 4, 2555, 4, '1', '', '2016-08-02', '2016-07-21', '2016-07-27', 'Fallo.', 1, '.-', 24, '2559', '0', '1', '0'),
(1920, 4, 1352, 12, '1', '', '2016-08-02', '2016-07-21', '2016-07-27', 'Pierde por la brida.', 1, '24/9/2012', 10, '2559', '0', '1', '0'),
(1921, 4, 1944, 12, '1', '', '2016-08-02', '2016-07-21', '2016-07-27', 'Fallado.', 1, 'L.20/06/13', 14, '2559', '0', '1', '0'),
(1922, 4, 1987, 6, '1', '', '2016-08-02', '2016-07-21', '2016-07-27', 'Fallado.', 1, 'L. 0948', 8, '2559', '1', '0', '0'),
(1923, 4, 1978, 1, '1', '', '2016-08-02', '2016-07-21', '2016-07-27', 'Fallado.', 1, '-', 12, '2559', '0', '1', '0'),
(1924, 4, 1933, 10, '1', 'Filtro usado.', '2016-08-02', '2016-07-21', '2016-07-27', 'En marcha no acelera. No lo toma la computadora.', 1, 'L.09/2014', 4, '2559', '1', '0', '0'),
(1925, 4, 2398, 12, '2', '', '2016-08-02', '2016-07-21', '2016-07-27', 'Suelto el filamento.', 1, 'L.15H18', 14, '2559', '0', '2', '0'),
(1926, 79, 2591, 11, '2', '', '2016-08-02', '2016-07-19', '2016-07-27', 'No funciona.', 1, '-', 3, '2560', '0', '2', '0'),
(1927, 79, 2275, 12, '11', 'Bujias usadas. Problema de caja temporizadora.Son 11 U. No son 8 U. como se detalla. Ver IT Nº280', '2016-08-02', '2016-07-19', '2016-07-27', 'Fallaron.', 1, 'F47', 14, '2560', '11', '0', '0'),
(1928, 79, 2728, 12, '4', 'Bujias usadas. Problema de caja temporizadora. Ver IT. Nº280', '2016-08-02', '2016-07-19', '2016-07-27', 'Fallo.', 1, 'H97', 14, '2560', '4', '0', '0'),
(1929, 79, 2269, 12, '5', 'Bujias usadas. Probelma de caja temporizadora. Son 5 U. No son 4 U. como se detalla. Ver IT. Nº280', '2016-08-02', '2016-07-19', '2016-07-27', 'Fallo.', 1, 'E87', 14, '2560', '5', '0', '0'),
(1930, 236, 884, 12, '1', 'Manipulación inadecuada. Estuche dañado.', '2016-08-08', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 14, '2561', '1', '0', '0'),
(1931, 236, 775, 12, '1', ' Manipulación inadecuada. Estuche dañado.', '2016-08-08', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, 'L.10978', 14, '2561', '1', '0', '0'),
(1933, 236, 1431, 1, '3', 'Sin estuche.', '2016-08-08', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '25 11 10', 4, '2561', '3', '0', '0'),
(1934, 236, 385, 5, '1', '', '2016-08-08', '2016-07-27', '2016-08-01', 'Fuera de medida.', 2, 'L12995 15.02.12', 6, '2561', '0', '1', '0');
INSERT INTO `reclamos` (`id_reclamo`, `id_cliente`, `id_producto`, `id`, `cantidad_total`, `observacion`, `fecha`, `fecha_emision`, `fecha_recepcion`, `motivo`, `id_origen`, `lote`, `id_resultado`, `nro_reclamo`, `cant_infundados`, `cant_fundados`, `cant_tema_comercial`) VALUES
(1935, 236, 715, 5, '1', '', '2016-08-08', '2016-07-27', '2016-08-01', 'Fuera de medida.', 2, 'L.10840 21.02.11', 6, '2561', '0', '1', '0'),
(1936, 236, 988, 12, '1', 'Manipulación inadecuada.  Estuche dañado. ', '2016-08-08', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 14, '2561', '1', '0', '0'),
(1937, 236, 1431, 1, '5', '', '2016-08-08', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '27.08', 5, '2561', '0', '5', '0'),
(1938, 236, 803, 12, '1', 'Manipulación inadecuada. Estuche dañado.', '2016-08-08', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 14, '2561', '1', '0', '0'),
(1939, 236, 746, 12, '1', '', '2016-08-08', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 14, '2561', '0', '1', '0'),
(1940, 236, 525, 12, '1', ' Manipulación inadecuada. Estuche dañado.', '2016-08-08', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 14, '2561', '1', '0', '0'),
(1941, 236, 715, 12, '1', '', '2016-08-08', '2016-07-27', '2016-08-01', 'Sin descripción', 1, 'L.17711 27.01.15', 14, '2561', '0', '1', '0'),
(1942, 236, 1723, 6, '2', '', '2016-08-08', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 7, '2561', '0', '2', '0'),
(1944, 236, 1425, 1, '1', 'Falta sello.', '2016-08-08', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '11.03.2008', 5, '2561', '0', '1', '0'),
(1945, 236, 2075, 12, '1', 'Manipulación inadecuada. Estuche dañado.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 14, '2561', '1', '0', '0'),
(1946, 236, 1968, 1, '2', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, 'L.1016', 3, '2561', '0', '2', '0'),
(1947, 236, 1969, 1, '2', 'Filtro usado.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 4, '2561', '2', '0', '0'),
(1948, 236, 1428, 3, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '31.08.2011', 5, '2561', '0', '1', '0'),
(1949, 236, 1456, 12, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '15.12.11', 14, '2561', '0', '1', '0'),
(1950, 236, 1890, 12, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '10.12.29', 14, '2561', '0', '1', '0'),
(1951, 236, 1959, 1, '1', 'Filtro usado.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 4, '2561', '1', '0', '0'),
(1952, 236, 1972, 1, '1', 'Filtro usado.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '06.15.09', 4, '2561', '1', '0', '0'),
(1953, 236, 1981, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, 'L.1016', 14, '2561', '1', '0', '0'),
(1954, 236, 1983, 12, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, 'L.1512', 14, '2561', '0', '1', '0'),
(1955, 236, 965, 12, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 14, '2561', '0', '1', '0'),
(1956, 236, 1169, 12, '3', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, 'L.15860 27.08.13', 14, '2561', '0', '3', '0'),
(1957, 236, 576, 12, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, 'L.9497 07.07.10', 14, '2561', '0', '1', '0'),
(1958, 236, 589, 12, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '22.09.2015', 14, '2561', '0', '1', '0'),
(1959, 236, 746, 12, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '07.03.2012', 14, '2561', '0', '1', '0'),
(1960, 236, 1251, 1, '3', 'Filtro usado.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 18, '2561', '3', '0', '0'),
(1961, 236, 1473, 12, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '10.08.2012', 14, '2561', '0', '1', '0'),
(1962, 236, 1411, 1, '1', 'Filtro usado.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '06.30.11', 4, '2561', '1', '0', '0'),
(1963, 236, 1387, 1, '1', 'Filtro usado.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '09.16.2006', 4, '2561', '1', '0', '0'),
(1964, 236, 1386, 1, '1', 'Filtro usado.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 4, '2561', '1', '0', '0'),
(1965, 236, 1728, 1, '2', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '07.06', 3, '2561', '0', '2', '0'),
(1966, 236, 1731, 1, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '04.02', 3, '2561', '0', '1', '0'),
(1967, 236, 1283, 1, '1', 'Filtro usado.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '09.16.2006', 4, '2561', '1', '0', '0'),
(1968, 236, 1980, 1, '1', 'Filtro usado.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, 'L.0639', 4, '2561', '1', '0', '0'),
(1969, 236, 1411, 12, '4', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '06.06.07', 14, '2561', '4', '0', '0'),
(1970, 236, 1439, 1, '1', 'Filtro usado.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '06.06.09', 4, '2561', '1', '0', '0'),
(1971, 236, 1424, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '06.06.07', 18, '2561', '1', '0', '0'),
(1972, 236, 1414, 1, '1', 'Manipulación inadecuada. Filtro usado.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '10.30.09', 4, '2561', '1', '0', '0'),
(1973, 236, 1384, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '08.2003', 14, '2561', '1', '0', '0'),
(1974, 236, 1062, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Manipulación inadecuada.', 2, '234/04', 14, '2561', '1', '0', '0'),
(1975, 236, 527, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '2595/04', 14, '2561', '1', '0', '0'),
(1976, 236, 1901, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '466/08', 14, '2561', '1', '0', '0'),
(1977, 236, 2070, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '08.31.2011', 14, '2561', '1', '0', '0'),
(1978, 236, 2555, 4, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '24L.6c07', 3, '2561', '0', '1', '0'),
(1979, 236, 611, 12, '1', 'Manipulación inadecuada. ', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '2061.04', 14, '2561', '1', '0', '0'),
(1980, 236, 775, 12, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, 'L.14104 10.10.12', 9, '2561', '0', '1', '0'),
(1981, 236, 1723, 1, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '2006', 7, '2561', '0', '1', '0'),
(1982, 236, 1980, 1, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '0948', 7, '2561', '0', '1', '0'),
(1983, 236, 1969, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '2006', 14, '2561', '1', '0', '0'),
(1984, 236, 1982, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '650/08', 14, '2561', '1', '0', '0'),
(1985, 236, 1396, 1, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '06.2006', 3, '2561', '0', '1', '0'),
(1986, 236, 1968, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, 'L.7040 25.03.09', 14, '2561', '1', '0', '0'),
(1987, 236, 1424, 12, '1', 'Manipulación inadecuada. Presenta oxido.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '06.06.07', 14, '2561', '1', '0', '0'),
(1988, 236, 1428, 1, '1', 'Filtro usado.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '07.2005', 4, '2561', '1', '0', '0'),
(1989, 236, 1429, 1, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '06.2005', 5, '2561', '0', '1', '0'),
(1990, 236, 1980, 1, '3', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '273/07', 3, '2561', '0', '3', '0'),
(1991, 236, 2074, 12, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '23390. -0L010', 14, '2561', '0', '1', '0'),
(1992, 236, 1387, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '1862/05', 14, '2561', '1', '0', '0'),
(1993, 236, 1109, 12, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '569/06', 14, '2561', '0', '1', '0'),
(1994, 236, 1411, 12, '4', 'Manipulación inadecuada. Presenta oxido.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '06.06.07', 14, '2561', '4', '0', '0'),
(1995, 236, 1983, 1, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '1512', 4, '2561', '1', '0', '0'),
(1996, 236, 1383, 1, '1', ' Filtro usado.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '10.17.07', 4, '2561', '1', '0', '0'),
(1997, 236, 1881, 12, '1', 'Filtro usado.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '12.06', 4, '2561', '1', '0', '0'),
(1998, 236, 1580, 12, '2', 'Filtro usado.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '735/07', 4, '2561', '2', '0', '0'),
(1999, 236, 1729, 6, '3', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Pierde por los picos.', 2, '03/07', 7, '2561', '0', '3', '0'),
(2000, 236, 1724, 1, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '69/08', 7, '2561', '0', '1', '0'),
(2001, 236, 1728, 1, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '06.09', 7, '2561', '0', '1', '0'),
(2002, 236, 1431, 12, '5', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '08.05', 14, '2561', '5', '0', '0'),
(2003, 236, 1602, 12, '1', 'Filtro usado.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '-', 4, '2561', '1', '0', '0'),
(2004, 236, 487, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, 'L.1546 14.07.11', 14, '2561', '1', '0', '0'),
(2005, 236, 1063, 12, '6', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '-', 14, '2561', '6', '0', '0'),
(2006, 236, 443, 5, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Fuera de medida.', 2, 'L12479 24.11.11', 6, '2561', '0', '1', '0'),
(2007, 236, 1147, 12, '2', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '15691', 14, '2561', '2', '0', '0'),
(2008, 236, 1166, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, 'L.4787 01.11.07', 14, '2561', '1', '0', '0'),
(2009, 236, 2397, 4, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 3, '2561', '0', '1', '0'),
(2010, 236, 1728, 1, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '03/12', 7, '2561', '0', '1', '0'),
(2011, 236, 1370, 1, '1', 'Filtro usado.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '10.07.08', 4, '2561', '1', '0', '0'),
(2012, 236, 1941, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 14, '2561', '1', '0', '0'),
(2013, 236, 1945, 1, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '110705', 3, '2561', '0', '1', '0'),
(2014, 236, 1724, 1, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '03/12', 7, '2561', '0', '1', '0'),
(2015, 236, 1130, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '-', 14, '2561', '1', '0', '0'),
(2016, 236, 1083, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '579/06', 14, '2561', '1', '0', '0'),
(2017, 236, 1132, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '2006', 14, '2561', '1', '0', '0'),
(2018, 236, 1109, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '559/06', 14, '2561', '1', '0', '0'),
(2019, 236, 479, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '32/06', 14, '2561', '1', '0', '0'),
(2020, 236, 479, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 14, '2561', '1', '0', '0'),
(2021, 236, 1394, 12, '1', 'Manipulación inadecuada. Falta sello.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '02/06', 14, '2561', '1', '0', '0'),
(2022, 236, 1968, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '949/04º', 14, '2561', '1', '0', '0'),
(2023, 236, 1411, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '03/05', 14, '2561', '1', '0', '0'),
(2024, 236, 1417, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '10/04', 14, '2561', '1', '0', '0'),
(2025, 236, 1383, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '138/05', 14, '2561', '1', '0', '0'),
(2026, 236, 1383, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '138/05', 14, '2561', '1', '0', '0'),
(2027, 236, 1387, 1, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '07/04', 4, '2561', '1', '0', '0'),
(2028, 236, 1413, 1, '2', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '02/05', 4, '2561', '2', '0', '0'),
(2029, 236, 1415, 1, '3', 'Filtro usado.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '07/06', 4, '2561', '3', '0', '0'),
(2030, 236, 1959, 1, '1', 'Filtro usado.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '07/05', 4, '2561', '1', '0', '0'),
(2031, 236, 1428, 1, '1', 'Filtro usado.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '06/05', 4, '2561', '1', '0', '0'),
(2032, 236, 1251, 1, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 3, '2561', '0', '1', '0'),
(2033, 236, 1981, 1, '3', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, 'L.719', 7, '2561', '0', '3', '0'),
(2034, 236, 2427, 4, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 4, '2561', '1', '0', '0'),
(2035, 236, 1898, 12, '2', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '1232/05', 14, '2561', '2', '0', '0'),
(2036, 236, 2540, 12, '2', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 23, '2561', '0', '2', '0'),
(2037, 236, 1114, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 14, '2561', '1', '0', '0'),
(2038, 236, 1728, 6, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '2374/04', 7, '2561', '0', '1', '0'),
(2039, 236, 1419, 1, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '1090/05', 5, '2561', '0', '1', '0'),
(2040, 236, 1411, 12, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '06/2005', 20, '2561', '0', '0', '1'),
(2041, 236, 1415, 1, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '64/06', 5, '2561', '0', '1', '0'),
(2042, 236, 1443, 12, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '1107/021', 14, '2561', '0', '1', '0'),
(2043, 236, 775, 12, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '10638', 9, '2561', '0', '1', '0'),
(2044, 236, 1723, 6, '2', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '1617/06', 7, '2561', '0', '2', '0'),
(2045, 236, 1260, 12, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '2222/04', 14, '2561', '0', '1', '0'),
(2046, 236, 1387, 1, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '100513', 4, '2561', '1', '0', '0'),
(2047, 236, 1384, 12, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, 'L.16565 10/2013', 13, '2561', '0', '1', '0'),
(2048, 236, 1980, 6, '2', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 7, '2561', '0', '2', '0'),
(2049, 236, 1972, 12, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '1344', 23, '2561', '0', '1', '0'),
(2050, 236, 1968, 1, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '1344', 5, '2561', '0', '1', '0'),
(2051, 236, 1990, 6, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '1326', 4, '2561', '1', '0', '0'),
(2052, 236, 1940, 1, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '20.04.2013', 4, '2561', '1', '0', '0'),
(2053, 236, 1207, 1, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '11628', 14, '2561', '0', '1', '0'),
(2054, 236, 1075, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '1019/07', 14, '2561', '1', '0', '0'),
(2055, 236, 1166, 12, '2', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '0713/05 30.03.12', 17, '2561', '0', '2', '0'),
(2056, 236, 1210, 12, '3', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '13225 30.03.2012', 17, '2561', '0', '3', '0'),
(2057, 236, 1167, 12, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 14, '2561', '0', '1', '0'),
(2058, 236, 1724, 6, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 2, '03/2012', 7, '2561', '0', '1', '0'),
(2059, 236, 1987, 6, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '10.06', 4, '2561', '1', '0', '0'),
(2060, 236, 1347, 1, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 4, '2561', '1', '0', '0'),
(2061, 236, 2397, 12, '2', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '12B28', 14, '2561', '0', '2', '0'),
(2062, 236, 1941, 12, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '15062012', 14, '2561', '0', '1', '0'),
(2063, 236, 2555, 4, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 22, '2561', '0', '1', '0'),
(2064, 236, 2176, 2, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 4, '2561', '1', '0', '0'),
(2065, 236, 2194, 2, '5', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 4, '2561', '5', '0', '0'),
(2066, 236, 2138, 2, '1', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 4, '2561', '1', '0', '0'),
(2067, 236, 2166, 12, '4', 'Ver IT. Nº 282', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 4, '2561', '4', '0', '0'),
(2068, 236, 2198, 2, '2', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '-', 4, '2561', '2', '0', '0'),
(2069, 236, 2271, 12, '4', 'Bujías usadas. Presencia de hollín.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, 'A22', 4, '', '4', '0', '0'),
(2070, 236, 2269, 12, '4', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, 'D73', 4, '2561', '4', '0', '0'),
(2071, 236, 2223, 12, '3', '', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, 'B06', 4, '2561', '3', '0', '0'),
(2072, 236, 2345, 12, '1', 'Bujías usadas. Exceso de tiempo de suministro eléctrico. ', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, 'O123', 4, '2561', '1', '0', '0'),
(2073, 236, 2349, 12, '1', 'Bujías usadas. Exceso de tiempo de suministro eléctrico. ', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '5E', 4, '2561', '1', '0', '0'),
(2074, 236, 2260, 12, '1', 'Bujías usadas. Exceso de tiempo de suministro eléctrico. ', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '6292', 4, '2561', '1', '0', '0'),
(2075, 236, 2736, 12, '1', 'Bujías usadas. Exceso de tiempo de suministro eléctrico. ', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '6C', 4, '2561', '1', '0', '0'),
(2076, 236, 322, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, '360/06', 14, '2561', '1', '0', '0'),
(2077, 236, 1415, 12, '1', 'Manipulación inadecuada.', '2016-08-09', '2016-07-27', '2016-08-01', 'Sin descripción.', 1, 'L.8342 11.11.09', 14, '2561', '1', '0', '0'),
(2078, 3, 2738, 12, '30', '', '2016-08-09', '2016-08-02', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2562', '0', '0', '30'),
(2079, 3, 49, 12, '80', '', '2016-08-09', '2016-08-02', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2562', '0', '0', '80'),
(2080, 3, 2741, 12, '15', '', '2016-08-09', '2016-08-02', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2562', '0', '0', '15'),
(2081, 3, 580, 12, '6', '', '2016-08-09', '2016-08-02', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2562', '0', '0', '6'),
(2082, 3, 934, 12, '7', '', '2016-08-09', '2016-08-02', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2562', '0', '0', '7'),
(2083, 3, 1876, 12, '6', '', '2016-08-09', '2016-08-02', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2562', '0', '0', '6'),
(2084, 3, 671, 12, '6', '', '2016-08-09', '2016-08-02', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2562', '0', '0', '6'),
(2085, 3, 647, 12, '8', '', '2016-08-09', '2016-08-02', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2562', '0', '0', '8'),
(2086, 3, 2742, 12, '7', '', '2016-08-09', '2016-08-02', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2562', '0', '0', '7'),
(2087, 3, 1386, 12, '20', '', '2016-08-09', '2016-08-02', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2562', '0', '0', '20'),
(2088, 3, 2743, 12, '6', '', '2016-08-09', '2016-08-02', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2562', '0', '0', '6'),
(2089, 3, 470, 12, '4', '', '2016-08-09', '2016-08-02', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2562', '0', '0', '4'),
(2090, 3, 787, 12, '25', '', '2016-08-09', '2016-08-02', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2562', '0', '0', '25'),
(2091, 236, 2271, 12, '4', 'Bujias usadas. Presencia de hollin.', '2016-08-10', '2016-07-27', '2016-08-01', 'Sin descripción', 1, '-', 4, '2561', '4', '0', '0'),
(2092, 3, 2744, 12, '6', '', '2016-08-10', '2016-08-02', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2562', '0', '0', '6'),
(2093, 237, 315, 12, '1', '', '2016-08-10', '2016-05-18', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2563', '0', '0', '1'),
(2094, 237, 596, 12, '1', '', '2016-08-10', '2016-05-18', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2563', '0', '0', '1'),
(2095, 237, 597, 12, '1', '', '2016-08-10', '2016-05-18', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2563', '0', '0', '1'),
(2096, 237, 637, 12, '1', '', '2016-08-10', '2016-05-18', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2563', '0', '0', '1'),
(2097, 237, 638, 12, '1', '', '2016-08-10', '2016-05-18', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2563', '0', '0', '1'),
(2098, 237, 674, 12, '1', '', '2016-08-10', '2016-05-18', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2563', '0', '0', '1'),
(2099, 237, 689, 12, '2', '', '2016-08-10', '2016-05-18', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2563', '0', '0', '2'),
(2100, 237, 1969, 12, '1', '', '2016-08-10', '2016-05-18', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2563', '0', '0', '1'),
(2101, 237, 2030, 12, '1', '', '2016-08-10', '2016-05-18', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2563', '0', '0', '1'),
(2102, 237, 1724, 12, '1', '', '2016-08-10', '2016-05-18', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2563', '0', '0', '1'),
(2103, 237, 1723, 12, '1', '', '2016-08-10', '2016-05-18', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2563', '0', '0', '1'),
(2104, 237, 1320, 12, '1', '', '2016-08-10', '2016-05-18', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2563', '0', '0', '1'),
(2105, 237, 1369, 12, '1', '', '2016-08-10', '2016-05-18', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2563', '0', '0', '1'),
(2106, 237, 1383, 12, '1', '', '2016-08-10', '2016-05-18', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2563', '0', '0', '1'),
(2107, 237, 1403, 12, '1', '', '2016-08-10', '2016-05-18', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2563', '0', '0', '1'),
(2108, 237, 1420, 12, '1', '', '2016-08-10', '2016-05-18', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2563', '0', '0', '1'),
(2109, 237, 1794, 12, '1', '', '2016-08-10', '2016-05-18', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2563', '0', '0', '1'),
(2110, 237, 176, 12, '1', '', '2016-08-10', '2016-05-18', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2563', '0', '0', '1'),
(2111, 237, 1062, 12, '1', '', '2016-08-10', '2016-05-18', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2563', '0', '0', '1'),
(2112, 237, 1063, 12, '1', '', '2016-08-10', '2016-05-18', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2563', '0', '0', '1'),
(2113, 237, 1925, 12, '1', '', '2016-08-10', '2016-05-18', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2563', '0', '0', '1'),
(2114, 237, 1732, 12, '1', '', '2016-08-10', '2016-05-18', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2563', '0', '0', '1'),
(2115, 135, 2200, 12, '48', '', '2016-08-10', '2016-07-29', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2564', '0', '0', '48'),
(2116, 1, 2016, 12, '62', '', '2016-08-10', '2016-07-30', '2016-08-05', 'Partida fallada', 1, '-', 13, '2565', '0', '62', '0'),
(2117, 1, 1138, 12, '1', '', '2016-08-10', '2016-07-30', '2016-08-05', 'Roto.', 2, 'L.18046', 14, '2565', '0', '1', '0'),
(2118, 1, 1415, 12, '2', '', '2016-08-10', '2016-07-30', '2016-08-05', 'Sin junta.', 1, 'L.15891', 16, '2565', '0', '2', '0'),
(2119, 1, 1369, 3, '1', '', '2016-08-10', '2016-07-30', '2016-08-05', 'Rosca fallada.', 1, '09.12.15', 5, '2565', '0', '1', '0'),
(2120, 1, 1414, 12, '1', '', '2016-08-10', '2016-07-30', '2016-08-05', 'Sin junta.', 2, '-', 16, '2565', '0', '1', '0'),
(2121, 1, 1945, 12, '1', '', '2016-08-10', '2016-07-30', '2016-08-05', 'Pico roto.', 1, '10082012', 14, '2565', '0', '1', '0'),
(2122, 1, 2011, 1, '1', '', '2016-08-10', '2016-07-30', '2016-08-05', 'Fallado.', 1, 'L.1544', 17, '2565', '0', '1', '0'),
(2123, 1, 1384, 12, '10', '', '2016-08-10', '2016-07-30', '2016-08-05', 'Fallado.', 2, 'Dic2013', 13, '2565', '0', '10', '0'),
(2124, 1, 1340, 1, '1', 'Filtro usado.', '2016-08-10', '2016-07-30', '2016-08-05', 'Fallado.', 1, '-', 4, '2565', '1', '0', '0'),
(2125, 238, 2547, 12, '500', '', '2016-08-10', '2016-07-27', '2016-08-05', 'Tema comercial.', 1, '-', 20, '2566', '0', '0', '500'),
(2126, 3, 1946, 5, '14', '', '2016-08-12', '2016-08-04', '2016-08-05', 'Mas altos que tabla.', 1, '05012012', 6, '2567', '0', '14', '0'),
(2127, 3, 772, 12, '1', '', '2016-08-12', '2016-08-04', '2016-08-05', 'Abollado.', 2, 'L.13635 02.08.12', 14, '2567', '0', '1', '0'),
(2128, 3, 2398, 12, '2', '', '2016-08-12', '2016-08-04', '2016-08-05', 'Falla.', 1, '14G31', 22, '2567', '0', '2', '0'),
(2129, 3, 2397, 12, '2', '', '2016-08-12', '2016-08-04', '2016-08-05', 'Falla.', 1, '7J17', 23, '2567', '0', '2', '0'),
(2130, 3, 2411, 4, '2', '', '2016-08-12', '2016-08-04', '2016-08-05', 'Falla.', 1, '-', 4, '2567', '2', '0', '0'),
(2131, 3, 1309, 12, '1', '', '2016-08-12', '2016-08-04', '2016-08-05', 'Abollado.', 1, '09/10/15', 14, '2567', '0', '1', '0'),
(2132, 3, 1794, 6, '1', 'Filtro usado.', '2016-08-12', '2016-08-04', '2016-08-05', 'Falla.', 1, '-', 8, '2567', '1', '0', '0'),
(2133, 3, 1978, 12, '1', '', '2016-08-12', '2016-08-04', '2016-08-05', 'Falla.', 1, 'Jul.26.2014', 23, '2567', '0', '1', '0'),
(2134, 3, 126, 12, '1', '', '2016-08-12', '2016-08-04', '2016-08-05', 'Abollado.', 1, '14.09.2015', 14, '2567', '0', '1', '0'),
(2135, 3, 1951, 12, '1', 'Filtro usado.Carcasa dañada por manipulación inadecuada.', '2016-08-12', '2016-08-04', '2016-08-05', 'Falla.', 1, 'L.1534', 14, '2567', '1', '0', '0'),
(2136, 3, 2016, 6, '1', '', '2016-08-12', '2016-08-04', '2016-08-05', 'Falla.', 1, '-', 7, '2567', '0', '1', '0'),
(2137, 3, 1982, 12, '1', '', '2016-08-12', '2016-08-04', '2016-08-05', 'Pieza suelta.', 1, '1045', 23, '2567', '0', '1', '0'),
(2138, 3, 1937, 12, '1', '', '2016-08-12', '2016-08-04', '2016-08-05', 'Falla.', 2, 'L.11248 14.8.11', 17, '2567', '0', '1', '0'),
(2139, 3, 1990, 6, '1', 'Filtro usado.', '2016-08-12', '2016-08-04', '2016-08-05', 'Falla.', 1, '1425', 4, '2567', '1', '0', '0'),
(2140, 3, 1415, 12, '1', '', '2016-08-12', '2016-08-04', '2016-08-05', 'Sin junta.', 1, 'LT:16942 18.Jun.14', 16, '2567', '0', '1', '0'),
(2141, 3, 1334, 1, '1', 'Filtro usado.', '2016-08-12', '2016-08-04', '2016-08-05', 'Falla.', 1, 'May.30.2012', 4, '2567', '1', '0', '0'),
(2143, 233, 625, 12, '1', '', '2016-08-16', '2016-08-02', '2016-08-12', 'Despegado.', 2, 'L.15408 11.05.13', 17, '2568', '0', '1', '0'),
(2144, 233, 1981, 6, '1', '', '2016-08-16', '2016-08-02', '2016-08-12', 'Falla.', 1, '1516', 7, '2568', '0', '1', '0'),
(2145, 233, 1943, 6, '1', '', '2016-08-16', '2016-08-02', '2016-08-12', 'Falla.', 1, '17052015', 7, '2568', '0', '1', '0'),
(2146, 233, 1585, 12, '2', '', '2016-08-16', '2016-08-02', '2016-08-12', 'Despegados.', 2, 'L.13021 15.02.12', 17, '2568', '0', '2', '0'),
(2147, 233, 2402, 12, '2', '', '2016-08-16', '2016-08-02', '2016-08-12', 'Fallo.', 1, '11L31', 22, '2568', '0', '2', '0'),
(2148, 233, 1941, 1, '1', 'Filtro usado.', '2016-08-16', '2016-08-02', '2016-08-12', 'No falla', 1, '30/10/2015', 7, '2568', '0', '1', '0'),
(2149, 55, 2524, 12, '100', '', '2016-08-18', '2016-08-13', '2016-08-17', 'Mal enviado.', 1, '-', 20, '2569', '0', '0', '100'),
(2150, 46, 1949, 6, '1', '', '2016-08-18', '2016-08-01', '2016-08-17', 'Pierde por el bombin.', 1, '30102015', 7, '2570', '0', '1', '0'),
(2151, 46, 2016, 12, '1', '', '2016-08-18', '2016-08-01', '2016-08-17', 'Pico roto.', 1, '-', 14, '2570', '0', '1', '0'),
(2152, 7, 1941, 1, '4', 'Filtro usado.', '2016-08-19', '2016-08-05', '2016-08-12', 'Sin descripcion.', 1, '110930', 4, '2571', '4', '0', '0'),
(2153, 7, 1973, 6, '1', '', '2016-08-19', '2016-08-05', '2016-08-12', 'Sin descripcion.', 1, '1512', 7, '2571', '0', '1', '0'),
(2154, 7, 1713, 12, '1', '', '2016-08-19', '2016-08-05', '2016-08-12', 'Sin descripcion.', 1, '-', 4, '2571', '1', '0', '0'),
(2155, 7, 2065, 12, '1', '', '2016-08-19', '2016-08-05', '2016-08-12', 'Sin descripcion.', 1, '1252', 23, '2571', '0', '1', '0'),
(2156, 7, 1444, 12, '1', '', '2016-08-19', '2016-08-05', '2016-08-12', 'Sin descripcion.', 1, '05/15/13', 23, '2571', '0', '1', '0'),
(2157, 7, 1983, 12, '1', '', '2016-08-19', '2016-08-05', '2016-08-12', 'Sin descripcion.', 1, '1424', 23, '2571', '0', '1', '0'),
(2158, 7, 1428, 1, '1', 'Filtro usado.', '2016-08-19', '2016-08-05', '2016-08-12', 'Sin descripcion.', 1, 'May 27.2014', 4, '2571', '1', '0', '0'),
(2159, 7, 1881, 12, '1', '', '2016-08-19', '2016-08-05', '2016-08-12', 'Sin descripcion.', 1, 'Aug.04.2014', 17, '2571', '0', '1', '0'),
(2160, 7, 1369, 12, '2', 'Filtro usado. Carcasa dañada por manipulacion inadecuada.', '2016-08-19', '2016-08-05', '2016-08-12', 'Sin descripcion.', 1, '01/09/16', 14, '2571', '2', '0', '0'),
(2161, 7, 2016, 6, '1', '', '2016-08-19', '2016-08-05', '2016-08-12', 'Sin descripcion.', 1, '-', 7, '2571', '0', '1', '0'),
(2162, 7, 2139, 12, '2', 'Ceramica dañada por golpe.', '2016-08-19', '2016-08-05', '2016-08-12', 'Sin descripcion.', 1, '-', 14, '2571', '2', '0', '0'),
(2163, 7, 2554, 4, '1', '', '2016-08-19', '2016-08-05', '2016-08-12', 'Sin descripcion.', 1, '-', 3, '2571', '0', '1', '0'),
(2164, 7, 2745, 4, '2', '', '2016-08-19', '2016-08-05', '2016-08-12', 'Sin descripcion.', 1, 'P43T', 3, '2571', '0', '2', '0'),
(2165, 16, 1554, 12, '334', '', '2016-08-19', '2016-07-23', '2016-08-12', 'Partida Fallada.', 1, '09/2014', 20, '2572', '0', '0', '334'),
(2166, 16, 2022, 12, '10', '', '2016-08-19', '2016-07-23', '2016-08-12', 'Mal pedido.', 1, 'Jun 04 2015', 20, '2572', '0', '0', '10'),
(2167, 16, 2166, 12, '4', 'Falla no atribuible a la bujía.', '2016-08-19', '2016-07-23', '2016-08-12', 'Fallado.', 1, 'XGL', 14, '2572', '4', '0', '0'),
(2168, 16, 1931, 1, '1', '', '2016-08-19', '2016-07-23', '2016-08-12', 'Fallado.', 1, '06/2014', 6, '2572', '0', '1', '0'),
(2169, 16, 1607, 1, '1', 'Filtro usado.', '2016-08-19', '2016-07-23', '2016-08-12', 'Fallado.', 1, '-', 4, '2572', '1', '0', '0'),
(2170, 16, 2074, 12, '1', '', '2016-08-19', '2016-07-23', '2016-08-12', 'Sin descripcion.', 1, '03/2015', 17, '2572', '0', '1', '0'),
(2171, 16, 2016, 6, '2', '', '2016-08-19', '2016-07-23', '2016-08-12', 'Sin descripcion.', 1, '-', 7, '2572', '0', '2', '0'),
(2172, 16, 1973, 6, '1', 'Filtro usado.', '2016-08-19', '2016-07-23', '2016-08-12', 'Fallado.', 1, '1016', 8, '2572', '1', '0', '0'),
(2173, 16, 1980, 6, '3', '', '2016-08-19', '2016-07-23', '2016-08-12', 'Fallado.', 1, '0948', 7, '2572', '0', '3', '0'),
(2174, 16, 1949, 6, '7', '', '2016-08-19', '2016-07-23', '2016-08-12', 'Fallado.', 1, '20042013', 7, '2572', '0', '7', '0'),
(2175, 16, 1925, 5, '1', 'Filtro usado.', '2016-08-19', '2016-07-23', '2016-08-12', 'Fallado.', 1, '01/2015', 6, '2572', '0', '1', '0'),
(2176, 16, 1736, 12, '1', '', '2016-08-19', '2016-07-23', '2016-08-12', 'Pico quebrado.', 1, '8/2015', 14, '2572', '0', '1', '0'),
(2177, 16, 1728, 1, '1', 'Filtro usado.', '2016-08-19', '2016-07-23', '2016-08-12', 'Sin descripcion.', 1, '06/2015', 8, '2572', '1', '0', '0'),
(2178, 16, 753, 12, '1', '', '2016-08-19', '2016-07-23', '2016-08-12', 'Aplastado.', 1, '-', 14, '2572', '0', '1', '0'),
(2179, 16, 1873, 12, '1', '', '2016-08-19', '2016-07-23', '2016-08-12', 'Rajado.', 1, '-', 14, '2572', '0', '1', '0'),
(2180, 58, 1932, 5, '4', '', '2016-08-22', '2016-08-11', '2016-08-19', 'No lo pueden poner. No entra.', 1, '06/2014', 13, '2573', '0', '4', '0'),
(2181, 58, 1324, 12, '6', '', '2016-08-22', '2016-08-11', '2016-08-19', 'Me equivoque al pedirlo.', 1, 'Oct 17 2015', 20, '2573', '0', '0', '6'),
(2182, 105, 2016, 1, '1', '', '2016-08-22', NULL, '2016-08-19', 'Fallado.', 1, '-', 6, '2574', '0', '1', '0'),
(2183, 105, 443, 5, '1', '', '2016-08-22', NULL, '2016-08-19', 'Fuera de medida.', 2, 'L.16006 16.09.13', 6, '2574', '0', '1', '0'),
(2184, 11, 1943, 1, '1', 'Filtro usado. Incompleto, falta calefactor.', '2016-08-22', '2016-08-18', '2016-08-22', 'Fallado.', 1, '20042013', 4, '2575', '1', '0', '0'),
(2185, 11, 2021, 12, '1', '', '2016-08-22', '2016-08-18', '2016-08-22', 'Roto.', 1, '1136', 23, '2575', '0', '1', '0'),
(2186, 11, 1941, 1, '1', 'Filtro usado.', '2016-08-22', '2016-08-18', '2016-08-22', 'Roto.', 1, '09062015', 4, '2575', '1', '0', '0'),
(2187, 11, 2016, 12, '1', '', '2016-08-22', '2016-08-18', '2016-08-22', 'Roto.', 1, '-', 14, '2575', '0', '1', '0'),
(2188, 11, 1951, 1, '1', 'Filtro usado.', '2016-08-22', '2016-08-18', '2016-08-22', 'Roto.', 1, '1534', 4, '2575', '1', '0', '0'),
(2189, 11, 1759, 1, '1', 'Falta estuche.', '2016-08-22', '2016-08-18', '2016-08-22', 'Roto.', 1, '04/2013', 4, '2575', '1', '0', '0'),
(2190, 11, 1724, 12, '2', '', '2016-08-22', '2016-08-18', '2016-08-22', 'Pierde.', 2, 'L.1802 05.08.15', 23, '2575', '0', '2', '0'),
(2191, 11, 1382, 1, '1', 'Rosca dañada por manipulación inadecuada.', '2016-08-22', '2016-08-18', '2016-08-22', 'Pierde.', 1, '09.07.15', 14, '2575', '1', '0', '0'),
(2192, 11, 1728, 6, '1', '', '2016-08-22', '2016-08-18', '2016-08-22', 'Roto.', 2, '-', 7, '2575', '0', '1', '0'),
(2193, 28, 2269, 12, '4', 'Perno de conexion dañado. Falla no atribuible al producto.', '2016-08-22', '2016-08-02', '2016-08-18', 'Rotas.', 1, '-', 14, '2576', '4', '0', '0'),
(2194, 28, 1949, 6, '1', '', '2016-08-22', '2016-08-02', '2016-08-18', 'No retiene el gas oil.', 1, '-', 7, '2576', '0', '1', '0'),
(2195, 24, 1728, 12, '449', '', '2016-08-22', '2016-07-28', '2016-08-22', 'Elemento interno suelto.', 2, '-', 23, '2577', '0', '449', '0'),
(2196, 24, 732, 12, '44', '', '2016-08-22', '2016-07-28', '2016-08-22', 'Roto.', 1, '15/04/2016', 9, '2577', '0', '44', '0'),
(2197, 56, 1941, 1, '1', 'Filtro usado.', '2016-08-23', '2016-08-16', '2016-08-22', 'Fallado.', 1, '30102015', 4, '2578', '1', '0', '0'),
(2198, 56, 2030, 12, '40', '', '2016-08-23', '2016-08-16', '2016-08-22', 'Devolucion.', 1, '-', 20, '2578', '0', '0', '40'),
(2199, 38, 2009, 12, '36', '', '2016-08-24', '2016-08-11', '2016-08-23', 'Devolucion', 1, '-', 20, '2579', '0', '0', '36'),
(2200, 28, 1892, 12, '20', '', '2016-08-26', '2016-08-19', '2016-08-26', 'No pedidos.', 1, '05/2015', 20, '2580', '0', '0', '20'),
(2201, 132, 1978, 6, '1', '', '2016-08-26', '2016-08-22', '2016-08-26', 'Chupa aire y se descarga.', 1, '-', 12, '2581', '0', '1', '0'),
(2202, 28, 1417, 12, '2', '', '2016-08-26', '2016-08-24', '2016-08-26', 'Envase deteriorado.', 1, 'Apr 24 2016', 20, '2582', '0', '0', '2'),
(2203, 51, 1261, 5, '795', '', '2016-08-26', '2016-08-18', '2016-08-26', 'Son mas altos, dificulta su colocacion.', 2, 'L.17277', 6, '2583', '0', '795', '0'),
(2204, 13, 2027, 12, '9', '', '2016-08-29', '2016-08-23', '2016-08-26', 'Error al pedir.', 1, '-', 20, '2584', '0', '0', '9'),
(2205, 13, 30, 12, '6', '', '2016-08-29', '2016-08-23', '2016-08-26', 'Error al pedir.', 1, '-', 20, '2584', '0', '0', '6'),
(2206, 13, 767, 12, '6', '', '2016-08-29', '2016-08-23', '2016-08-26', 'Error al pedir.', 1, '-', 20, '2584', '0', '0', '6'),
(2207, 13, 2024, 12, '3', '', '2016-08-29', '2016-08-23', '2016-08-26', 'Error al pedir.', 1, '-', 20, '2584', '0', '0', '3'),
(2208, 13, 2746, 12, '6', '', '2016-08-29', '2016-08-23', '2016-08-26', 'Error al pedir.', 1, '-', 20, '2584', '0', '0', '6'),
(2209, 13, 2140, 12, '240', '', '2016-08-29', '2016-08-23', '2016-08-26', 'Mal envasado.', 1, '-', 21, '2584', '0', '240', '0'),
(2210, 13, 1207, 12, '1', 'Estuche dañado.', '2016-08-29', '2016-08-23', '2016-08-26', 'Mal envasado.', 2, '14183 01.10.12', 25, '2584', '0', '1', '0'),
(2211, 13, 1455, 12, '6', '', '2016-08-29', '2016-08-23', '2016-08-26', 'Error al pedir.', 1, '-', 20, '2584', '0', '0', '6'),
(2212, 13, 76, 5, '3', '', '2016-08-29', '2016-08-23', '2016-08-26', 'Mal medidas.', 1, '-', 21, '2584', '0', '3', '0'),
(2213, 13, 2009, 12, '1', '', '2016-08-29', '2016-08-23', '2016-08-26', 'Suelto algo adentro.', 1, '05/17/16', 23, '2584', '0', '1', '0'),
(2214, 13, 1941, 6, '2', 'Filtro usado.', '2016-08-29', '2016-08-23', '2016-08-26', 'Chupa aire.', 1, '14052015', 8, '2584', '2', '0', '0'),
(2215, 13, 1940, 6, '1', 'Filtro usado.', '2016-08-29', '2016-08-23', '2016-08-26', 'Pierde.', 1, '30052014', 8, '2584', '1', '0', '0'),
(2216, 13, 2016, 6, '1', '', '2016-08-29', '2016-08-23', '2016-08-26', 'Fallo.', 1, '-', 7, '2584', '0', '1', '0'),
(2217, 13, 2725, 6, '2', '', '2016-08-29', '2016-08-23', '2016-08-26', 'Pierden.', 1, '03062015', 7, '2584', '0', '2', '0'),
(2218, 13, 2667, 12, '1', '', '2016-08-29', '2016-08-23', '2016-08-26', 'Tapa Rajada.', 1, '-', 14, '2584', '0', '1', '0'),
(2219, 13, 2410, 4, '2', '', '2016-08-29', '2016-08-23', '2016-08-26', 'Sin descripcion.', 1, '9004', 22, '2584', '0', '2', '0'),
(2220, 13, 2422, 4, '2', '', '2016-08-29', '2016-08-23', '2016-08-26', 'Sin descripcion.', 1, 'HBS 9007', 22, '2584', '0', '2', '0'),
(2221, 13, 1591, 12, '1', '', '2016-08-29', '2016-08-23', '2016-08-26', 'Roto.', 1, '11/2013', 14, '2584', '0', '1', '0'),
(2222, 13, 1733, 6, '1', 'Filtro usado.', '2016-08-29', '2016-08-23', '2016-08-26', 'Fallo.', 2, '6/12', 8, '2584', '1', '0', '0'),
(2223, 13, 1941, 6, '2', 'Filtro usado.', '2016-08-29', '2016-08-23', '2016-08-26', 'Fallo.', 1, '30102015', 8, '2584', '2', '0', '0'),
(2224, 13, 1951, 12, '1', 'Filtro usado. Dañado por manipulacion inadecuada.', '2016-08-29', '2016-08-23', '2016-08-26', 'Aplastado donde va la junta.', 1, '1615', 14, '2584', '1', '0', '0'),
(2225, 13, 2390, 4, '2', '', '2016-08-29', '2016-08-23', '2016-08-26', 'Sin descripcion.', 1, '15F29', 22, '2584', '0', '2', '0'),
(2226, 13, 2033, 12, '1', '', '2016-08-29', '2016-08-23', '2016-08-26', 'Suelto algo adentro.', 1, '-', 23, '2584', '0', '1', '0'),
(2227, 13, 1724, 6, '1', '', '2016-08-29', '2016-08-23', '2016-08-26', 'Pierde.', 2, '-', 7, '2584', '0', '1', '0'),
(2228, 13, 1326, 12, '1', '', '2016-08-29', '2016-08-23', '2016-08-26', 'Tiene suelto algo adentro.', 1, 'Jan 07 2013', 23, '2584', '0', '1', '0'),
(2229, 13, 1980, 6, '1', '', '2016-08-29', '2016-08-23', '2016-08-26', 'Fallo.', 1, 'L.7455 05.06.09', 7, '2584', '0', '1', '0'),
(2230, 13, 1987, 6, '1', 'Filtro usado.', '2016-08-29', '2016-08-23', '2016-08-26', 'Fallo.', 1, '1512', 8, '2584', '1', '0', '0'),
(2231, 13, 1441, 12, '1', '', '2016-08-29', '2016-08-23', '2016-08-26', 'Fallo.', 1, 'Mar 12.2012', 14, '2584', '0', '1', '0'),
(2232, 4, 1602, 12, '240', '', '2016-08-29', '2016-08-23', '2016-08-26', 'Cambio partida vieja por partida nueva.', 1, '-', 20, '2585', '0', '0', '240'),
(2233, 13, 1941, 12, '1', '', '2016-08-31', '2016-08-23', '2016-08-26', 'Chupa aire.', 1, '20062013', 14, '2584', '0', '1', '0'),
(2234, 13, 1941, 6, '2', 'Filtro usado. Falta purgador.', '2016-08-31', '2016-08-23', '2016-08-26', 'Chupa aire.', 1, '30102015', 8, '2584', '2', '0', '0'),
(2235, 13, 1941, 6, '1', 'Filtro usado.', '2016-08-31', '2016-08-23', '2016-08-26', 'Chupa aire.', 1, '30102015', 8, '2584', '1', '0', '0'),
(2236, 33, 2528, 12, '1000', '', '2016-08-31', '2016-08-18', '2016-08-31', 'Pedido repetido.', 1, '-', 20, '2586', '0', '0', '1000'),
(2237, 230, 2725, 6, '2', '', '2016-08-31', '2016-08-29', '2016-08-31', 'Sin descripcion.', 1, '18072015', 7, '2587', '0', '2', '0'),
(2238, 230, 1955, 5, '1', '', '2016-08-31', '2016-08-29', '2016-08-31', 'Sin descripcion.', 1, '12/17/15', 19, '2587', '0', '0', '1'),
(2239, 230, 1456, 12, '1', '', '2016-08-31', '2016-08-29', '2016-08-31', 'Sin descripcion.', 1, '-', 20, '2587', '0', '0', '1'),
(2240, 230, 2064, 6, '1', '', '2016-08-31', '2016-08-29', '2016-08-31', 'Sin descripcion.', 1, '-', 7, '2587', '0', '1', '0'),
(2241, 107, 2040, 6, '1', '', '2016-08-31', '2016-08-31', '2016-08-31', 'Sin descripcion.', 1, '-', 7, '2588', '0', '1', '0'),
(2242, 107, 1251, 1, '1', 'Filtro usado.', '2016-08-31', '2016-08-31', '2016-08-31', 'Sin descripcion.', 1, '-', 4, '2588', '1', '0', '0'),
(2243, 16, 2062, 12, '6', '', '2016-08-31', '2016-08-27', '2016-08-31', 'Devolucion.', 1, '06/2015', 20, '2589', '0', '0', '6'),
(2244, 16, 1728, 12, '578', '', '2016-08-31', '2016-08-27', '2016-08-31', 'Fallados. Estan sueltos.', 1, '06/2015', 23, '2589', '0', '578', '0'),
(2245, 16, 1949, 6, '2', '', '2016-08-31', '2016-08-27', '2016-08-31', 'Fallados.', 1, '2015', 7, '2589', '0', '2', '0'),
(2246, 230, 89, 12, '1', '', '2016-09-01', '2016-08-23', '2016-09-01', 'Sin descripción.', 1, '09/15', 14, '2590', '0', '1', '0'),
(2247, 230, 1455, 12, '24', '', '2016-09-01', '2016-08-23', '2016-09-01', 'Sin descripción.', 1, '-', 20, '2590', '0', '0', '24'),
(2248, 230, 1944, 12, '5', '', '2016-09-01', '2016-08-23', '2016-09-01', 'Sin descripción.', 1, '-', 20, '2590', '0', '0', '5'),
(2249, 230, 2020, 12, '5', '', '2016-09-01', '2016-08-23', '2016-09-01', 'Sin descripción.', 1, '-', 20, '2590', '0', '0', '5'),
(2250, 230, 2017, 12, '4', '', '2016-09-01', '2016-08-23', '2016-09-01', 'Sin descripción.', 1, '-', 20, '2590', '0', '0', '4'),
(2251, 16, 1405, 1, '1', 'Filtro usado.', '2016-09-09', '2016-08-13', '2016-09-08', 'Sin descripcion.', 1, '08/15/14', 4, '2591', '1', '0', '0'),
(2252, 16, 1972, 1, '2', 'Un filtro usado.', '2016-09-09', '2016-08-13', '2016-09-08', 'Sin descripcion.', 1, '1534', 4, '2591', '2', '0', '0'),
(2253, 16, 1949, 6, '1', '', '2016-09-09', '2016-08-13', '2016-09-08', 'Sin descripcion.', 1, '20042013', 7, '2591', '0', '1', '0'),
(2254, 16, 2703, 12, '1', '', '2016-09-09', '2016-08-13', '2016-09-08', 'Sin descripcion.', 2, 'L16000', 17, '2591', '0', '1', '0'),
(2255, 16, 2681, 13, '1', '', '2016-09-09', '2016-08-13', '2016-09-08', 'Sin descripcion.', 2, 'Lote7546', 3, '2591', '0', '1', '0'),
(2256, 16, 1316, 12, '1', '', '2016-09-09', '2016-08-13', '2016-09-08', 'Sin descripcion.', 1, '12/11/14', 14, '2591', '0', '1', '0'),
(2257, 16, 1941, 1, '1', '', '2016-09-09', '2016-08-13', '2016-09-08', 'Sin descripcion.', 1, '30102015', 3, '2591', '0', '1', '0'),
(2258, 16, 1943, 12, '1', '', '2016-09-09', '2016-08-13', '2016-09-08', 'Sin descripcion.', 1, '25052013', 14, '2591', '0', '1', '0'),
(2259, 16, 1752, 12, '54', '', '2016-09-09', '2016-08-13', '2016-09-08', 'Devolucion.', 1, '1422', 20, '2591', '0', '0', '54'),
(2260, 16, 2016, 1, '1', 'Producto no detallado en remito.', '2016-09-09', '2016-08-13', '2016-09-08', 'Sin descripcion.', 1, '-', 7, '2591', '0', '1', '0'),
(2261, 4, 1729, 12, '300', '', '2016-09-09', '2016-08-31', '2016-09-09', 'Devolucion de Nacional por Importado.', 2, '-', 20, '2592', '0', '0', '300'),
(2262, 4, 1347, 1, '1', 'Filtro usado.', '2016-09-09', '2016-08-31', '2016-09-09', 'Pierde por la brida.', 1, '02/2014', 8, '2593', '1', '0', '0'),
(2263, 4, 2725, 6, '1', '', '2016-09-09', '2016-08-31', '2016-09-09', 'Pierde por el plastico superior.', 1, '-', 3, '2593', '0', '1', '0'),
(2264, 4, 1951, 1, '1', '', '2016-09-09', '2016-08-31', '2016-09-09', 'No sella el sensor de agua.', 1, '1534', 4, '2593', '1', '0', '0'),
(2265, 4, 1951, 12, '1', 'Filtro usado, dañado por manipulacion inadecuada.', '2016-09-09', '2016-08-31', '2016-09-09', 'Fallado.', 1, '1534', 14, '2593', '1', '0', '0'),
(2266, 4, 2555, 12, '1', '', '2016-09-09', '2016-08-31', '2016-09-09', 'Falladas.', 1, '38-229/2001', 22, '2593', '0', '1', '0'),
(2267, 4, 2555, 4, '1', '', '2016-09-09', '2016-08-31', '2016-09-09', 'Fallada.', 1, '38-229/2001', 24, '2593', '0', '1', '0'),
(2268, 4, 2479, 12, '10', '', '2016-09-09', '2016-08-31', '2016-09-09', 'Vinieron rotas.', 1, '38-229/2001', 14, '2593', '0', '10', '0'),
(2269, 4, 1990, 6, '2', '', '2016-09-09', '2016-08-31', '2016-09-09', 'Fallados.', 1, '1514', 8, '2593', '2', '0', '0'),
(2270, 4, 1369, 1, '1', '', '2016-09-09', '2016-08-31', '2016-09-09', 'Falla.', 1, '11/24/15', 8, '2593', '1', '0', '0'),
(2271, 4, 1076, 12, '4', '', '2016-09-09', '2016-08-31', '2016-09-09', 'Pedido por error.', 1, '-', 20, '2594', '0', '0', '4'),
(2272, 14, 2725, 1, '2', '', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '18072015', 3, '2595', '0', '2', '0'),
(2273, 14, 1087, 12, '2', '', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 2, '16932', 14, '2595', '0', '2', '0'),
(2274, 14, 1431, 1, '2', '', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '-', 5, '2595', '0', '2', '0'),
(2275, 14, 1972, 1, '1', '', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '1344', 17, '2595', '0', '1', '0'),
(2276, 14, 1972, 1, '2', '', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '1344', 7, '2595', '0', '2', '0'),
(2277, 14, 1972, 1, '1', '', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '1344', 14, '2595', '0', '1', '0'),
(2278, 14, 1945, 6, '1', '', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '20062013', 7, '2595', '0', '1', '0'),
(2279, 14, 1945, 12, '1', 'Pico roto.', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '20062013', 14, '2595', '0', '1', '0'),
(2280, 14, 1945, 12, '1', '', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '20062013', 23, '2595', '0', '1', '0'),
(2281, 14, 2075, 12, '1', '', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '12/20/13', 14, '2595', '0', '1', '0'),
(2282, 14, 1729, 6, '1', '', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 2, '9/12', 7, '2595', '0', '1', '0'),
(2283, 14, 1909, 12, '1', '', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '25/02/11', 14, '2595', '0', '1', '0'),
(2284, 14, 1983, 12, '1', '', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '1304', 23, '2595', '0', '1', '0'),
(2285, 14, 1286, 12, '1', '', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '01/23/15', 23, '2595', '0', '1', '0'),
(2286, 14, 310, 12, '3', '', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '12/13', 14, '2595', '0', '3', '0'),
(2287, 14, 2016, 1, '1', '', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '-', 3, '2595', '0', '1', '0'),
(2288, 14, 775, 12, '1', '', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 2, '2013', 14, '2595', '0', '1', '0'),
(2289, 14, 1142, 12, '1', '', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 2, '27/01/13 L.18605', 14, '2595', '0', '1', '0'),
(2290, 14, 1925, 1, '1', '', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '01/2015', 3, '2595', '0', '1', '0'),
(2291, 14, 2453, 12, '1', '', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '-', 14, '2595', '0', '1', '0'),
(2292, 14, 2562, 12, '4', 'Filamento dañado por efecto fusible. El informe detalla 3 unidades.', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '-', 14, '2595', '4', '0', '0'),
(2293, 14, 2555, 12, '7', 'Filamento dañado por efecto fusible.', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '-', 14, '2595', '7', '0', '0'),
(2294, 14, 2555, 12, '1', '', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '-', 22, '2595', '0', '1', '0'),
(2295, 14, 2397, 4, '1', 'Filamento de luz baja no funciona.', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '12M12', 24, '2595', '0', '1', '0'),
(2296, 14, 2402, 12, '1', 'Filamento dañado por efecto fusible. El informe  detalla A-2507XNBI', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '11231', 14, '2595', '1', '0', '0'),
(2297, 14, 2400, 12, '2', 'Filamento dañado por efecto fusible.', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '-', 14, '2595', '2', '0', '0'),
(2298, 14, 2390, 12, '2', '', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '-', 14, '2595', '0', '2', '0'),
(2299, 14, 2555, 4, '2', 'El informe detalla A-2550XNBC', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '-', 22, '2595', '0', '2', '0'),
(2300, 14, 2413, 4, '2', '', '2016-09-12', '2016-05-27', '2016-09-09', 'Sin descripcion.', 1, '-', 4, '2595', '2', '0', '0'),
(2301, 237, 694, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '11/09/2012', 20, '2596', '0', '0', '1');
INSERT INTO `reclamos` (`id_reclamo`, `id_cliente`, `id_producto`, `id`, `cantidad_total`, `observacion`, `fecha`, `fecha_emision`, `fecha_recepcion`, `motivo`, `id_origen`, `lote`, `id_resultado`, `nro_reclamo`, `cant_infundados`, `cant_fundados`, `cant_tema_comercial`) VALUES
(2302, 237, 589, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '11/12/2015', 20, '2596', '0', '0', '1'),
(2303, 237, 610, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 2, '01.06.15 L.17908', 20, '2596', '0', '0', '1'),
(2304, 237, 636, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '20/11/2015', 20, '2596', '0', '0', '1'),
(2305, 237, 265, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '9/12', 20, '2596', '0', '0', '1'),
(2306, 237, 65, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '29/12/2015', 20, '2596', '0', '0', '1'),
(2307, 237, 66, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '-', 20, '2596', '0', '0', '1'),
(2308, 237, 60, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '27/011/2015', 20, '2596', '0', '0', '1'),
(2309, 237, 61, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '-', 20, '2596', '0', '0', '1'),
(2310, 237, 67, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '04/16', 20, '2596', '0', '0', '1'),
(2311, 237, 68, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '-', 20, '2596', '0', '0', '1'),
(2312, 237, 64, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '-', 20, '2596', '0', '0', '1'),
(2313, 237, 2747, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '12/14', 20, '2596', '0', '0', '1'),
(2314, 237, 504, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '16-03-08 B1508', 20, '2596', '0', '0', '1'),
(2315, 237, 464, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 2, '22.01.15 l.17705', 20, '2596', '0', '0', '1'),
(2316, 237, 650, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '15-05-12 B1422', 20, '2596', '0', '0', '1'),
(2317, 237, 585, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 2, '26.11.14 L17687', 20, '2596', '0', '0', '1'),
(2318, 237, 505, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 2, 'L.18235 03/12/15', 20, '2596', '0', '0', '1'),
(2319, 237, 627, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '12-12-09 B.1220', 20, '2596', '0', '0', '1'),
(2320, 237, 506, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '-', 20, '2596', '0', '0', '1'),
(2321, 237, 613, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '02/12/2013', 20, '2596', '0', '0', '1'),
(2322, 237, 635, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '15/04/16', 20, '2596', '0', '0', '1'),
(2323, 237, 1944, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '-', 20, '2596', '0', '0', '1'),
(2324, 237, 1943, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '-', 20, '2596', '0', '0', '1'),
(2325, 237, 1951, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '-', 20, '2596', '0', '0', '1'),
(2326, 237, 1916, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 2, '-', 20, '2596', '0', '0', '1'),
(2327, 237, 1356, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '-', 20, '2596', '0', '0', '1'),
(2328, 237, 1729, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '-', 20, '2596', '0', '0', '1'),
(2329, 237, 1682, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '-', 20, '2596', '0', '0', '1'),
(2330, 237, 1683, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '-', 20, '2596', '0', '0', '1'),
(2331, 237, 1506, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 2, '-', 20, '2596', '0', '0', '1'),
(2332, 237, 1602, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '-', 20, '2596', '0', '0', '1'),
(2333, 237, 1369, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '-', 20, '2596', '0', '0', '1'),
(2334, 237, 1382, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '-', 20, '2596', '0', '0', '1'),
(2335, 237, 1058, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '-', 20, '2596', '0', '0', '1'),
(2336, 237, 1508, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '-', 20, '2596', '0', '0', '1'),
(2337, 237, 1972, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '-', 20, '2596', '0', '0', '1'),
(2338, 237, 775, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '-', 20, '2596', '0', '0', '1'),
(2339, 237, 2074, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '-', 20, '2596', '0', '0', '1'),
(2340, 237, 1286, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '-', 20, '2596', '0', '0', '1'),
(2341, 237, 149, 12, '1', '', '2016-09-12', NULL, '2016-09-09', 'Sin descripcion.', 1, '-', 20, '2596', '0', '0', '1'),
(2342, 239, 2748, 12, '50', 'El recibo detalla WOE-917. Pero hay  WOE-455', '2016-09-16', '2016-09-08', '2016-09-15', 'Para nota de credito.', 1, '3052014', 20, '2597', '0', '0', '50'),
(2343, 239, 1932, 1, '1', '', '2016-09-16', '2016-09-08', '2016-09-15', 'Pierde.', 1, '06/2014', 3, '2597', '0', '1', '0'),
(2344, 4, 347, 12, '4', '', '2016-09-16', '2016-09-09', '2016-09-16', 'Mal entregados.', 1, '04/15', 20, '2598', '0', '0', '4'),
(2345, 4, 2583, 12, '8', '', '2016-09-16', '2016-09-16', '2016-09-16', 'Pedido por error.', 1, '-', 20, '2599', '0', '0', '8'),
(2346, 4, 2584, 12, '8', '', '2016-09-16', '2016-09-16', '2016-09-16', 'Pedido por error.', 1, '-', 20, '2599', '0', '0', '8'),
(2347, 4, 2586, 12, '8', '', '2016-09-16', '2016-09-16', '2016-09-16', 'Pedido por error.', 1, '-', 20, '2599', '0', '0', '8'),
(2348, 4, 2587, 12, '8', '', '2016-09-16', '2016-09-16', '2016-09-16', 'Pedido por error.', 1, '-', 20, '2599', '0', '0', '8'),
(2349, 4, 2588, 12, '8', '', '2016-09-16', '2016-09-16', '2016-09-16', 'Pedido por error.', 1, '-', 20, '2599', '0', '0', '8'),
(2350, 105, 2016, 1, '1', '', '2016-09-16', '2016-09-06', '2016-09-16', 'Fallo.', 1, '-', 3, '2600', '0', '1', '0'),
(2351, 4, 2445, 12, '10', '', '2016-09-19', '2016-09-16', '2016-09-16', 'Vinieron rotas.', 1, '-', 14, '2601', '0', '10', '0'),
(2352, 4, 1951, 1, '1', '', '2016-09-19', '2016-09-16', '2016-09-16', 'No traba el testigo de agua.', 1, '1534', 4, '2601', '1', '0', '0'),
(2353, 4, 2398, 12, '2', '', '2016-09-19', '2016-09-16', '2016-09-16', 'No funcionan.', 1, '15A07', 23, '2601', '0', '2', '0'),
(2354, 4, 2555, 4, '1', '', '2016-09-19', '2016-09-16', '2016-09-16', 'No enciende.', 1, '38-229/2001', 4, '2601', '1', '0', '0'),
(2355, 4, 994, 12, '1', 'Dañado por manipulacion inadecuada.', '2016-09-19', '2016-09-16', '2016-09-16', 'Vino abollado.', 1, '-', 14, '2601', '1', '0', '0'),
(2356, 4, 1517, 5, '1', '', '2016-09-19', '2016-09-16', '2016-09-16', 'Fuera de medida.', 2, '18.09.09 L.8011', 6, '2601', '0', '1', '0'),
(2357, 4, 432, 12, '1', 'Dañado por manipulacion inadecuada.', '2016-09-19', '2016-09-16', '2016-09-16', 'Roto.', 1, '11/11/2013', 14, '2601', '1', '0', '0'),
(2358, 4, 1506, 12, '4', '', '2016-09-19', '2016-09-16', '2016-09-16', 'Despegados.', 1, '17278', 17, '2601', '0', '4', '0'),
(2359, 4, 1941, 12, '1', 'Dañado por manipucion inadecuada.', '2016-09-19', '2016-09-16', '2016-09-16', 'Pico roto.', 1, '30102015', 14, '2601', '1', '0', '0'),
(2360, 4, 2440, 12, '20', '', '2016-09-19', '2016-09-16', '2016-09-16', 'Vinieron rotas.', 1, '-', 14, '2601', '0', '20', '0'),
(2361, 8, 2440, 12, '10', '', '2016-09-20', '2016-08-18', '2016-09-16', 'Rotas.', 1, '-', 14, '2602', '0', '10', '0'),
(2362, 8, 693, 5, '2', '', '2016-09-20', '2016-08-18', '2016-09-16', 'Fuera de medida.', 1, '5/10/2015', 6, '2602', '0', '2', '0'),
(2363, 8, 1399, 12, '1', '', '2016-09-20', '2016-08-18', '2016-09-16', 'Falta junta.', 1, '03/14/2012', 16, '2602', '0', '1', '0'),
(2364, 8, 1972, 12, '2', 'Alojamiento de sensor OEM.', '2016-09-20', '2016-08-18', '2016-09-16', 'Falta purgador.', 1, '1544', 20, '2602', '0', '0', '2'),
(2365, 8, 1439, 6, '1', 'Filtro usado.', '2016-09-20', '2016-08-18', '2016-09-16', 'Pierde.', 1, '09/08/15', 8, '2602', '1', '0', '0'),
(2366, 8, 2015, 12, '1', '', '2016-09-20', '2016-08-18', '2016-09-16', 'Falta purgador.', 1, '1320', 16, '2602', '0', '1', '0'),
(2367, 8, 1836, 12, '3', '', '2016-09-20', '2016-08-18', '2016-09-16', 'Se equivoco de codigo.', 1, '-', 20, '2602', '0', '0', '3'),
(2368, 8, 1729, 6, '1', 'Es FCI-1630. Informe detalla FCI-1110S. Pierde por la union.', '2016-09-20', '2016-08-18', '2016-09-16', 'Pierde por la rosca.', 1, '15012013', 7, '2602', '0', '1', '0'),
(2369, 8, 2016, 6, '1', '', '2016-09-20', '2016-08-18', '2016-09-16', 'Fallo.', 1, '2158', 3, '2602', '0', '1', '0'),
(2370, 8, 1682, 6, '1', '', '2016-09-20', '2016-08-18', '2016-09-16', 'Fallo.', 1, '15082015', 8, '2602', '1', '0', '0'),
(2371, 8, 2398, 4, '6', '', '2016-09-20', '2016-08-18', '2016-09-16', 'Quemada la alta.', 1, '13L02', 22, '2602', '0', '6', '0'),
(2372, 8, 2397, 4, '2', '', '2016-09-20', '2016-08-18', '2016-09-16', 'No anda la baja.', 1, '14G31', 22, '2602', '0', '2', '0'),
(2373, 8, 2398, 4, '2', '', '2016-09-20', '2016-08-18', '2016-09-16', 'No anda la baja.', 1, '13L02', 22, '2602', '0', '2', '0'),
(2374, 8, 2395, 4, '3', '', '2016-09-20', '2016-08-18', '2016-09-16', 'Quemada', 1, '-', 22, '2602', '0', '3', '0'),
(2375, 8, 2389, 12, '2', '', '2016-09-20', '2016-08-18', '2016-09-16', 'Fallo.', 1, '-', 23, '2602', '0', '2', '0'),
(2376, 8, 2397, 4, '1', '', '2016-09-20', '2016-08-18', '2016-09-16', 'Fallo.', 1, '-', 23, '2602', '0', '1', '0'),
(2377, 8, 2562, 12, '2', '', '2016-09-20', '2016-08-18', '2016-09-16', 'Cajas en mal estado.', 1, '38-229/2001', 14, '2602', '0', '2', '0'),
(2378, 230, 1951, 1, '2', '', '2016-09-21', NULL, '2016-09-16', 'Sin descripcion.', 1, '1534', 4, '2603', '2', '0', '0'),
(2379, 230, 2725, 12, '1', '', '2016-09-21', NULL, '2016-09-16', 'Sin descripcion.', 1, '18072015', 13, '2603', '0', '1', '0'),
(2380, 20, 1949, 1, '1', '', '2016-09-21', '2016-09-12', '2016-09-16', 'Sin especificar.', 1, '20042013', 7, '2604', '0', '1', '0'),
(2381, 20, 2071, 12, '1', '', '2016-09-21', '2016-09-12', '2016-09-16', 'Sin especificar.', 1, '24052016', 9, '2604', '0', '1', '0'),
(2382, 20, 1286, 6, '1', '', '2016-09-21', '2016-09-12', '2016-09-16', 'Sin especificar.', 1, '01/23/15', 8, '2604', '1', '0', '0'),
(2383, 234, 1441, 1, '1', 'Filtro usado. Presencia de aceite entre sello y brida.', '2016-09-21', '2016-09-12', '2016-09-15', 'Se detecto perdida.', 1, 'Mar 12 2012', 4, '2605', '1', '0', '0'),
(2384, 16, 1554, 12, '100', '', '2016-09-22', '2016-09-10', '2016-09-20', 'Fallado.', 1, '09/2014', 13, '2606', '0', '100', '0'),
(2385, 16, 152, 5, '100', '80 unidades estan OK', '2016-09-22', '2016-09-10', '2016-09-20', 'Medida no corresponde con catalogo.', 1, '-', 6, '2606', '0', '20', '80'),
(2386, 45, 2074, 5, '4', '', '2016-09-26', '2016-09-05', '2016-09-23', 'No estra en el habitaculo del filtro.', 1, '05/2015', 6, '2607', '0', '4', '0'),
(2387, 45, 1982, 12, '1', '', '2016-09-26', '2016-09-05', '2016-09-23', 'Se desoldo un pico.', 1, '1534', 14, '2607', '0', '1', '0'),
(2388, 45, 1982, 6, '1', '', '2016-09-26', '2016-09-05', '2016-09-23', 'Pierde.', 1, '1534', 7, '2607', '0', '1', '0'),
(2389, 45, 2016, 6, '1', '', '2016-09-26', '2016-09-05', '2016-09-23', 'Chupa aire.', 1, '03062015', 7, '2607', '0', '1', '0'),
(2390, 45, 1932, 5, '1', '', '2016-09-26', '2016-09-05', '2016-09-23', 'No encastra bien.', 1, '06/2014', 6, '2607', '0', '1', '0'),
(2391, 45, 1370, 6, '1', '', '2016-09-26', '2016-09-05', '2016-09-23', 'Pierde.', 1, 'L.17117 16.06.15', 7, '2607', '0', '1', '0'),
(2392, 45, 2071, 3, '1', '', '2016-09-26', '2016-09-05', '2016-09-23', 'La rosca del sensor es grande.', 1, '24052015', 5, '2607', '0', '1', '0'),
(2393, 45, 1945, 12, '1', '', '2016-09-26', '2016-09-05', '2016-09-23', 'Pico roto.', 1, '04/2015', 14, '2607', '0', '1', '0'),
(2394, 18, 1383, 1, '1', 'No se verifica falla o defecto.', '2016-09-27', '2016-09-20', '2016-09-21', 'Perdida.', 1, '-', 4, '2608', '1', '0', '0'),
(2395, 18, 1381, 3, '1', 'Rosca dañada por aplicacion incorrecta.', '2016-09-27', '2016-09-20', '2016-09-21', 'Rosca dañada.', 1, '-', 14, '2608', '1', '0', '0'),
(2396, 230, 1951, 6, '1', '', '2016-09-29', NULL, '2016-09-28', 'Sin descripcion.', 1, 'L.1534', 4, '2609', '1', '0', '0'),
(2397, 230, 2016, 12, '1', '', '2016-09-29', NULL, '2016-09-28', 'Sin descripcion.', 1, '-', 16, '2609', '0', '1', '0'),
(2398, 46, 606, 12, '20', '', '2016-09-30', '2016-09-27', '2016-09-30', 'Devolucion.', 1, '-', 20, '2610', '0', '0', '20'),
(2399, 10, 1370, 6, '1', '', '2016-09-30', '2016-09-06', '2016-09-27', 'Fallado.', 1, '01/06/16', 8, '2611', '1', '0', '0'),
(2400, 10, 2016, 12, '1', 'El informe detalla FCD-2153, es FCD-2158', '2016-09-30', '2016-09-06', '2016-09-27', 'Fallado.', 1, '-', 23, '2611', '0', '1', '0'),
(2401, 10, 2021, 6, '1', '', '2016-09-30', '2016-09-06', '2016-09-27', 'Fallado.', 1, '1534', 8, '2611', '1', '0', '0'),
(2402, 10, 715, 12, '1', '', '2016-09-30', '2016-09-06', '2016-09-27', 'Fallado.', 1, '27.01.16 L.18481', 14, '2611', '0', '1', '0'),
(2403, 10, 2269, 12, '11', 'Exceso de torque en perno de conexion. El informe detalla 10 y son 11 bujias.', '2016-09-30', '2016-09-06', '2016-09-27', 'Fallado.', 1, 'A06', 14, '2611', '11', '0', '0'),
(2404, 10, 2251, 2, '2', 'Bujia usada. No corresponde. Exceso de tiempo de sumistro electrico.', '2016-09-30', '2016-09-06', '2016-09-27', 'Falladas.', 1, 'B66', 2, '2611', '2', '0', '0'),
(2405, 10, 2275, 2, '2', 'Bujia usada. No corresponde. Exceso de tiempo de suministro electrico.', '2016-09-30', '2016-09-06', '2016-09-27', 'Fallado.', 1, 'E94', 2, '2611', '2', '0', '0'),
(2406, 10, 2271, 12, '1', 'Exceso de torque en perno de conexion.', '2016-09-30', '2016-09-06', '2016-09-27', 'Fallada.', 1, 'A85', 14, '2611', '1', '0', '0'),
(2407, 10, 2102, 12, '1', '', '2016-09-30', '2016-09-06', '2016-09-27', 'Fallado.', 1, '11/10/09', 14, '2611', '0', '1', '0'),
(2408, 10, 2011, 12, '1', '', '2016-09-30', '2016-09-06', '2016-09-27', 'Fallado.', 1, '1424', 23, '2611', '0', '1', '0'),
(2409, 10, 1210, 12, '1', '', '2016-09-30', '2016-09-06', '2016-09-27', 'Fallado.', 2, 'L.17075', 14, '2611', '0', '1', '0'),
(2410, 10, 1729, 6, '2', '', '2016-09-30', '2016-09-06', '2016-09-27', 'Fallado.', 1, '26.11.14 L.17466', 8, '2611', '2', '0', '0'),
(2411, 10, 1382, 6, '1', '', '2016-09-30', '2016-09-06', '2016-09-27', 'Fallado.', 1, '09/12/15', 4, '2611', '1', '0', '0'),
(2412, 10, 1941, 6, '3', '', '2016-09-30', '2016-09-06', '2016-09-27', 'Fallado.', 1, '14052015', 8, '2611', '3', '0', '0'),
(2413, 10, 2078, 1, '1', 'Rosca dañada por manipulacion inadecuada.', '2016-09-30', '2016-09-06', '2016-09-27', 'Fallado.', 1, 'oct 10 2012', 14, '2611', '1', '0', '0'),
(2414, 10, 1728, 6, '1', '', '2016-09-30', '2016-09-06', '2016-09-27', 'Fallado.', 1, '20062013', 7, '2611', '0', '1', '0'),
(2415, 10, 1724, 6, '6', '', '2016-09-30', '2016-09-06', '2016-09-27', 'Fallado.', 2, '9/11', 8, '2611', '6', '0', '0'),
(2416, 10, 1724, 12, '1', '', '2016-09-30', '2016-09-06', '2016-09-27', 'Fallado.', 2, '-', 17, '2611', '0', '1', '0'),
(2417, 10, 2591, 11, '2', '', '2016-09-30', '2016-09-06', '2016-09-27', 'Fallado.', 1, '-', 24, '2611', '0', '2', '0'),
(2418, 10, 2591, 12, '1', '', '2016-09-30', '2016-09-06', '2016-09-27', 'Fallado.', 1, '-', 16, '2611', '1', '0', '0'),
(2419, 24, 1442, 12, '4', '', '2016-10-04', '2016-10-26', '2016-09-30', 'Sin descripcion.', 1, 'JUN 04 2015', 17, '2612', '0', '4', '0'),
(2420, 24, 1403, 12, '11', 'Estuches escritos. No aptos para la venta.', '2016-10-04', '2016-10-26', '2016-09-30', 'Sin descripcion.', 1, '-', 20, '2612', '0', '0', '11'),
(2421, 24, 1403, 12, '3', 'Estuches escritos. No apto para la venta.', '2016-10-04', '2016-10-26', '2016-09-30', 'Sin descripcion.', 1, '-', 16, '2612', '0', '3', '0'),
(2422, 17, 1924, 12, '40', '', '2016-10-04', '2016-10-03', '2016-10-04', 'Sin descripcion.', 1, '11/2013', 20, '2613', '0', '0', '40'),
(2423, 107, 2040, 6, '2', '', '2016-10-05', '2016-10-04', '2016-10-05', 'Sin descripcion.', 1, '-', 7, '2614', '0', '2', '0'),
(2424, 107, 2040, 12, '1', 'Purgador dañado por manipulacion inadecuada.', '2016-10-05', '2016-10-04', '2016-10-05', 'Sin descripcion.', 1, '-', 14, '2614', '1', '0', '0'),
(2425, 1, 1085, 12, '1', '', '2016-10-06', '2016-09-22', '2016-10-05', 'Abollado.', 2, 'L.16346', 14, '2615', '0', '1', '0'),
(2426, 1, 928, 12, '1', '', '2016-10-06', '2016-09-22', '2016-10-05', 'Abollado.', 2, 'L.16926', 14, '2615', '0', '1', '0'),
(2427, 1, 745, 12, '3', 'El informe detalla JFC-227. Es JFA-227', '2016-10-06', '2016-09-22', '2016-10-05', 'Roto.', 2, '10.12.15', 14, '2615', '0', '3', '0'),
(2428, 1, 441, 12, '1', '', '2016-10-06', '2016-09-22', '2016-10-05', 'Abollado.', 2, '09.05.15 L.17898', 14, '2615', '0', '1', '0'),
(2429, 1, 1061, 12, '1', '', '2016-10-06', '2016-09-22', '2016-10-05', 'Abollado.', 2, 'L.17006', 14, '2615', '0', '1', '0'),
(2430, 1, 355, 12, '1', 'El informe detalla FAP-0854. Es FAP-0857', '2016-10-06', '2016-09-22', '2016-10-05', 'Pestaña rota.', 1, '-', 14, '2615', '0', '1', '0'),
(2431, 1, 1945, 12, '1', '', '2016-10-06', '2016-09-22', '2016-10-05', 'Pico quebrado.', 1, '09/2015', 14, '2615', '0', '1', '0'),
(2432, 1, 1443, 12, '1', '', '2016-10-06', '2016-09-22', '2016-10-05', 'Abollado.', 1, '05012012', 14, '2615', '0', '1', '0'),
(2433, 1, 1142, 12, '1', '', '2016-10-06', '2016-09-22', '2016-10-05', 'Abollado.', 2, '27.01.16 L18605', 14, '2615', '0', '1', '0'),
(2434, 1, 1105, 12, '1', '', '2016-10-06', '2016-09-22', '2016-10-05', 'Abollado.', 2, 'L.18595', 14, '2615', '0', '1', '0'),
(2435, 1, 1136, 12, '1', '', '2016-10-06', '2016-09-22', '2016-10-05', 'Abollado.', 2, 'L.18592', 14, '2615', '0', '1', '0'),
(2436, 1, 2016, 6, '1', '', '2016-10-06', '2016-09-22', '2016-10-05', 'Fallado.', 1, '-', 7, '2615', '0', '1', '0'),
(2437, 1, 1951, 6, '1', '', '2016-10-06', '2016-09-22', '2016-10-05', 'Fallado.', 1, '1534', 7, '2615', '0', '1', '0'),
(2438, 1, 1591, 12, '1', '', '2016-10-06', '2016-09-22', '2016-10-05', 'Fallado.', 1, '06/2014', 16, '2615', '0', '1', '0'),
(2439, 1, 1969, 6, '1', '', '2016-10-06', '2016-09-22', '2016-10-05', 'Fallado.', 1, '09/07/15', 8, '2615', '1', '0', '0'),
(2440, 1, 1424, 12, '1', '', '2016-10-06', '2016-09-22', '2016-10-05', 'Abollado.', 1, '10/13/2007', 14, '2615', '0', '1', '0'),
(2441, 1, 1920, 12, '1', '', '2016-10-06', '2016-09-22', '2016-10-05', 'Falta junta.', 1, '20042013', 16, '2615', '0', '1', '0'),
(2442, 1, 2074, 12, '2', '', '2016-10-06', '2016-09-22', '2016-10-05', 'Falta junta.', 1, '12/2015', 16, '2615', '0', '2', '0'),
(2443, 1, 1682, 1, '1', 'Producto dañado por exceso de uso.', '2016-10-06', '2016-09-22', '2016-10-05', 'Fallado.', 1, '-', 4, '2615', '1', '0', '0'),
(2444, 1, 1416, 6, '1', '', '2016-10-06', '2016-09-22', '2016-10-05', 'Fallado.', 1, '06.02.12', 7, '2615', '0', '1', '0'),
(2445, 1, 1881, 12, '1', '', '2016-10-06', '2016-09-22', '2016-10-05', 'Abollado.', 1, 'JUN 04 2015', 14, '2615', '0', '1', '0'),
(2446, 1, 1897, 12, '1', '', '2016-10-06', '2016-09-22', '2016-10-05', 'Abollado.', 1, '-', 14, '2615', '0', '1', '0'),
(2447, 1, 1603, 12, '1', '', '2016-10-06', '2016-09-22', '2016-10-05', 'Sin junta.', 1, '-', 16, '2615', '0', '1', '0'),
(2448, 1, 1723, 6, '2', '', '2016-10-06', '2016-09-22', '2016-10-05', 'Fallado.', 2, '-', 7, '2615', '0', '2', '0'),
(2449, 1, 1729, 12, '1', '', '2016-10-06', '2016-09-22', '2016-10-05', 'Fallado.', 2, '16.06.14', 23, '2615', '0', '1', '0'),
(2450, 1, 1982, 6, '2', '', '2016-10-06', '2016-09-22', '2016-10-05', 'Fallados.', 1, '1512', 7, '2615', '0', '2', '0'),
(2451, 1, 1959, 6, '1', '', '2016-10-06', '2016-09-22', '2016-10-05', 'Fallado.', 1, '-', 7, '2615', '0', '1', '0'),
(2452, 1, 1210, 12, '1', '', '2016-10-06', '2016-09-30', '2016-10-05', 'Abollado.', 1, '05/03/2016', 14, '2616', '0', '1', '0'),
(2453, 1, 1972, 12, '1', '', '2016-10-06', '2016-09-30', '2016-10-05', 'Abollado.', 1, '1534', 14, '2616', '0', '1', '0'),
(2454, 1, 178, 12, '1', '', '2016-10-06', '2016-09-30', '2016-10-05', 'Roto.', 1, '-', 14, '2616', '0', '1', '0'),
(2455, 1, 2016, 6, '4', '', '2016-10-06', '2016-09-30', '2016-10-05', 'Partida fallada.', 1, '-', 7, '2616', '0', '4', '0'),
(2456, 1, 1384, 12, '15', '', '2016-10-06', '2016-09-30', '2016-10-05', 'Partida fallada.', 2, '13 DIC 13', 13, '2616', '0', '15', '0'),
(2457, 1, 1973, 12, '1', '', '2016-10-06', '2016-09-30', '2016-10-05', 'Pico doblado.', 1, '1516', 14, '2616', '0', '1', '0'),
(2458, 1, 1443, 12, '1', '', '2016-10-06', '2016-09-30', '2016-10-05', 'Abollado.', 1, '05012012', 14, '2616', '0', '1', '0'),
(2459, 1, 847, 12, '1', '', '2016-10-06', '2016-09-30', '2016-10-05', 'Partido el plastico.', 2, '17496', 14, '2616', '0', '1', '0'),
(2460, 96, 1428, 3, '1', '', '2016-10-14', '2016-08-24', '2016-10-14', 'Rosca fallada.', 1, 'MAR 24 2013', 5, '2617', '0', '1', '0'),
(2461, 96, 2558, 12, '1', 'No es lampara WEGA.', '2016-10-14', '2016-08-24', '2016-10-14', 'Fallada.', 1, '-', 2, '2617', '1', '0', '0'),
(2462, 96, 1723, 10, '2', '', '2016-10-14', '2016-08-24', '2016-10-14', 'Tapado.', 2, '04.02.15 L.17871', 11, '2617', '0', '2', '0'),
(2463, 96, 2684, 13, '1', '', '2016-10-14', '2016-08-24', '2016-10-14', 'Chupa aire.', 2, '-', 4, '2617', '1', '0', '0'),
(2464, 96, 2700, 12, '3', '', '2016-10-14', '2016-08-24', '2016-10-14', 'Rajados.', 2, '-', 14, '2617', '0', '3', '0'),
(2465, 96, 1995, 12, '1', '', '2016-10-14', '2016-08-24', '2016-10-14', 'Algo suelto en el interior.', 1, '0908', 23, '2617', '0', '1', '0'),
(2466, 96, 1403, 12, '1', 'Dañado por manipulacion inadecuada.', '2016-10-14', '2016-08-24', '2016-10-14', 'Junta mordida.', 1, '-', 14, '2617', '1', '0', '0'),
(2467, 96, 1949, 6, '2', '', '2016-10-14', '2016-08-24', '2016-10-14', 'Chupan aire.', 1, '20042013', 7, '2617', '0', '2', '0'),
(2468, 96, 2246, 2, '4', 'Bujias usadas. Exceso de suministro electrico. Falla caja de mando.', '2016-10-14', '2016-08-24', '2016-10-14', 'Fallada.', 1, 'B96', 4, '2617', '4', '0', '0'),
(2469, 96, 2728, 2, '1', 'El informe detalla 2 unidades. Recibimos 1 unidad. Bujia usada.', '2016-10-14', '2016-08-24', '2016-10-14', 'Fallada.', 1, 'G61', 4, '2617', '1', '0', '0'),
(2470, 96, 584, 12, '70', '10 unidades con estuches manchados.', '2016-10-14', '2016-08-24', '2016-10-14', 'Mal enviado.', 1, '-', 20, '2617', '0', '0', '70'),
(2471, 4, 1567, 12, '3', '', '2016-10-14', '2016-10-07', '2016-10-14', 'Pedido por error.', 1, '-', 20, '2618', '0', '0', '3'),
(2472, 4, 1974, 6, '1', 'Filtro usado.', '2016-10-14', '2016-10-07', '2016-10-14', 'Fallo.', 1, '-', 8, '2619', '1', '0', '0'),
(2473, 4, 2016, 1, '2', '', '2016-10-14', '2016-10-07', '2016-10-14', 'Fallado.', 1, '-', 6, '2619', '0', '2', '0'),
(2474, 4, 1981, 12, '1', 'Producto no corresponde a descripcion.', '2016-10-14', '2016-10-07', '2016-10-14', 'Fallado.', 1, '-', 2, '2619', '1', '0', '0'),
(2475, 4, 2011, 3, '1', '', '2016-10-14', '2016-10-07', '2016-10-14', 'Fallada la rosca.', 1, '1544', 4, '2619', '1', '0', '0'),
(2476, 4, 1983, 6, '1', 'Filtro usado.', '2016-10-14', '2016-10-07', '2016-10-14', 'Pierde.', 1, '0948', 8, '2619', '1', '0', '0'),
(2477, 4, 1506, 12, '1', '', '2016-10-14', '2016-10-07', '2016-10-14', 'Se despegaron las tapas.', 2, 'L.17278', 17, '2619', '0', '1', '0'),
(2478, 4, 2203, 12, '3', 'Bujias usadas. Electrodo de masa dañado por falla del motor. No atribuible a la bujia', '2016-10-14', '2016-10-07', '2016-10-14', 'Fallaron.', 1, '-', 4, '2619', '3', '0', '0'),
(2479, 4, 468, 12, '1', '', '2016-10-14', '2016-10-07', '2016-10-14', 'Roto.', 1, 'L.7196 29.04.09', 14, '2619', '0', '1', '0'),
(2480, 4, 1210, 12, '1', '', '2016-10-14', '2016-10-07', '2016-10-14', 'Despegado.', 1, '06/05/2015', 17, '2619', '0', '1', '0'),
(2481, 4, 1729, 12, '1', '', '2016-10-14', '2016-10-07', '2016-10-14', 'Fallado. Suelto adentro.', 1, '04/2015', 23, '2619', '0', '1', '0'),
(2482, 4, 2555, 4, '1', '', '2016-10-14', '2016-10-07', '2016-10-14', 'No funciona.', 1, '38-229/2001', 4, '2619', '1', '0', '0'),
(2483, 233, 729, 5, '1', '', '2016-10-24', NULL, '2016-10-21', 'Mal de medida.', 2, '-', 6, '2620', '0', '1', '0'),
(2484, 233, 1415, 12, '2', '', '2016-10-24', NULL, '2016-10-21', 'Estuche roto.', 1, '09/14/15', 15, '2620', '0', '2', '0'),
(2485, 233, 2016, 12, '1', '', '2016-10-24', NULL, '2016-10-21', 'Rosca sensor suelta.', 1, '05/17/16', 23, '2620', '0', '1', '0'),
(2486, 233, 1369, 3, '1', '', '2016-10-24', NULL, '2016-10-21', 'Mal la rosca.', 1, '09/12/15', 4, '2620', '1', '0', '0'),
(2487, 233, 1717, 9, '1', '', '2016-10-24', NULL, '2016-10-21', 'Falla.', 1, '1424', 12, '2620', '0', '1', '0'),
(2488, 233, 1973, 6, '1', '', '2016-10-24', NULL, '2016-10-21', 'Fallo.', 1, '0948', 7, '2620', '0', '1', '0'),
(2489, 233, 426, 12, '1', '', '2016-10-24', NULL, '2016-10-21', 'Estuche roto.', 1, '07.07.2014', 15, '2620', '0', '1', '0'),
(2490, 233, 1895, 12, '1', '', '2016-10-24', NULL, '2016-10-21', 'Sin O`ring.', 1, '26/03/2015', 16, '2620', '0', '1', '0'),
(2491, 233, 2016, 6, '1', '', '2016-10-24', NULL, '2016-10-21', 'Fallo.', 1, '-', 7, '2620', '0', '1', '0'),
(2492, 233, 1803, 1, '1', '', '2016-10-24', NULL, '2016-10-21', 'Fallo.', 1, '-', 5, '2620', '0', '1', '0'),
(2493, 240, 772, 12, '1', '', '2016-10-24', '2016-10-20', '2016-10-21', 'Sin descripcion. ', 2, 'L.13635 02.08.12', 14, '2621', '0', '1', '0'),
(2494, 240, 1124, 12, '1', 'Acople plástico dañado por manipulación inadecuada.', '2016-10-24', '2016-10-20', '2016-10-21', 'Sin descripcion. ', 1, '09/12/2013', 14, '2621', '1', '0', '0'),
(2495, 240, 1622, 12, '6', 'El informe detalla 9 unidades, son 6 unidades. Estuches escritos. ', '2016-10-24', '2016-10-20', '2016-10-21', 'Sin descripcion. ', 2, 'LT.16223', 20, '2621', '0', '0', '6'),
(2496, 240, 1506, 12, '1', '', '2016-10-24', '2016-10-20', '2016-10-21', 'Sin descripcion. ', 2, 'L.17278', 3, '2621', '0', '1', '0'),
(2497, 240, 1987, 6, '1', '', '2016-10-24', '2016-10-20', '2016-10-21', 'Sin descripcion. ', 1, '1512', 8, '2621', '1', '0', '0'),
(2498, 240, 2016, 6, '1', '', '2016-10-24', '2016-10-20', '2016-10-21', 'Sin descripcion. ', 1, '-', 7, '2621', '0', '1', '0'),
(2499, 240, 1980, 12, '1', '', '2016-10-24', '2016-10-20', '2016-10-21', 'Sin descripcion. ', 1, '1512', 23, '2621', '0', '1', '0'),
(2500, 240, 33, 12, '2', 'Dañado por manipulacion inadecuada.', '2016-10-24', '2016-10-20', '2016-10-21', 'Sin descripcion. ', 1, '-', 14, '2621', '2', '0', '0'),
(2501, 46, 1284, 1, '1', 'Informe tecnico Nº284', '2016-10-27', '2016-09-09', '2016-10-27', 'Sin descripcion', 1, 'Jul 16 2011', 4, '2622', '1', '0', '0'),
(2502, 15, 1411, 1, '1', 'Informe tecnico Nº285', '2016-10-27', NULL, '2016-10-24', 'Pierde', 1, '01/2002', 4, '2623', '1', '0', '0'),
(2503, 230, 2008, 1, '1', 'Informe Nº286', '2016-10-28', NULL, '2016-10-27', 'Perdida', 1, '05/17/16', 4, '2624', '1', '0', '0'),
(2504, 9, 385, 12, '1', '', '2016-10-31', '2016-10-18', '2016-10-28', 'Producto en mal estado.', 2, '05.08.15 L.17802', 14, '2625', '0', '1', '0'),
(2505, 9, 1939, 12, '1', '', '2016-10-31', '2016-10-18', '2016-10-28', 'Llego golpeado, pico roto.', 1, '-', 14, '2625', '0', '1', '0'),
(2506, 9, 1972, 12, '1', 'Filtro usado.', '2016-10-31', '2016-10-18', '2016-10-28', 'Se despego una pieza interna.', 1, '1512', 23, '2625', '0', '1', '0'),
(2507, 9, 729, 12, '1', '', '2016-10-31', '2016-10-18', '2016-10-28', 'Llego golpeado.', 1, '-', 14, '2625', '0', '1', '0'),
(2508, 9, 1369, 3, '1', '', '2016-10-31', '2016-10-18', '2016-10-28', 'Presenta falla en la rosca.', 1, '09/20/15', 5, '2625', '0', '1', '0'),
(2509, 9, 1413, 12, '1', '', '2016-10-31', '2016-10-18', '2016-10-28', 'Falta junta de goma.', 1, '01/26/15', 16, '2625', '0', '1', '0'),
(2510, 9, 1448, 3, '1', '', '2016-10-31', '2016-10-18', '2016-10-28', 'Presenta falla en la rosca.', 1, '16/04/14', 5, '2625', '0', '1', '0'),
(2511, 9, 1053, 12, '1', '', '2016-10-31', '2016-10-18', '2016-10-28', 'Llego golpeado, abollado.', 2, 'L.18743 18.05.16', 14, '2625', '0', '1', '0'),
(2512, 9, 2435, 12, '2', '', '2016-10-31', '2016-10-18', '2016-10-28', 'Llegaron rotas.', 1, 'E13', 14, '2625', '0', '2', '0'),
(2513, 9, 693, 5, '20', '', '2016-10-31', '2016-10-18', '2016-10-28', 'Llegaron con falla de formacion del filtro.', 1, '24/10/2015', 6, '2625', '0', '20', '0'),
(2514, 9, 1370, 6, '1', '', '2016-10-31', '2016-10-18', '2016-10-28', 'Presenta perdida por junta.', 1, '12/26/15', 8, '2625', '1', '0', '0'),
(2515, 9, 1169, 12, '1', '', '2016-10-31', '2016-10-18', '2016-10-28', 'Llego golpeado, abollado.', 2, '25/11/12  L.14509', 14, '2625', '0', '1', '0'),
(2516, 9, 1146, 12, '2', '', '2016-10-31', '2016-10-18', '2016-10-28', 'Abollados.', 2, 'L.18051', 14, '2625', '0', '2', '0'),
(2517, 9, 1431, 12, '1', '', '2016-10-31', '2016-10-18', '2016-10-28', 'Llego golpeado, abollado.', 1, '-', 14, '2625', '0', '1', '0'),
(2518, 51, 1261, 5, '25', '', '2016-11-10', '2016-10-21', '2016-12-10', 'Son mas altos', 2, 'L.17277', 6, '2626', '0', '25', '0'),
(2519, 51, 1261, 12, '1', '', '2016-11-10', '2016-10-21', '2016-12-10', 'Despegadas las chapas.', 1, '15012013', 17, '2626', '0', '1', '0'),
(2520, 51, 1266, 5, '1', '', '2016-11-10', '2016-10-21', '2016-12-10', 'Se sale goma de una de las tapas.', 2, '30.07.10', 6, '2626', '0', '1', '0'),
(2521, 4, 2622, 12, '50', '', '2016-11-10', '2016-11-07', '2016-11-10', 'Devolucion comercial.', 1, '-', 20, '2627', '0', '0', '50'),
(2522, 82, 1919, 12, '40', '', '2016-11-10', '2016-11-04', '2016-11-10', 'Sin descripcion.', 1, '-', 20, '2628', '0', '0', '40'),
(2523, 82, 2062, 12, '24', '', '2016-11-10', '2016-11-04', '2016-11-10', 'Sin descripcion.', 1, '-', 20, '2628', '0', '0', '24'),
(2524, 82, 1150, 12, '10', '', '2016-11-10', '2016-11-04', '2016-11-10', 'Sin descripcion.', 1, '-', 20, '2628', '0', '0', '10'),
(2525, 82, 1149, 12, '5', '', '2016-11-10', '2016-11-04', '2016-11-10', 'Sin descripcion.', 1, '-', 20, '2628', '0', '0', '5'),
(2526, 4, 1723, 10, '1', '', '2016-11-11', '2016-11-07', '2016-11-10', 'Tapado.', 2, 'L18966', 11, '2629', '0', '1', '0'),
(2527, 4, 1092, 12, '3', '', '2016-11-11', '2016-11-07', '2016-11-10', 'Mal etiquetas.', 2, 'L.14520', 20, '2629', '0', '0', '3'),
(2528, 4, 2591, 11, '2', '', '2016-11-11', '2016-11-07', '2016-11-10', 'Sin sonido.', 1, 'e3', 4, '2629', '2', '0', '0'),
(2529, 4, 1881, 12, '1', 'Filtro no es Wega.', '2016-11-11', '2016-11-07', '2016-11-10', 'Fallo.', 1, '-', 2, '2629', '1', '0', '0'),
(2530, 4, 2749, 12, '6', 'Informe detalla JFC-238. Son FC-126. ', '2016-11-11', '2016-11-07', '2016-11-10', 'Mal fabricado.', 1, '-', 21, '2629', '0', '6', '0'),
(2531, 4, 1602, 12, '3', '', '2016-11-11', '2016-11-07', '2016-11-10', 'Partida vieja.', 1, '20.05.13 L.15623', 20, '2629', '0', '0', '3'),
(2532, 4, 2016, 6, '1', '', '2016-11-11', '2016-11-07', '2016-11-10', 'Pierde.', 1, '-', 7, '2629', '0', '1', '0'),
(2533, 4, 2445, 12, '10', '', '2016-11-11', '2016-11-07', '2016-11-10', 'Vinieron rotas.', 1, '-', 14, '2629', '0', '10', '0'),
(2534, 233, 1944, 6, '1', '', '2016-11-11', NULL, '2016-11-10', 'Fallo.', 1, '-', 7, '2630', '0', '1', '0'),
(2535, 233, 1370, 1, '1', '', '2016-11-11', NULL, '2016-11-10', 'Fallo.', 1, 'nov 22 2011', 4, '2630', '1', '0', '0'),
(2536, 233, 305, 12, '2', '', '2016-11-11', NULL, '2016-11-10', 'Estuche roto', 1, '09/15', 15, '2630', '0', '2', '0'),
(2537, 233, 289, 12, '1', '', '2016-11-11', NULL, '2016-11-10', 'Estuche dañado.', 1, '03/15', 15, '2630', '0', '1', '0'),
(2538, 233, 1086, 12, '1', '', '2016-11-11', NULL, '2016-11-10', 'Plastisol despegado.', 2, 'L.17730 27.01.15', 17, '2630', '0', '1', '0'),
(2539, 233, 2437, 12, '2', '', '2016-11-11', NULL, '2016-11-10', 'Rotas.', 1, '-', 14, '2630', '0', '2', '0'),
(2540, 233, 583, 12, '1', '', '2016-11-11', NULL, '2016-11-10', 'Papel muy separado.', 1, 'L.15506 03.06.13', 20, '2630', '0', '0', '1'),
(2541, 56, 1733, 6, '1', '', '2016-11-11', '2016-10-27', '2016-11-10', 'Fallado.', 2, '-', 8, '2631', '1', '0', '0'),
(2542, 11, 1382, 12, '1', '', '2016-11-11', '2016-11-03', '2016-11-10', 'Roto.', 1, '01/07/16', 23, '2632', '0', '1', '0'),
(2543, 11, 1723, 6, '1', '', '2016-11-11', '2016-11-03', '2016-11-10', 'Fallado.', 2, 'L.1787', 7, '2632', '0', '1', '0'),
(2544, 11, 1403, 3, '1', '', '2016-11-11', '2016-11-03', '2016-11-10', 'Fallado.', 1, '-', 5, '2632', '0', '1', '0'),
(2545, 11, 1936, 1, '1', '', '2016-11-11', '2016-11-03', '2016-11-10', 'Fallado.', 1, '-', 4, '2632', '1', '0', '0'),
(2546, 11, 1890, 1, '1', '', '2016-11-11', '2016-11-03', '2016-11-10', 'Fallado.', 1, '09062015', 4, '2632', '1', '0', '0'),
(2547, 11, 1382, 1, '1', 'Filtro usado.', '2016-11-11', '2016-11-03', '2016-11-10', 'Fallado.', 1, '102215', 4, '2632', '1', '0', '0'),
(2548, 11, 1941, 6, '1', '', '2016-11-11', '2016-11-03', '2016-11-10', 'Fallado.', 1, '30102015', 8, '2632', '1', '0', '0'),
(2549, 11, 1118, 12, '1', '', '2016-11-11', '2016-11-03', '2016-11-10', 'Roto.', 2, '22.06.11', 14, '2632', '0', '1', '0'),
(2550, 11, 2039, 3, '1', '', '2016-11-11', '2016-11-03', '2016-11-10', 'Fallado.', 1, '08/13/2011', 5, '2632', '0', '1', '0'),
(2551, 11, 495, 12, '2', '', '2016-11-11', '2016-11-03', '2016-11-10', 'Roto.', 2, 'L.18370 04.02.16', 14, '2632', '0', '2', '0'),
(2552, 11, 1729, 1, '13', '', '2016-11-11', '2016-11-03', '2016-11-10', 'Fallados.', 2, '26.11.14 L.17468', 20, '2632', '0', '0', '13'),
(2553, 43, 1951, 12, '1', 'Filtro usado. Dañado por manipulación inadecuada.', '2016-11-11', '2016-10-28', '2016-11-10', 'Pico torcido.', 1, '-', 14, '2633', '1', '0', '0'),
(2554, 43, 212, 5, '2', '', '2016-11-11', '2016-10-28', '2016-11-10', 'Fuera de medida.', 1, '09/10', 19, '2633', '2', '0', '0'),
(2555, 43, 2110, 6, '1', '', '2016-11-11', '2016-10-28', '2016-11-10', 'Chupa aire.', 1, '05/17/16', 8, '2633', '1', '0', '0'),
(2556, 43, 1943, 1, '1', '', '2016-11-11', '2016-10-28', '2016-11-10', 'Sensor fallado.', 1, '30/10/2015', 6, '2633', '0', '1', '0'),
(2557, 43, 1967, 12, '1', 'Alojamiento de purgador dañado por manipulación inadecuada', '2016-11-11', '2016-10-28', '2016-11-10', 'Sin rosca para sensor.', 1, '1304', 14, '2633', '1', '0', '0'),
(2558, 43, 1285, 12, '1', 'No se verifica falla del material. Esfuerzo mecánico excesivo o indebido.', '2016-11-11', '2016-10-28', '2016-11-10', 'O´ring cortado.', 1, '-', 10, '2633', '1', '0', '0'),
(2559, 43, 1731, 6, '1', '', '2016-11-11', '2016-10-28', '2016-11-10', 'Pierde.', 1, '03/2016', 7, '2633', '0', '1', '0'),
(2560, 28, 1424, 12, '1', '', '2016-11-15', '2016-10-27', '2016-11-11', 'Abollado.', 1, '01/21/15', 14, '2634', '0', '1', '0'),
(2561, 28, 2269, 12, '1', 'Perno de conexión colapsado por exceso de torque.  Tuerca de conexión marcada por torque inapropiado. ', '2016-11-15', '2016-10-27', '2016-11-11', 'Rota.', 1, 'A16', 14, '2634', '1', '0', '0'),
(2562, 46, 1124, 12, '2', '', '2016-11-15', '2016-11-11', '2016-11-15', 'No fueron pedidos.', 1, '09/12/2013', 20, '2635', '0', '0', '2'),
(2563, 46, 1983, 1, '1', '', '2016-11-15', '2016-11-11', '2016-11-15', 'Fallado.', 1, '1544', 5, '2635', '0', '1', '0'),
(2564, 24, 1723, 12, '175', '152 unidades se le sale la pintura. 23 unidades con pico deformado.', '2016-11-15', '2016-11-09', '2016-11-11', 'Sin descripcion.', 2, '290616', 21, '2636', '0', '175', '0'),
(2565, 105, 430, 5, '1', 'Filtro usado.Las medidas siguen  especificaciones del diseño.', '2016-11-23', NULL, '2016-11-18', 'Sin descripcion.', 1, '13-11-26 B1323', 19, '2637', '0', '0', '1'),
(2566, 14, 2206, 2, '4', 'Bujia usada. No se verifica causa de falla.', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 1, '-', 4, '2638', '0', '0', '4'),
(2567, 14, 2172, 2, '6', 'El informe detalla 2u. Son 6u. Bujias usadas, con presencia de aceite.', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 1, '-', 4, '2638', '0', '0', '6'),
(2568, 14, 2207, 2, '4', 'Bujias usadas. No se verifica causa de falla.', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 1, '-', 4, '2638', '0', '0', '4'),
(2569, 14, 2202, 2, '7', 'Bujias carbonizadas. Falla del motor, no atribuible a la bujia.', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 1, '-', 4, '2638', '0', '0', '7'),
(2570, 14, 2269, 12, '1', 'Perno de conexion dañado por exceso de torque.', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 1, 'T35', 14, '2638', '1', '0', '0'),
(2571, 14, 2427, 12, '1', '', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 1, '-', 23, '2638', '0', '1', '0'),
(2572, 14, 2429, 12, '1', '', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 1, '-', 23, '2638', '0', '1', '0'),
(2573, 14, 2398, 4, '4', '2 unidades quemadas. 2 unidades filamento de luz baja no funciona.', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 1, '14631', 24, '2638', '0', '4', '0'),
(2574, 14, 2395, 4, '2', '', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 1, '15E21', 4, '2638', '2', '0', '0'),
(2575, 14, 2125, 12, '1', '', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 2, '-', 14, '2638', '0', '1', '0'),
(2576, 14, 2016, 12, '2', '', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 1, '-', 23, '2638', '0', '2', '0'),
(2577, 14, 1941, 6, '1', '', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 1, '14052015', 4, '2638', '1', '0', '0'),
(2578, 14, 2725, 12, '8', '', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 1, '03062015', 13, '2638', '0', '8', '0'),
(2579, 14, 2054, 3, '1', '', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 1, '1002', 5, '2638', '0', '1', '0'),
(2580, 14, 693, 12, '1', '', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 2, '08.01.16 L.18417', 14, '2638', '0', '1', '0'),
(2581, 14, 1456, 12, '1', '', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 1, '15/07/06', 14, '2638', '0', '1', '0'),
(2582, 14, 1415, 12, '1', '', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 1, '01/29/15', 14, '2638', '0', '1', '0'),
(2583, 14, 1384, 6, '1', '', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 1, '09.08.15', 8, '2638', '1', '0', '0'),
(2584, 14, 1383, 12, '1', '', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin O´ring.', 1, 'L.15890 23 AGO 13', 16, '2638', '0', '1', '0'),
(2585, 14, 1210, 12, '1', '', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 1, '28/03/2015', 17, '2638', '0', '1', '0'),
(2586, 14, 1509, 1, '2', 'No detallado en el informe. Kit Ranger.', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 1, '-', 14, '2638', '0', '2', '0'),
(2587, 14, 1053, 12, '2', 'No detallado en el informe. Kit Ranger.', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 1, '-', 14, '2638', '0', '2', '0'),
(2588, 14, 1931, 12, '2', 'No detallado en el informe. Kit Ranger.', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 1, '-', 14, '2638', '0', '2', '0'),
(2589, 14, 2750, 12, '2', 'No detallado en el informe. Kit Ranger.', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 1, '-', 14, '2638', '0', '2', '0'),
(2590, 14, 2165, 2, '4', 'No detalladas en el informe No se verifico causa de falla.', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 1, '-', 4, '2638', '0', '0', '4'),
(2591, 14, 2208, 12, '2', 'No detalladas en el informe. Bujia fundida no atribuible al producto. Falla del motor.', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 1, '-', 2, '2638', '0', '0', '2'),
(2592, 14, 2208, 12, '2', 'No detalladas en el informe. Bujia fundida no atribuible al producto. Falla del motor.', '2016-11-24', '2016-11-21', '2016-11-23', 'Sin descripcion.', 1, '-', 2, '2638', '0', '0', '2'),
(2593, 28, 283, 12, '4', '', '2016-11-25', '2016-11-22', '2016-11-25', 'Caja deteriorada.', 1, '-', 15, '2639', '0', '4', '0'),
(2594, 3, 1102, 12, '6', '', '2016-11-29', '2016-11-23', '2016-11-25', 'No pedidos.', 1, '-', 20, '2640', '0', '0', '6'),
(2595, 3, 1166, 12, '2', '', '2016-11-29', '2016-11-23', '2016-11-25', 'Golpeados.', 2, 'L.17073 11.09.14', 14, '2640', '0', '2', '0'),
(2596, 3, 2442, 12, '130', '', '2016-11-29', '2016-11-23', '2016-11-25', 'No pedidas.', 1, '-', 20, '2640', '0', '0', '130'),
(2597, 3, 1762, 12, '2', '', '2016-11-29', '2016-11-23', '2016-11-25', 'Son JFC-111.', 1, '-', 21, '2640', '0', '2', '0'),
(2598, 3, 2510, 12, '190', '', '2016-11-29', '2016-11-23', '2016-11-25', 'Son de colores.', 1, '-', 20, '2640', '0', '0', '190'),
(2599, 3, 465, 12, '6', '', '2016-11-29', '2016-11-23', '2016-11-25', 'No pedidos.', 1, '1644/06', 20, '2640', '0', '0', '6'),
(2600, 3, 2465, 12, '20', 'Son 2 cajas x10 unidades, C/U.', '2016-11-29', '2016-11-23', '2016-11-25', 'No pedidos.', 1, '-', 20, '2640', '0', '0', '20'),
(2601, 3, 1954, 12, '6', '', '2016-11-29', '2016-11-23', '2016-11-25', 'No pedidos.', 1, '-', 20, '2640', '0', '0', '6'),
(2602, 3, 2411, 4, '2', '', '2016-11-29', '2016-11-23', '2016-11-25', 'Reclamo hablado.', 1, '-', 22, '2640', '0', '2', '0'),
(2603, 3, 2591, 11, '1', 'Dañadas por manipulacion inadecuada.', '2016-11-29', '2016-11-23', '2016-11-25', 'No funcionan.', 1, '-', 4, '2640', '1', '0', '0'),
(2604, 3, 599, 5, '2', '', '2016-11-29', '2016-11-23', '2016-11-25', 'Fuera de medidas.', 1, '15-11-27 B1513', 6, '2640', '0', '2', '0'),
(2605, 3, 285, 12, '1', '', '2016-11-29', '2016-11-23', '2016-11-25', 'Dañado.', 1, '05/10/2012', 14, '2640', '0', '1', '0'),
(2606, 3, 1431, 12, '2', '', '2016-11-29', '2016-11-23', '2016-11-25', 'Pieza suelta.', 1, '01/07/16', 23, '2640', '0', '2', '0'),
(2607, 3, 2751, 12, '1', '', '2016-11-29', '2016-11-23', '2016-11-25', 'Aplastado.', 1, '1507-09 B1504', 14, '2640', '0', '1', '0'),
(2608, 3, 1941, 1, '1', 'Filtro usado.', '2016-11-29', '2016-11-23', '2016-11-25', 'Falla.', 1, '13102015', 4, '2640', '1', '0', '0'),
(2609, 3, 2016, 1, '1', '', '2016-11-29', '2016-11-23', '2016-11-25', 'Falla.', 1, '-', 6, '2640', '0', '1', '0'),
(2610, 3, 1943, 1, '1', '', '2016-11-29', '2016-11-23', '2016-11-25', 'Falla.', 1, '30/10/2015', 23, '2640', '0', '1', '0'),
(2611, 3, 1387, 12, '1', 'Producto no detallado en el informe.', '2016-11-29', '2016-11-23', '2016-11-25', 'Sin descripcion.', 1, 'LT.17116 21 NOV 14', 16, '2640', '0', '1', '0'),
(2612, 3, 1692, 12, '1', 'Producto no detallado en el informe.', '2016-11-29', '2016-11-23', '2016-11-25', 'Sin descripcion.', 1, '0924', 14, '2640', '0', '1', '0'),
(2613, 3, 1369, 3, '1', 'Producto no detallado en el informe.', '2016-11-29', '2016-11-23', '2016-11-25', 'Falla rosca.', 1, '11/24/15', 4, '2640', '1', '0', '0'),
(2614, 3, 2269, 2, '1', 'Bujias cubiertas de hollin. Producto no detallado en el informe.', '2016-11-29', '2016-11-23', '2016-11-25', 'Sin descripcion.', 1, 'E84', 2, '2640', '1', '0', '0'),
(2615, 3, 1405, 1, '1', 'Producto no detallado en el informe.', '2016-11-29', '2016-11-23', '2016-11-25', 'Sin descripcion.', 1, '09/14/16', 5, '2640', '0', '1', '0'),
(2616, 3, 1384, 12, '2', 'Producto no detallado en el informe.', '2016-11-29', '2016-11-23', '2016-11-25', 'Sin descripcion.', 1, 'LT.16719 14 FEB 14', 13, '2640', '0', '2', '0'),
(2617, 3, 1835, 12, '1', 'Producto no detallado en el informe.', '2016-11-29', '2016-11-23', '2016-11-25', 'Sin descripcion.', 1, '1516', 20, '2640', '0', '0', '1'),
(2618, 3, 2011, 12, '3', 'Producto no detallado en el informe.', '2016-11-29', '2016-11-23', '2016-11-25', 'Sin descripcion.', 1, '1544', 20, '2640', '0', '0', '3'),
(2619, 3, 1973, 1, '1', 'Rosca dañado por manipulacion inadecuada. Producto no detallado en el informe.', '2016-11-29', '2016-11-23', '2016-11-25', 'Sin descripcion.', 1, '-', 14, '2640', '1', '0', '0'),
(2620, 3, 2269, 2, '1', 'Bujia cubierta de hollin. Producto no detallado en el informe.', '2016-11-29', '2016-11-23', '2016-11-25', 'Sin descripcion.', 1, 'E84', 3, '2640', '0', '1', '0'),
(2621, 3, 1729, 12, '1', 'Producto no detallado en el informe.', '2016-11-29', '2016-11-23', '2016-11-25', 'Sin descripcion.', 2, '26.11.14  L.17468', 20, '2640', '0', '0', '1'),
(2622, 3, 1639, 12, '1', 'Producto no detallado en el informe.', '2016-11-29', '2016-11-23', '2016-11-25', 'Sin descripcion.', 2, '18022', 17, '2640', '0', '1', '0'),
(2623, 3, 1506, 12, '1', 'Producto no detallado en el informe.', '2016-11-29', '2016-11-23', '2016-11-25', 'Sin descripcion.', 2, 'L.18833', 16, '2640', '0', '1', '0'),
(2624, 3, 1728, 1, '1', 'Producto no detallado en el informe.', '2016-11-29', '2016-11-23', '2016-11-25', 'Sin descripcion.', 2, '06/2015', 13, '2640', '0', '1', '0'),
(2625, 3, 1723, 1, '1', 'Producto no detallado en el informe.', '2016-11-29', '2016-11-23', '2016-11-25', 'Sin descripcion.', 2, 'L.18769', 17, '2640', '0', '1', '0'),
(2626, 3, 1838, 1, '1', 'Producto no detallado en el informe.', '2016-11-29', '2016-11-23', '2016-11-25', 'Sin descripcion.', 1, '850', 4, '2640', '1', '0', '0'),
(2627, 3, 1969, 6, '1', 'Filtro usado. Producto no detallado en el informe.', '2016-11-29', '2016-11-23', '2016-11-25', 'Sin descripcion.', 1, '-', 8, '2640', '1', '0', '0'),
(2628, 27, 1713, 12, '1', '', '2016-11-30', '2016-11-22', '2016-11-29', 'Mal uno de los picos.', 1, '18072015', 17, '2641', '0', '1', '0'),
(2629, 27, 1973, 12, '30', '', '2016-11-30', '2016-11-22', '2016-11-29', 'Envio repetido.', 1, '-', 20, '2641', '0', '0', '30'),
(2630, 27, 2110, 12, '34', '', '2016-11-30', '2016-11-22', '2016-11-29', 'Enviado de mas.', 1, '-', 20, '2641', '0', '0', '34'),
(2631, 27, 899, 12, '5', '', '2016-11-30', '2016-11-22', '2016-11-29', 'Enviados de mas.', 1, '-', 20, '2641', '0', '0', '5'),
(2632, 27, 1980, 3, '1', 'Rosca falseada por manipulacion inadecuada.', '2016-11-30', '2016-11-22', '2016-11-29', 'Sin rosca.', 1, '1512', 14, '2641', '1', '0', '0'),
(2633, 27, 1983, 3, '1', 'Rosca falseada por manipulacion inadecuada.', '2016-11-30', '2016-11-22', '2016-11-29', 'Sin rosca.', 1, '1516', 14, '2641', '1', '0', '0'),
(2634, 27, 1941, 1, '2', 'Filtro usado.', '2016-11-30', '2016-11-22', '2016-11-29', 'No sella el acople.', 1, '-', 4, '2641', '2', '0', '0'),
(2635, 27, 1939, 6, '1', '', '2016-11-30', '2016-11-22', '2016-11-29', 'No sella el pico.', 1, '09062015', 8, '2641', '1', '0', '0'),
(2636, 20, 1981, 6, '1', '', '2016-11-30', '2016-11-24', '2016-11-25', 'Sin descripcion.', 1, '1544', 7, '2642', '0', '1', '0'),
(2637, 20, 1941, 6, '1', '', '2016-11-30', '2016-11-24', '2016-11-25', 'Sin descripcion.', 1, '14052015', 8, '2642', '1', '0', '0'),
(2638, 20, 1987, 6, '1', '', '2016-11-30', '2016-11-24', '2016-11-25', 'Sin descripcion.', 1, '1514', 8, '2642', '1', '0', '0'),
(2639, 20, 2011, 6, '1', '', '2016-11-30', '2016-11-24', '2016-11-25', 'Sin descripcion.', 1, '1424', 8, '2642', '1', '0', '0'),
(2640, 20, 149, 5, '1', '', '2016-11-30', '2016-11-24', '2016-11-25', 'Sin descripcion.', 1, '13/03/2015', 6, '2642', '0', '1', '0'),
(2641, 20, 2016, 12, '0', 'No ingreso.', '2016-11-30', '2016-11-24', '2016-11-25', 'Sin descripcion.', 1, '-', 2, '2642', '0', '0', '0'),
(2642, 20, 1983, 12, '0', 'No ingreso.', '2016-11-30', '2016-11-24', '2016-11-25', 'Sin descripcion.', 1, '-', 2, '2642', '0', '0', '0'),
(2643, 232, 1971, 12, '4', '', '2016-12-02', NULL, '2016-12-02', 'Error de pedido.', 1, '-', 20, '2643', '0', '0', '4'),
(2644, 4, 473, 12, '6', '', '2016-12-02', '2016-11-25', '2016-12-02', 'Pedido por error.', 1, '-', 20, '2644', '0', '0', '6'),
(2645, 241, 534, 12, '90', '', '2016-12-02', '2016-11-30', '2016-12-02', 'Sin descripcion.', 1, '-', 20, '2645', '0', '0', '90'),
(2646, 61, 2016, 1, '9', '', '2016-12-02', '2016-10-31', '2016-12-02', 'Fallan.', 1, '-', 6, '2646', '0', '9', '0'),
(2647, 61, 2016, 12, '96', '', '2016-12-02', '2016-10-31', '2016-12-02', 'Devolucion.', 1, '-', 20, '2646', '0', '0', '96'),
(2648, 61, 2109, 12, '1', '', '2016-12-02', '2016-10-31', '2016-12-02', 'Parte suelta en su interior.', 1, 'AUG 03 2012', 23, '2646', '0', '1', '0'),
(2649, 61, 899, 12, '4', '', '2016-12-02', '2016-10-31', '2016-12-02', 'Enviados por error.', 1, '-', 20, '2646', '0', '0', '4'),
(2650, 61, 801, 12, '2', '', '2016-12-02', '2016-10-31', '2016-12-02', 'Enviados por error.', 1, '-', 20, '2646', '0', '0', '2'),
(2651, 61, 565, 12, '2', '', '2016-12-02', '2016-10-31', '2016-12-02', 'Enviados por error.', 1, '-', 20, '2646', '0', '0', '2'),
(2652, 61, 385, 5, '1', '', '2016-12-02', '2016-10-31', '2016-12-02', 'Fuera de medida.', 2, 'L.12839 19.01.12', 6, '2646', '0', '1', '0'),
(2653, 61, 498, 5, '1', '', '2016-12-02', '2016-10-31', '2016-12-02', 'Fuera de medida.', 2, 'L.9758 07.09.10', 6, '2646', '0', '1', '0'),
(2654, 61, 1083, 5, '2', '', '2016-12-02', '2016-10-31', '2016-12-02', 'Fuera de medida.', 1, '-', 6, '2646', '0', '2', '0'),
(2655, 232, 1723, 12, '2', '', '2016-12-02', NULL, '2016-12-02', 'Sin descripcion.', 2, 'L.17871', 13, '2647', '0', '2', '0'),
(2656, 233, 470, 12, '1', '', '2016-12-02', NULL, '2016-12-02', 'Sin descripcion.', 1, '-', 20, '2648', '0', '0', '1'),
(2657, 233, 1914, 12, '1', '', '2016-12-02', NULL, '2016-12-02', 'Sin descripcion.', 1, '-', 20, '2648', '0', '0', '1'),
(2658, 233, 1969, 1, '2', 'Un filtro usado.', '2016-12-02', NULL, '2016-12-02', 'Sin descripcion.', 1, '10.30.15', 4, '2648', '2', '0', '0'),
(2659, 233, 1379, 1, '1', 'Producto dañado.', '2016-12-02', NULL, '2016-12-02', 'Sin descripcion.', 1, '09/07/15', 4, '2648', '1', '0', '0'),
(2660, 4, 1599, 1, '1', 'Filtro usado.', '2016-12-05', '2016-11-25', '2016-12-05', 'Pierde por la junta.', 1, '03/2016', 4, '2649', '1', '0', '0'),
(2661, 4, 1723, 12, '2', '', '2016-12-05', '2016-11-25', '2016-12-05', 'Pierden.', 2, '06.01.15 L.17769', 13, '2649', '0', '2', '0'),
(2662, 4, 1815, 3, '1', '', '2016-12-05', '2016-11-25', '2016-12-05', 'Rosca fallada.', 1, '30112012', 4, '2649', '1', '0', '0'),
(2663, 4, 2016, 1, '1', '', '2016-12-05', '2016-11-25', '2016-12-05', 'Fallado.', 1, '-', 6, '2649', '0', '1', '0'),
(2664, 4, 1441, 12, '1', '', '2016-12-05', '2016-11-25', '2016-12-05', 'Vino abollado.', 1, 'OCT 10 2011 ', 14, '2649', '0', '1', '0'),
(2665, 4, 1718, 1, '1', '', '2016-12-05', '2016-11-25', '2016-12-05', 'Fallo.', 1, '1551 ', 4, '2649', '1', '0', '0'),
(2666, 8, 1945, 6, '1', '', '2016-12-07', '2016-11-30', '2016-12-07', 'Fallado.', 1, '2012', 7, '2650', '0', '1', '0');
INSERT INTO `reclamos` (`id_reclamo`, `id_cliente`, `id_producto`, `id`, `cantidad_total`, `observacion`, `fecha`, `fecha_emision`, `fecha_recepcion`, `motivo`, `id_origen`, `lote`, `id_resultado`, `nro_reclamo`, `cant_infundados`, `cant_fundados`, `cant_tema_comercial`) VALUES
(2667, 8, 1946, 1, '1', 'El informe detalla WOE-300. Pero es FCD-0936', '2016-12-07', '2016-11-30', '2016-12-07', 'Fallado.', 1, '05012012', 6, '2650', '0', '1', '0'),
(2668, 8, 1723, 12, '1', '', '2016-12-07', '2016-11-30', '2016-12-07', 'Fallado.', 2, 'L.17769', 13, '2650', '0', '1', '0'),
(2669, 8, 2122, 12, '1', '', '2016-12-07', '2016-11-30', '2016-12-07', 'Lo recibio roto.', 1, '30102015', 14, '2650', '0', '1', '0'),
(2670, 8, 715, 12, '2', '', '2016-12-07', '2016-11-30', '2016-12-07', 'Roto.', 2, '12.11.14 L.17464', 14, '2650', '0', '2', '0'),
(2671, 8, 1637, 12, '2', 'No hay otras observaciones', '2016-12-07', '2016-11-30', '2016-12-07', 'Lo recibio roto.', 2, 'L.18700', 14, '2650', '0', '2', '0'),
(2672, 8, 2728, 2, '1', 'Producto sin uso', '2016-12-07', '2016-11-30', '2016-12-07', 'Fallado.', 1, 'A52', 4, '2650', '1', '0', '0'),
(2673, 8, 1729, 6, '1', '', '2016-12-07', '2016-11-30', '2016-12-07', 'Fallado.', 2, '-', 7, '2650', '0', '1', '0'),
(2674, 8, 1723, 6, '1', '', '2016-12-07', '2016-11-30', '2016-12-07', 'Union mal sellada.', 2, '12/2004', 7, '2650', '0', '1', '0'),
(2675, 8, 1347, 1, '1', 'Filtro usado.', '2016-12-07', '2016-11-30', '2016-12-02', 'Fallado.', 1, '05 24 2007', 4, '2650', '1', '0', '0'),
(2676, 8, 2725, 6, '1', '', '2016-12-07', '2016-11-30', '2016-12-02', 'La manguera está incompleta.', 1, '27042016', 7, '2650', '0', '1', '0'),
(2677, 8, 1387, 3, '1', '', '2016-12-07', '2016-11-30', '2016-12-02', 'Falla en la rosca.', 1, '01/08/16', 5, '2650', '0', '1', '0'),
(2678, 8, 1506, 1, '1', 'Filtro usado.', '2016-12-07', '2016-11-30', '2016-12-02', 'La carcasa no cierra.', 2, '18833', 4, '2650', '1', '0', '0'),
(2679, 8, 1728, 6, '1', '', '2016-12-07', '2016-11-30', '2016-12-02', 'Pierde por la union.', 1, '20062013', 7, '2650', '0', '1', '0'),
(2680, 8, 1972, 6, '1', 'Filtro usado.', '2016-12-07', '2016-11-30', '2016-12-02', 'Chupa aire.', 1, '-', 7, '2650', '0', '1', '0'),
(2681, 8, 2591, 11, '1', '', '2016-12-07', '2016-11-30', '2016-12-02', 'Fallada.', 1, '-', 4, '2650', '1', '0', '0'),
(2682, 8, 2449, 12, '4', '', '2016-12-07', '2016-11-30', '2016-12-02', 'Caja incompleta.', 1, '-', 16, '2650', '0', '4', '0'),
(2683, 8, 1078, 12, '24', '', '2016-12-07', '2016-11-30', '2016-12-02', 'Se equivoco de codigo.', 1, '-', 20, '2650', '0', '0', '24'),
(2684, 8, 1990, 6, '1', 'Filtro usado.', '2016-12-07', '2016-11-30', '2016-12-02', 'Falla.', 1, '1224', 8, '2650', '1', '0', '0'),
(2685, 8, 1087, 1, '1', 'Producto dañado.', '2016-12-07', '2016-11-30', '2016-12-02', 'Falla.', 2, 'L.18035', 6, '2650', '0', '1', '0'),
(2686, 8, 2251, 2, '4', 'Bujias carbonizadas. Falla del motor. Info Nº 288', '2016-12-07', '2016-11-30', '2016-12-02', 'Falla al encender.', 1, 'B59', 4, '2650', '4', '0', '0'),
(2687, 28, 2016, 1, '1', '', '2016-12-15', '2016-12-02', '2016-12-14', 'Pierde.', 1, '-', 6, '2651', '0', '1', '0'),
(2688, 28, 1729, 1, '1', 'Perdida por el sello de las tapas.', '2016-12-15', '2016-12-02', '2016-12-14', 'Fuera de medida.', 2, '16.06.14 L.16911', 7, '2651', '0', '1', '0'),
(2689, 28, 1729, 12, '14', '', '2016-12-16', '2016-12-02', '2016-12-14', 'Fuera de medida.', 2, '-', 20, '2651', '0', '0', '14'),
(2690, 53, 2510, 12, '530', '', '2016-12-20', '2016-12-16', '2016-12-20', 'Devolucion.', 1, '-', 20, '2652', '0', '0', '530'),
(2691, 5, 1932, 5, '3', '', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 1, '06/2014', 6, '2653', '0', '3', '0'),
(2692, 5, 1943, 12, '36', '', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 1, '30/10/2015', 20, '2653', '0', '0', '36'),
(2693, 5, 1146, 12, '1', '', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 2, 'L.18051', 14, '2653', '0', '1', '0'),
(2694, 5, 450, 12, '2', '', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 2, 'L.16679  31.12.13', 14, '2653', '0', '2', '0'),
(2695, 5, 1943, 12, '4', '', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 1, '20042016', 13, '2653', '0', '4', '0'),
(2696, 5, 1945, 12, '3', '', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 1, '12/2015', 14, '2653', '0', '3', '0'),
(2697, 5, 1087, 12, '1', '', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 2, 'L.19046', 14, '2653', '0', '1', '0'),
(2698, 5, 1941, 12, '1', '', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 1, '30102015', 23, '2653', '0', '1', '0'),
(2699, 5, 1724, 12, '1', '', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 2, '31.07.15', 14, '2653', '0', '1', '0'),
(2700, 5, 1506, 12, '1', '', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 2, 'L.18028', 14, '2653', '0', '1', '0'),
(2701, 5, 1546, 1, '1', '', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 1, '-', 23, '2653', '0', '1', '0'),
(2702, 5, 1509, 12, '1', '', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 1, '12/2015', 14, '2653', '0', '1', '0'),
(2703, 5, 1946, 12, '2', '', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 1, '05/01/2012', 17, '2653', '0', '2', '0'),
(2704, 5, 2100, 1, '1', '', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 1, '05/30/09º', 23, '2653', '0', '1', '0'),
(2705, 5, 1980, 6, '1', 'Filtro usado.', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 1, '1110', 8, '2653', '1', '0', '0'),
(2706, 5, 1745, 1, '1', '', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 1, '02/2014', 12, '2653', '0', '1', '0'),
(2707, 5, 1983, 12, '1', '', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 1, '1344', 17, '2653', '0', '1', '0'),
(2708, 5, 2016, 5, '3', '', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 1, '-', 6, '2653', '0', '3', '0'),
(2709, 5, 1951, 6, '1', '', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 1, '1512', 8, '2653', '1', '0', '0'),
(2710, 5, 2075, 1, '1', 'Filtro usado.', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 1, '-', 4, '2653', '1', '0', '0'),
(2711, 5, 1931, 1, '1', '', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 1, '02/2014', 17, '2653', '0', '1', '0'),
(2712, 5, 2016, 1, '1', '', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 1, '-', 23, '2653', '0', '1', '0'),
(2713, 5, 1941, 6, '4', '', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 1, '14052015', 8, '2653', '4', '0', '0'),
(2714, 5, 1405, 1, '1', '', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 1, '09/14/15', 5, '2653', '0', '1', '0'),
(2715, 5, 1431, 1, '1', 'Filtro usado.', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 1, '09/07/15', 4, '2653', '1', '0', '0'),
(2716, 5, 1309, 1, '1', 'Filtro usado.', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 1, '09/10/15', 4, '2653', '1', '0', '0'),
(2717, 5, 2555, 12, '1', '', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 1, '229/2001', 14, '2653', '0', '1', '0'),
(2718, 5, 1264, 1, '1', 'Papel saturado por exceso de uso.', '2016-12-20', NULL, '2016-12-16', 'Sin descripcion.', 1, '-', 2, '2653', '1', '0', '0'),
(2719, 5, 1941, 12, '0', 'El filtro no es WEGA.', '2016-12-21', NULL, '2016-12-16', 'Sin descripcion.', 1, '-', 2, '2653', '0', '0', '0'),
(2720, 5, 2016, 12, '0', 'El filtro no es WEGA.', '2016-12-21', NULL, '2016-12-16', 'Sin descripcion.', 1, '-', 2, '2653', '0', '0', '0'),
(2723, 231, 446, 12, '140', '', '2016-12-23', '2016-12-07', '2016-12-23', 'Pedido por error.', 1, '-', 20, '2655', '0', '0', '140'),
(2724, 57, 1932, 12, '28', '', '2016-12-23', '2016-12-03', '2016-12-23', 'Fuera de medida.', 1, '06/2014', 13, '2656', '0', '28', '0'),
(2725, 57, 1641, 6, '1', '', '2016-12-23', '2016-12-03', '2016-12-23', 'Pierde por la union.', 2, '17.08.13', 7, '2656', '0', '1', '0'),
(2726, 57, 1983, 12, '1', '', '2016-12-23', '2016-12-03', '2016-12-23', 'Interior suelto.', 1, '1512', 23, '2656', '0', '1', '0'),
(2727, 57, 2101, 12, '1', '', '2016-12-23', '2016-12-03', '2016-12-23', 'Particula suelta en el interior.', 1, '1224', 23, '2656', '0', '1', '0'),
(2728, 57, 1944, 1, '1', 'Filtro usado.', '2016-12-23', '2016-12-03', '2016-12-23', 'Particula suelta.', 1, '20062013', 4, '2656', '1', '0', '0'),
(2729, 28, 2591, 11, '1', '', '2016-12-23', '2016-12-15', '2016-12-23', 'No funcionan.', 1, '-', 4, '2657', '1', '0', '0'),
(2730, 40, 1356, 12, '1', 'Se adjunta Informe técnico Nº 289 O`ring, segundo filtro.', '2016-12-27', NULL, '2016-12-26', 'Sin descripcion.', 1, '15112013', 20, '2658', '0', '0', '1'),
(2731, 4, 2622, 12, '50', '', '2017-01-06', '2016-12-26', '2017-01-06', 'Devolucion comercial.', 1, '-', 20, '2659', '0', '0', '50'),
(2732, 4, 748, 12, '3', '', '2017-01-06', '2016-12-26', '2017-01-06', 'Pedido por error.', 1, '-', 20, '2659', '0', '0', '3'),
(2733, 4, 260, 12, '10', '', '2017-01-06', '2016-12-26', '2017-01-06', 'Devolucion comercial.', 1, '-', 20, '2659', '0', '0', '10'),
(2734, 4, 239, 12, '4', '', '2017-01-06', '2016-12-26', '2017-01-06', 'Devolucion comercial.', 1, '-', 20, '2659', '0', '0', '4'),
(2735, 4, 55, 12, '4', '', '2017-01-06', '2016-12-26', '2017-01-06', 'Devolucion comercial.', 1, '-', 20, '2659', '0', '0', '4'),
(2736, 4, 32, 12, '6', '', '2017-01-06', '2016-12-26', '2017-01-06', 'Devolucion comercial.', 1, '-', 20, '2659', '0', '0', '6'),
(2737, 4, 647, 12, '9', '', '2017-01-09', '2017-01-04', '2017-01-06', 'Devolucion comercial.', 1, '-', 20, '2660', '0', '0', '9'),
(2738, 4, 636, 12, '12', '', '2017-01-09', '2017-01-04', '2017-01-06', 'Devolucion comercial.', 1, '-', 20, '2660', '0', '0', '12'),
(2739, 233, 589, 12, '1', '', '2017-01-10', '2016-12-28', '2017-01-06', 'Roto.', 1, '11/12/2015', 14, '2661', '0', '1', '0'),
(2740, 233, 644, 12, '1', '', '2017-01-10', '2016-12-28', '2017-01-06', 'Roto.', 1, '29/07/2014', 14, '2661', '0', '1', '0'),
(2741, 233, 1931, 1, '2', 'Filtros usados.', '2017-01-10', '2016-12-28', '2017-01-06', 'Fallaron', 1, '06/2014', 4, '2661', '2', '0', '0'),
(2742, 4, 2016, 1, '1', '', '2017-01-10', '2016-12-26', '2017-01-06', 'Fallo.', 1, '-', 6, '2662', '0', '1', '0'),
(2743, 4, 1975, 6, '1', '', '2017-01-10', '2016-12-26', '2017-01-06', 'Fallo.', 1, '1518', 8, '2662', '1', '0', '0'),
(2744, 4, 1388, 3, '1', '', '2017-01-10', '2016-12-26', '2017-01-06', 'Mal la rosca.', 1, '09/20/15', 4, '2662', '1', '0', '0'),
(2745, 4, 1602, 12, '1', '', '2017-01-10', '2016-12-26', '2017-01-06', 'Partida vieja.', 2, 'l.156223', 20, '2662', '0', '0', '1'),
(2746, 4, 181, 12, '2', '', '2017-01-10', '2016-12-26', '2017-01-06', 'Falta tapa de plastico.', 1, '03/16', 20, '2662', '0', '0', '2'),
(2747, 4, 2397, 12, '2', '', '2017-01-10', '2016-12-26', '2017-01-06', 'Falladas.', 1, '14D29', 14, '2662', '0', '2', '0'),
(2748, 4, 2269, 12, '1', 'Dañada por exceso de torque.', '2017-01-10', '2016-12-26', '2017-01-06', 'Rota.', 1, 'T35', 14, '2662', '1', '0', '0'),
(2749, 38, 2578, 12, '280', '', '2017-01-10', '2016-10-31', '2017-01-10', 'Devolucion.', 1, '-', 20, '2663', '0', '0', '280'),
(2750, 45, 1543, 12, '64', '', '2017-01-10', NULL, '2017-01-10', 'Mandaron por error.', 1, '-', 20, '2664', '0', '0', '64'),
(2751, 45, 1984, 1, '1', 'No es atribuible al producto.', '2017-01-10', NULL, '2017-01-10', 'Se tapo y se inflo.', 1, 'jun 18 2015', 4, '2664', '1', '0', '0'),
(2752, 45, 1413, 12, '1', '', '2017-01-10', NULL, '2017-01-10', 'Vino golpeado.', 1, '-', 14, '2664', '0', '1', '0'),
(2753, 242, 1506, 12, '36', '', '2017-01-10', NULL, '2017-01-10', 'Falla tecnica.', 2, '-', 20, '2665', '0', '0', '36'),
(2754, 9, 1940, 1, '1', 'Filtro usado.', '2017-01-11', '2016-12-21', '2017-01-11', 'Una vez colocados, no funciona.', 1, '30052014', 4, '2666', '1', '0', '0'),
(2755, 9, 1941, 6, '2', 'Filtro usado.', '2017-01-11', '2016-12-21', '2017-01-11', 'Chupan aire.', 1, '14052015', 8, '2666', '2', '0', '0'),
(2756, 9, 1945, 12, '1', 'Filtro usado.', '2017-01-11', '2016-12-21', '2017-01-11', 'Pico roto.', 1, '03/2016', 14, '2666', '0', '1', '0'),
(2757, 9, 1951, 12, '1', '', '2017-01-11', '2016-12-21', '2017-01-11', 'Falla de material,mal terminado.', 1, '1534', 14, '2666', '0', '1', '0'),
(2758, 9, 1004, 5, '5', '', '2017-01-11', '2016-12-21', '2017-01-11', 'No entran en la base del filtro.', 1, '13/07/2015', 6, '2666', '0', '5', '0'),
(2759, 9, 1387, 3, '1', '', '2017-01-11', '2016-12-21', '2017-01-11', 'Falla detectada en la rosca.', 1, '12/28/15', 4, '2666', '1', '0', '0'),
(2760, 9, 1402, 12, '1', '', '2017-01-11', '2016-12-21', '2017-01-11', 'Llego golpeado, sin uso.', 1, 'APR 13 2015', 14, '2666', '0', '1', '0'),
(2761, 234, 1969, 1, '1', '', '2017-01-13', '2017-01-09', '2017-01-12', 'Problema expurgue.', 1, '09/16/15', 11, '2667', '0', '1', '0'),
(2762, 234, 1932, 5, '1', '', '2017-01-13', '2017-01-09', '2017-01-12', 'Fuera de medida.', 1, '06/2014', 6, '2667', '0', '1', '0'),
(2763, 234, 1413, 12, '1', 'Estuche dañado.', '2017-01-13', '2017-01-09', '2017-01-12', 'Pierde por junta.', 1, 'APR 15 2015', 20, '2667', '0', '0', '1'),
(2764, 234, 844, 5, '1', '', '2017-01-13', '2017-01-09', '2017-01-12', 'Fuera de medida.', 1, '13/08/2013', 6, '2667', '0', '1', '0'),
(2765, 58, 1941, 6, '1', 'Filtro usado.', '2017-01-13', '2016-12-01', '2017-01-16', 'Chupa aire.', 1, '2015', 8, '2668', '1', '0', '0'),
(2766, 58, 1951, 1, '1', 'Filtro usado.', '2017-01-13', '2016-12-01', '2017-01-16', 'Chupa aire y se para.', 1, '1534', 8, '2668', '1', '0', '0'),
(2767, 135, 1002, 12, '40', '', '2017-01-18', '2017-01-11', '2017-01-18', 'Mal pedido', 1, '-', 20, '2669', '0', '0', '40'),
(2768, 135, 2122, 12, '100', '', '2017-01-18', '2017-01-11', '2017-01-18', 'Mal pedido', 1, '-', 20, '2669', '0', '0', '100'),
(2769, 135, 2735, 12, '24', '', '2017-01-18', '2017-01-11', '2017-01-18', 'Mal pedido', 1, '-', 20, '2669', '0', '0', '24'),
(2770, 83, 450, 12, '5', '', '2017-01-18', '2017-01-11', '2017-01-18', 'Mal pedido', 1, '-', 20, '2670', '0', '0', '5'),
(2771, 83, 1405, 12, '5', '', '2017-01-18', '2017-01-11', '2017-01-18', 'Mal pedido', 1, '-', 20, '2670', '0', '0', '5'),
(2772, 5, 625, 12, '3', '', '2017-01-18', NULL, '2017-01-17', 'Sin descripcion.', 2, 'L.15875', 17, '2671', '0', '3', '0'),
(2773, 5, 1951, 1, '3', 'Informe Nº292', '2017-01-18', NULL, '2017-01-17', 'Sin descripcion.', 1, '1516', 4, '2671', '2', '1', '0'),
(2774, 56, 2071, 12, '1', '', '2017-01-27', '2017-01-19', '2017-01-26', 'Sin rosca.', 1, '-', 17, '2672', '0', '1', '0'),
(2775, 212, 1340, 12, '1', '', '2017-01-27', NULL, '2017-01-26', 'Sin descripcion', 1, 'Jul 25 2012', 17, '2673', '0', '1', '0'),
(2776, 28, 2398, 4, '2', 'Filamento cortado por efecto fusible.', '2017-02-03', '2017-02-11', '2017-02-03', 'Fallaron', 1, '15E20', 22, '2674', '2', '0', '0'),
(2777, 239, 1872, 12, '20', '', '2017-02-09', '2017-01-23', '2017-02-01', 'Sin descripcion.', 1, '-', 20, '2675', '0', '0', '20'),
(2778, 119, 1953, 12, '9', '', '2017-02-09', '2017-01-30', '2017-02-01', 'Devolucion.', 1, '11/01/14', 20, '2676', '0', '0', '9'),
(2779, 119, 1953, 12, '2', 'Carcasa dañada por uso de herramienta inadecuada. No permite ensayo de varificacion.', '2017-02-09', '2017-01-30', '2017-02-01', 'Devolucion.', 1, '11/04/14', 14, '2676', '2', '0', '0'),
(2780, 92, 498, 12, '20', '', '2017-02-09', '2016-12-28', '2017-02-01', 'Sin descripcion. ', 1, '-', 20, '2677', '0', '0', '20'),
(2781, 92, 618, 12, '5', '', '2017-02-09', '2016-12-28', '2017-02-01', 'Sin descripcion. ', 1, '-', 20, '2677', '0', '0', '5'),
(2782, 92, 2753, 12, '5', '', '2017-02-09', '2016-12-28', '2017-02-01', 'Sin descripcion. ', 1, '-', 20, '2677', '0', '0', '5'),
(2783, 92, 1439, 12, '20', '', '2017-02-09', '2016-12-28', '2017-02-01', 'Sin descripcion. ', 1, '-', 20, '2677', '0', '0', '20'),
(2784, 92, 1987, 12, '10', 'Estuches dañados.', '2017-02-09', '2016-12-28', '2017-02-01', 'Sin descripcion. ', 1, '-', 20, '2677', '0', '0', '10'),
(2785, 20, 1729, 12, '1', '', '2017-02-09', '2017-01-31', '2017-02-01', 'Sin descripcion.', 2, '07/2013', 23, '2678', '0', '1', '0'),
(2786, 20, 1729, 12, '1', '', '2017-02-09', '2017-01-31', '2017-02-01', 'Sin descripcion.', 1, '09/2015', 23, '2678', '0', '1', '0'),
(2787, 20, 1506, 12, '1', 'Perno plastico dañado por manipulacion inadecuada.', '2017-02-09', '2017-01-31', '2017-02-01', 'Sin descripcion.', 2, '18028', 14, '2678', '1', '0', '0'),
(2788, 20, 1411, 12, '1', 'Rosca dañada por manipulacion inadecuada.', '2017-02-09', '2017-01-31', '2017-02-01', 'Sin descripcion.', 1, '04/27/2016', 14, '2678', '1', '0', '0'),
(2789, 20, 2031, 1, '1', '', '2017-02-09', '2017-01-31', '2017-02-01', 'Sin descripcion.', 1, '18/07/2015', 4, '2678', '1', '0', '0'),
(2790, 20, 1381, 1, '1', '', '2017-02-09', '2017-01-31', '2017-02-01', 'Sin descripcion.', 1, '09/09/15', 5, '2678', '0', '1', '0'),
(2791, 20, 1969, 1, '1', '', '2017-02-09', '2017-01-31', '2017-02-01', 'Sin descripcion.', 1, '09/16/15', 11, '2678', '0', '1', '0'),
(2792, 8, 1580, 12, '6', '', '2017-02-09', '2017-01-23', '2017-02-01', 'No fueron pedidos.', 1, '-', 20, '2679', '0', '0', '6'),
(2793, 8, 2754, 12, '1', 'Manipulado de forma inadecuada.', '2017-02-09', '2017-01-23', '2017-02-01', 'Falladas.', 1, '01/03/2016', 14, '2679', '1', '0', '0'),
(2794, 8, 1945, 12, '1', 'Pico dañado por golpe.', '2017-02-09', '2017-01-23', '2017-02-01', 'Pico corto.', 1, '04/2015', 14, '2679', '1', '0', '0'),
(2795, 8, 441, 12, '1', '', '2017-02-09', '2017-01-23', '2017-02-01', 'Partido.', 2, '03/05/16', 14, '2679', '0', '1', '0'),
(2796, 8, 2547, 12, '2', '', '2017-02-09', '2017-01-23', '2017-02-01', 'Falladas.', 1, '-', 22, '2679', '0', '2', '0'),
(2797, 8, 2406, 12, '1', '', '2017-02-09', '2017-01-23', '2017-02-01', 'Falladas.', 1, '-', 14, '2679', '0', '1', '0'),
(2798, 8, 2745, 12, '1', '', '2017-02-09', '2017-01-23', '2017-02-01', 'Fallada.', 1, '-', 14, '2679', '0', '1', '0'),
(2799, 8, 2540, 12, '1', 'Filamento dañado por efecto fusible.', '2017-02-09', '2017-01-23', '2017-02-01', 'Fallada.', 1, '-', 14, '2679', '0', '0', '1'),
(2800, 8, 2555, 4, '1', 'Es A-2550P, no es A-2250P como detalla el informe.', '2017-02-09', '2017-01-23', '2017-02-01', 'Fallada.', 1, '-º', 24, '2679', '0', '1', '0'),
(2801, 8, 2395, 12, '1', 'Filamento cortado por golpe.', '2017-02-09', '2017-01-23', '2017-02-01', 'Fallada', 1, '13E20', 14, '2679', '0', '1', '0'),
(2802, 8, 2429, 12, '1', 'Filamento dañado por efecto fusible.', '2017-02-09', '2017-01-23', '2017-02-01', 'Fallada.', 1, '14E26', 14, '2679', '0', '0', '1'),
(2803, 8, 2422, 4, '2', '', '2017-02-09', '2017-01-23', '2017-02-01', 'Falladas', 1, '-', 24, '2679', '0', '2', '0'),
(2804, 8, 2271, 2, '2', '', '2017-02-09', '2017-01-23', '2017-02-01', 'Falladas.', 1, 'E94', 24, '2679', '0', '2', '0'),
(2805, 8, 2151, 2, '2', 'Pie aislador dañado por golpe o exceso de uso.', '2017-02-09', '2017-01-23', '2017-02-01', 'Falladas.', 1, '-', 14, '2679', '2', '0', '0'),
(2806, 8, 2146, 2, '3', '', '2017-02-09', '2017-01-23', '2017-02-01', 'Falladas.', 1, '-', 4, '2679', '3', '0', '0'),
(2807, 8, 2139, 12, '4', 'Pie aislador dañado. Presencia parcial de oxido. ', '2017-02-09', '2017-01-23', '2017-02-01', 'Falladas.', 1, '-', 14, '2679', '4', '0', '0'),
(2808, 8, 2141, 2, '4', '', '2017-02-09', '2017-01-23', '2017-02-01', 'Falladas.', 1, '-', 4, '2679', '4', '0', '0'),
(2809, 8, 1815, 12, '2', '', '2017-02-09', '2017-01-23', '2017-02-01', 'Filtro mal etiquetado.', 1, '-', 21, '2679', '0', '2', '0'),
(2810, 8, 1506, 12, '1', '', '2017-02-09', '2017-01-23', '2017-02-01', 'Cliente devolvio porque ya fallo uno.', 1, '18375', 20, '2679', '0', '0', '1'),
(2811, 8, 1951, 12, '1', '', '2017-02-09', '2017-01-23', '2017-02-01', 'Falla.', 1, '1534', 14, '2679', '0', '1', '0'),
(2812, 8, 1982, 6, '1', '', '2017-02-09', '2017-01-23', '2017-02-01', 'Pierde.', 1, '-', 7, '2679', '0', '1', '0'),
(2813, 8, 1413, 12, '1', 'Carcasa deformada por exceso de presion.', '2017-02-09', '2017-01-23', '2017-02-01', 'Roto por dentro.', 1, '01/26/15', 14, '2679', '1', '0', '0'),
(2814, 8, 2521, 12, '10', '', '2017-02-09', '2017-01-23', '2017-02-01', 'Vinieron rotas.', 1, '-', 14, '2679', '0', '0', '10'),
(2815, 4, 128, 12, '9', '', '2017-02-13', '2017-02-10', '2017-02-13', 'Devolucion comercial.', 1, '-', 20, '2680', '0', '0', '9'),
(2816, 4, 1802, 12, '7', '', '2017-02-13', '2017-02-10', '2017-02-13', 'Devolucion comercial.', 1, '-', 20, '2680', '0', '0', '7'),
(2817, 4, 1766, 12, '8', '', '2017-02-13', '2017-02-10', '2017-02-13', 'Devolucion comercial.', 1, '-', 20, '2680', '0', '0', '8'),
(2818, 4, 246, 12, '10', '', '2017-02-13', '2017-02-08', '2017-02-13', 'Devolucion comercial.', 1, '-', 20, '2681', '0', '0', '10'),
(2819, 16, 2132, 12, '96', '', '2017-02-13', '2017-02-04', '2017-02-13', 'Devolucion.', 1, '-', 20, '2682', '0', '0', '96'),
(2820, 16, 2453, 12, '200', '', '2017-02-13', '2017-02-04', '2017-02-13', 'Devolucion.', 1, '-', 20, '2682', '0', '0', '200'),
(2821, 16, 2186, 12, '192', '', '2017-02-13', '2017-02-04', '2017-02-13', 'Devolucion.', 1, '-', 20, '2682', '0', '0', '192'),
(2822, 24, 595, 12, '18', 'El informe detalla 42 unidades, solo hay 18unidades.', '2017-02-13', '2016-09-05', '2017-02-13', 'Presentan defecto.', 1, '20/04/2016', 20, '2683', '0', '0', '18'),
(2823, 24, 817, 12, '4', 'Estuches en mal estado.', '2017-02-13', '2016-09-05', '2017-02-13', 'Presentan defecto.', 1, '07/07/2015', 20, '2683', '0', '0', '4'),
(2824, 24, 879, 12, '1', '', '2017-02-13', '2016-09-05', '2017-02-13', 'Presentan defecto.', 1, '18/10/2016', 9, '2683', '0', '1', '0'),
(2825, 24, 2050, 12, '1', '', '2017-02-13', '2016-09-05', '2017-02-13', 'Presentan defecto.', 1, '-', 20, '2683', '0', '0', '1'),
(2826, 24, 1403, 12, '1', 'El informe detalla 2 unidades. Hay 1 unidad.', '2017-02-13', '2016-09-05', '2017-02-13', 'Abollados', 1, '-', 14, '2683', '0', '1', '0'),
(2827, 24, 1732, 12, '1', '', '2017-02-13', '2016-09-05', '2017-02-13', 'Presentan defecto.', 2, '-', 23, '2683', '0', '1', '0'),
(2828, 24, 1729, 12, '181', '', '2017-02-13', '2016-09-05', '2017-02-13', 'Presentan defecto.', 2, '-', 23, '2683', '0', '181', '0'),
(2829, 24, 1728, 12, '16', '', '2017-02-13', '2016-09-05', '2017-02-13', 'Presentan defecto.', 2, '-', 23, '2683', '0', '16', '0'),
(2830, 24, 1723, 12, '20', '', '2017-02-13', '2016-09-05', '2017-02-13', 'Presentan defecto.', 2, '-', 23, '2683', '0', '20', '0'),
(2831, 24, 1731, 12, '164', '', '2017-02-13', '2016-09-05', '2017-02-13', 'Presentan defecto.', 2, '-', 23, '2683', '0', '164', '0'),
(2832, 24, 739, 12, '0', 'El informe detalla 14 unidades.No ingreso.', '2017-02-13', '2016-09-05', '2017-02-13', 'Presentan defecto.', 1, '-', 2, '2683', '0', '0', '0'),
(2833, 11, 2755, 12, '1', '', '2017-02-13', '2016-11-03', '2017-02-13', 'Roto.', 1, '24/12/2015', 14, '2684', '0', '1', '0'),
(2834, 11, 925, 12, '1', '', '2017-02-13', '2016-11-03', '2017-02-13', 'Roto.', 1, '-', 14, '2684', '0', '1', '0'),
(2835, 11, 2016, 5, '1', '', '2017-02-13', '2016-11-03', '2017-02-13', 'Fallado.', 1, '-', 6, '2684', '0', '1', '0'),
(2836, 11, 1415, 1, '1', '', '2017-02-13', '2016-11-03', '2017-02-13', 'Fallado.', 1, '05/02/14 16720 ', 7, '2684', '0', '1', '0'),
(2837, 11, 1932, 5, '1', '', '2017-02-13', '2016-11-03', '2017-02-13', 'Fallado.', 1, '06/2014', 6, '2684', '0', '1', '0'),
(2838, 11, 495, 12, '1', '', '2017-02-13', '2016-11-03', '2017-02-13', 'Roto.', 1, '29/04/2015', 14, '2684', '0', '1', '0'),
(2839, 11, 1381, 1, '1', '', '2017-02-13', '2016-11-03', '2017-02-13', 'Fallado.', 1, '09/09/15', 5, '2684', '0', '1', '0'),
(2840, 11, 1415, 1, '1', 'Es WO-390, no es WO-160 como detalla el informe.', '2017-02-13', '2016-11-03', '2017-02-13', 'Fallado.', 1, '05/02/14 ', 7, '2684', '0', '1', '0'),
(2841, 4, 589, 12, '1', '', '2017-02-14', '2017-02-08', '2017-02-14', 'Roto.', 1, '11/12/2015', 14, '2685', '0', '1', '0'),
(2842, 4, 1506, 12, '3', '', '2017-02-14', '2017-02-08', '2017-02-14', 'Faltan las juntas.', 2, '-', 16, '2685', '0', '3', '0'),
(2843, 4, 1905, 12, '1', '', '2017-02-14', '2017-02-08', '2017-02-14', 'Falta O´ring.', 2, '16696', 16, '2685', '0', '1', '0'),
(2844, 4, 76, 12, '2', '', '2017-02-14', '2017-02-08', '2017-02-14', 'Fuera de medida.', 1, '09/15', 21, '2685', '0', '2', '0'),
(2845, 4, 2429, 4, '2', '', '2017-02-14', '2017-02-08', '2017-02-14', 'Una fallada.', 1, '13N04', 24, '2685', '0', '2', '0'),
(2846, 4, 2016, 5, '1', '', '2017-02-14', '2017-02-08', '2017-02-14', 'Fallo.', 1, '-', 6, '2685', '0', '1', '0'),
(2847, 4, 1978, 12, '1', '', '2017-02-14', '2017-02-08', '2017-02-14', 'Fallo.', 1, 'jul 26 2014', 20, '2685', '0', '0', '1'),
(2848, 4, 1943, 12, '1', 'Es FCD-0915, no es WOE-915 como detalla el informe.', '2017-02-14', '2017-02-08', '2017-02-14', 'Pico roto.', 1, '-', 20, '2685', '0', '0', '1'),
(2849, 4, 1210, 12, '1', '', '2017-02-14', '2017-02-08', '2017-02-14', 'Vino suelta la tapa.', 1, '06/05/2015', 14, '2685', '0', '1', '0'),
(2850, 4, 1932, 5, '1', '', '2017-02-14', '2017-02-08', '2017-02-14', 'Fallo.', 1, '06/2014', 6, '2685', '0', '1', '0'),
(2851, 4, 2756, 12, '1', '', '2017-02-14', '2017-02-08', '2017-02-14', 'Vino pico roto.', 1, '11/2016', 14, '2685', '0', '1', '0'),
(2852, 4, 2011, 3, '1', '', '2017-02-14', '2017-02-08', '2017-02-14', 'Mal la rosca del sensor.', 1, '1544', 4, '2685', '1', '0', '0'),
(2853, 4, 1309, 1, '1', '', '2017-02-14', '2017-02-08', '2017-02-14', 'Fallo.', 1, 'JUN 02 2015', 4, '2685', '1', '0', '0'),
(2854, 58, 1407, 12, '1', '', '2017-02-15', '2017-02-08', '2017-02-15', 'Roto.', 1, 'SEP 02 2016', 17, '2686', '0', '1', '0'),
(2855, 4, 940, 12, '26', '', '2017-02-17', '2017-02-17', '2017-02-17', 'Pedido por error.', 1, '-', 20, '2687', '0', '0', '26'),
(2856, 3, 646, 12, '16', '', '2017-02-17', '2017-02-16', '2017-02-17', 'Filtros OK - Pendientes muy antiguos.', 1, '-', 20, '2688', '0', '0', '16'),
(2857, 3, 688, 12, '8', '', '2017-02-17', '2017-02-16', '2017-02-17', 'Filtros OK - Pendientes muy antiguos.', 1, '-', 20, '2688', '0', '0', '8'),
(2858, 3, 964, 12, '6', '', '2017-02-17', '2017-02-16', '2017-02-17', 'Filtros OK - Pendientes muy antiguos.', 1, '-', 20, '2688', '0', '0', '6'),
(2859, 4, 152, 12, '40', '', '2017-02-17', NULL, '2017-02-17', 'Sin descripcion.', 1, '-', 20, '2689', '0', '0', '40'),
(2860, 6, 2124, 12, '2', '', '2017-02-23', '2017-02-01', '2017-02-23', 'Sin descripcion.', 2, 'L.17918', 14, '2690', '0', '2', '0'),
(2861, 6, 1370, 6, '1', '', '2017-02-23', '2017-02-01', '2017-02-23', 'Sin descripcion.', 1, 'L17117 12 jun 2015', 7, '2690', '0', '1', '0'),
(2862, 6, 1951, 1, '1', '', '2017-02-23', '2017-02-01', '2017-02-23', 'Sin descripcion.', 1, '1512', 4, '2690', '1', '0', '0'),
(2863, 6, 1945, 12, '1', 'Purgador dañado por manipulacion inadecuada.', '2017-02-23', '2017-02-01', '2017-02-23', 'Sin descripcion.', 1, '09/2015 ', 14, '2690', '1', '0', '0'),
(2864, 6, 1945, 1, '1', '', '2017-02-23', '2017-02-01', '2017-02-23', 'Sin descripcion.', 1, '04/2016', 8, '2690', '1', '0', '0'),
(2865, 6, 2011, 12, '1', '', '2017-02-23', '2017-02-01', '2017-02-23', 'Sin descripcion.', 1, '1534', 23, '2690', '0', '1', '0'),
(2866, 6, 1431, 12, '1', 'Presencia parcial de oxido por almacenamiento inadecuado.', '2017-02-23', '2017-02-01', '2017-02-23', 'Sin descripcion.', 1, '-', 20, '2690', '0', '0', '1'),
(2867, 6, 1384, 12, '4', '', '2017-02-23', '2017-02-01', '2017-02-23', 'Sin descripcion.', 1, '16565 Dic 2013', 13, '2690', '0', '4', '0'),
(2868, 6, 1733, 6, '1', '', '2017-02-23', '2017-02-01', '2017-02-23', 'Sin descripcion.', 2, '07 12 i', 7, '2690', '0', '1', '0'),
(2869, 6, 1980, 1, '1', 'Filtro usado.', '2017-02-23', '2017-02-01', '2017-02-23', 'Sin descripcion.', 1, '1110', 8, '2690', '1', '0', '0'),
(2870, 6, 1413, 12, '1', '', '2017-02-23', '2017-02-01', '2017-02-23', 'Sin descripcion.', 1, '01/26/15', 23, '2690', '0', '1', '0'),
(2871, 6, 1724, 1, '1', 'Filtro usado.', '2017-02-23', '2017-02-01', '2017-02-23', 'Sin descripcion.', 2, '05.15 16962', 8, '2690', '1', '0', '0'),
(2872, 6, 1723, 6, '1', '', '2017-02-23', '2017-02-01', '2017-02-23', 'Sin descripcion.', 1, '-', 7, '2690', '0', '1', '0'),
(2873, 6, 2540, 12, '3', '', '2017-02-23', '2017-02-01', '2017-02-23', 'Sin descripcion.', 1, '-', 14, '2690', '0', '3', '0'),
(2874, 6, 1146, 12, '1', '', '2017-02-23', '2017-02-01', '2017-02-23', 'Sin descripcion.', 1, 'L.17918', 14, '2690', '0', '1', '0'),
(2875, 6, 2699, 12, '2', '', '2017-02-23', '2017-02-01', '2017-02-23', 'Sin descripcion.', 2, 'L.11764', 14, '2690', '0', '2', '0'),
(2876, 6, 2700, 12, '6', '', '2017-02-23', '2017-02-01', '2017-02-23', 'Articulo sin codigo.', 2, '-', 14, '2690', '0', '6', '0'),
(2877, 243, 1445, 1, '1', 'Filtro usado.', '2017-02-23', NULL, '2017-02-23', 'Sin descripcion.', 1, '06/16/15', 4, '2691', '1', '0', '0'),
(2878, 5, 492, 12, '1', '', '2017-02-24', NULL, '2017-02-24', 'Sin descripcion.', 2, '05.11.15 L.18300', 14, '2692', '0', '1', '0'),
(2879, 5, 1506, 12, '1', '', '2017-02-24', NULL, '2017-02-24', 'Sin descripcion.', 2, 'L.18028', 20, '2692', '0', '0', '1'),
(2880, 5, 1415, 12, '2', '', '2017-02-24', NULL, '2017-02-24', 'Sin descripcion.', 2, '06/11/15', 18, '2692', '0', '2', '0'),
(2881, 5, 1951, 12, '1', '', '2017-02-24', NULL, '2017-02-24', 'Sin descripcion.', 1, '1534', 17, '2692', '0', '1', '0'),
(2882, 5, 1365, 12, '1', '', '2017-02-24', NULL, '2017-02-24', 'Sin descripcion.', 1, '12/12/14', 14, '2692', '0', '1', '0'),
(2883, 5, 1945, 12, '3', '', '2017-02-24', NULL, '2017-02-24', 'Sin descripcion.', 1, '12/2015', 14, '2692', '0', '3', '0'),
(2884, 5, 2011, 12, '1', '', '2017-02-24', NULL, '2017-02-24', 'Sin descripcion.', 1, '1544', 17, '2692', '0', '1', '0'),
(2885, 5, 1941, 12, '1', '', '2017-02-24', NULL, '2017-02-24', 'Sin descripcion.', 1, '30102015', 23, '2692', '0', '1', '0'),
(2886, 10, 1949, 1, '5', '', '2017-03-01', '2016-09-06', '2017-03-01', 'Fallado.', 1, '30102015', 7, '2693', '0', '5', '0'),
(2887, 10, 1382, 12, '1', '', '2017-03-01', '2016-09-06', '2017-03-01', 'Fallado.', 1, '09/16/13', 17, '2693', '0', '1', '0'),
(2888, 10, 2269, 12, '2', 'Perno de conexion dañado por exceso de torque.', '2017-03-01', '2016-09-06', '2017-03-01', 'Fallado.', 1, 'T35', 14, '2693', '2', '0', '0'),
(2889, 10, 2275, 12, '1', 'Perno de conexion dañado por exceso de torque.', '2017-03-01', '2016-09-06', '2017-03-01', 'Fallado.', 1, 'D61', 14, '2693', '1', '0', '0'),
(2890, 10, 1921, 12, '1', '', '2017-03-01', '2016-09-06', '2017-03-01', 'Fallado.', 1, '11/2013', 17, '2693', '0', '1', '0'),
(2891, 10, 1441, 3, '1', '', '2017-03-01', '2017-02-22', '2017-03-01', 'Fallado.', 1, 'Mar 12 2012', 5, '2694', '0', '1', '0'),
(2892, 10, 1144, 12, '1', '', '2017-03-01', '2017-02-22', '2017-03-01', 'Fallado.', 2, '13.01.12', 14, '2694', '0', '1', '0'),
(2893, 10, 1728, 12, '1', '', '2017-03-01', '2017-02-22', '2017-03-01', 'Fallado.', 1, '06/2015', 23, '2694', '0', '1', '0'),
(2894, 10, 1446, 12, '1', '', '2017-03-01', '2017-02-22', '2017-03-01', 'Fallado.', 1, '01/06/14', 23, '2694', '0', '1', '0'),
(2895, 10, 1945, 12, '1', 'Dañado por manipulacion inadecuada.', '2017-03-01', '2017-02-22', '2017-03-01', 'Fallado.', 1, '09/2015', 14, '2694', '1', '0', '0'),
(2896, 134, 282, 12, '6', '', '2017-03-02', NULL, '2017-03-02', 'Pedido por error.', 1, '-', 20, '2695', '0', '0', '6'),
(2897, 10, 1945, 12, '3', '', '2017-03-02', '2016-09-06', '2017-03-01', 'Fallado.', 1, '05/2014', 14, '2696', '0', '3', '0'),
(2898, 10, 1987, 6, '1', '', '2017-03-02', '2016-09-06', '2017-03-01', 'Fallado.', 1, '1420', 7, '2696', '0', '1', '0'),
(2899, 10, 1724, 6, '1', '', '2017-03-02', '2016-09-06', '2017-03-01', 'Fallado.', 2, '03.08.15 L.18024', 7, '2696', '0', '1', '0'),
(2900, 10, 1729, 12, '1', '', '2017-03-02', '2016-09-06', '2017-03-01', 'Fallado.', 2, '13.04.16 L.18704', 23, '2696', '0', '1', '0'),
(2901, 10, 1982, 6, '1', 'Filtro usado.', '2017-03-02', '2016-09-06', '2017-03-01', 'Fallado.', 1, '1544', 8, '2696', '1', '0', '0'),
(2902, 10, 1972, 6, '1', 'Filtro usado.', '2017-03-02', '2016-09-06', '2017-03-01', 'Fallado.', 1, '1544', 8, '2696', '1', '0', '0'),
(2903, 10, 454, 12, '1', '', '2017-03-02', '2016-09-06', '2017-03-01', 'Fallado.', 2, '16.02.16 L18540', 14, '2696', '0', '1', '0'),
(2904, 10, 1941, 1, '1', 'No calso el sensor.', '2017-03-02', '2016-09-06', '2017-03-01', 'Fallado.', 1, '-', 6, '2696', '0', '1', '0'),
(2905, 10, 1728, 6, '1', '', '2017-03-02', '2016-09-06', '2017-03-01', 'Fallado.', 2, '-', 7, '2696', '0', '1', '0'),
(2906, 10, 2253, 12, '2', 'Falla no atribuible al producto. Info nº 294', '2017-03-02', '2016-09-06', '2017-03-01', 'Fallado.', 1, 'P81', 2, '2696', '2', '0', '0'),
(2907, 10, 2251, 2, '1', '', '2017-03-02', '2016-09-06', '2017-03-01', 'Fallado.', 1, 'B66', 4, '2696', '1', '0', '0'),
(2908, 10, 2269, 12, '1', 'Perno de conexion dañado por exceso de torque.', '2017-03-02', '2016-09-06', '2017-03-01', 'Fallado.', 1, 'A06', 2, '2696', '1', '0', '0'),
(2909, 10, 2286, 12, '1', 'Perno de conexion dañado por exceso de torque. ', '2017-03-02', '2016-09-06', '2017-03-01', 'Fallado.', 1, 'A66', 2, '2696', '1', '0', '0'),
(2910, 10, 2453, 12, '1', '', '2017-03-02', '2016-09-06', '2017-03-01', 'Fallado.', 1, '-', 14, '2696', '0', '1', '0'),
(2911, 9, 1943, 6, '1', '', '2017-03-02', '2017-02-08', '2017-03-01', 'Presenta perdida.', 1, '30/10/2015', 7, '2697', '0', '1', '0'),
(2912, 9, 1945, 12, '1', '', '2017-03-02', '2017-02-08', '2017-03-01', 'Pico roto.', 1, '03/2016', 14, '2697', '0', '1', '0'),
(2913, 9, 2016, 12, '3', '', '2017-03-02', '2017-02-08', '2017-03-01', 'Presentan perdida.', 1, '-', 13, '2697', '0', '3', '0'),
(2914, 9, 1405, 12, '1', 'Filtro usado, dañado por manipulación en la extracción.', '2017-03-02', '2017-02-08', '2017-03-01', 'Una vez puesto en marcha el vehiculo, se revento.', 1, 'OCT 18 2016', 4, '2697', '1', '0', '0'),
(2915, 9, 1405, 12, '1', '', '2017-03-02', '2017-02-08', '2017-03-01', 'Una vez puesto en marcha el vehiculo, se revento.', 1, '01/13/14', 5, '2697', '0', '1', '0'),
(2916, 9, 1431, 12, '1', '', '2017-03-02', '2017-02-08', '2017-03-01', 'Incompleto.', 1, '-', 16, '2697', '0', '1', '0'),
(2917, 9, 775, 12, '4', '', '2017-03-02', '2017-02-08', '2017-03-01', 'Llegaron golpeados.', 1, '19020', 14, '2697', '0', '4', '0'),
(2918, 9, 1370, 6, '1', '', '2017-03-02', '2017-02-08', '2017-03-01', 'Pierde por la junta de base.', 1, '09/04/15', 8, '2697', '1', '0', '0'),
(2919, 105, 1431, 3, '1', 'Filtro presenta presencia de aceite entre sello y brida.', '2017-03-13', NULL, '2017-03-10', 'No rosca', 1, '01/07/16', 4, '2698', '1', '0', '0'),
(2920, 46, 1729, 12, '1', '', '2017-03-14', '2017-03-01', '2017-03-03', 'Roto en el interior', 2, '01.10.14', 23, '2699', '0', '1', '0'),
(2921, 46, 1224, 12, '1', '', '2017-03-14', '2017-03-01', '2017-03-03', 'Mal identificado.', 1, '-', 21, '2699', '0', '1', '0'),
(2922, 46, 1445, 6, '1', 'Filtro usado.', '2017-03-14', '2017-03-01', '2017-03-03', 'Pierde.', 1, '-', 8, '2699', '1', '0', '0'),
(2923, 55, 1983, 3, '1', '', '2017-03-22', '2017-02-17', '2017-03-02', 'Rosca.', 1, '1518', 4, '2700', '0', '0', '1'),
(2924, 55, 2587, 12, '1', '', '2017-03-22', '2017-02-17', '2017-03-02', 'Quemada.', 1, 'h890', 14, '2700', '0', '0', '1'),
(2925, 55, 2271, 12, '1', 'Perno de conexion dañado por exceso de torque.', '2017-03-22', '2017-02-17', '2017-03-02', 'No calienta.', 1, 'A22', 14, '2700', '1', '0', '0'),
(2926, 55, 2269, 12, '1', 'Perno de conexion dañado por exceso de torque.', '2017-03-22', '2017-02-17', '2017-03-02', 'No calienta.', 1, 'T35', 14, '2700', '1', '0', '0'),
(2927, 55, 1166, 12, '1', '', '2017-03-22', '2017-02-17', '2017-03-02', 'Aplastado.', 2, 'L17073 11.09.14', 14, '2700', '0', '1', '0'),
(2928, 55, 1467, 1, '2', 'Falla no atribuible al producto. Info Nº299', '2017-03-22', '2017-02-17', '2017-03-02', 'Reventaron', 1, '29/06/2010', 14, '2700', '2', '0', '0'),
(2929, 55, 2176, 2, '4', 'Bujias usadas.', '2017-03-22', '2017-02-17', '2017-03-02', 'En corto.', 1, '-', 4, '2700', '4', '0', '0'),
(2933, 4, 352, 12, '10', '', '2017-03-22', '2017-03-08', '2017-03-22', 'Pedido por error.', 1, '-', 20, '2701', '0', '0', '10'),
(2934, 4, 754, 12, '1', '', '2017-03-22', '2017-03-16', '2017-03-22', 'Devolucion comercial.', 1, '-', 20, '2702', '0', '0', '1'),
(2935, 4, 735, 12, '3', '', '2017-03-22', '2017-03-16', '2017-03-22', 'Devolucion comercial.', 1, '-', 20, '2702', '0', '0', '3'),
(2936, 4, 759, 12, '3', '', '2017-03-22', '2017-03-16', '2017-03-22', 'Devolucion comercial.', 1, '-', 20, '2702', '0', '0', '3'),
(2937, 4, 762, 12, '5', '', '2017-03-22', '2017-03-16', '2017-03-22', 'Devolucion comercial.', 1, '-', 20, '2702', '0', '0', '5'),
(2938, 4, 783, 12, '3', '', '2017-03-22', '2017-03-16', '2017-03-22', 'Devolucion comercial.', 1, '-', 20, '2702', '0', '0', '3'),
(2939, 4, 784, 12, '3', '', '2017-03-22', '2017-03-16', '2017-03-22', 'Devolucion comercial.', 1, '-', 20, '2702', '0', '0', '3'),
(2940, 4, 811, 12, '6', '', '2017-03-22', '2017-03-16', '2017-03-22', 'Devolucion comercial.', 1, '-', 20, '2702', '0', '0', '6'),
(2941, 4, 838, 12, '5', '', '2017-03-22', '2017-03-16', '2017-03-22', 'Devolucion comercial.', 1, '-', 20, '2702', '0', '0', '5'),
(2942, 4, 721, 12, '3', '', '2017-03-22', '2017-03-16', '2017-03-22', 'Devolucion comercial.', 1, '-', 20, '2702', '0', '0', '3'),
(2943, 28, 1729, 12, '1', '', '2017-03-22', '2017-03-01', '2017-03-22', 'Sin descripcion.', 2, '-', 14, '2703', '0', '1', '0'),
(2944, 4, 1981, 6, '1', 'Filtro usado.', '2017-03-22', '2017-02-24', '2017-03-22', 'Fallo por los picos.', 1, '1544', 8, '2704', '1', '0', '0'),
(2945, 4, 1941, 12, '1', '', '2017-03-22', '2017-02-24', '2017-03-22', 'Pico inferior rajado.', 1, '15112013', 14, '2704', '0', '1', '0'),
(2946, 4, 2011, 12, '1', '', '2017-03-22', '2017-02-24', '2017-03-22', 'Falla el sensor.', 1, '1544', 20, '2704', '0', '0', '1'),
(2947, 4, 1943, 12, '1', '', '2017-03-22', '2017-02-24', '2017-03-22', 'Falla el sensor', 1, '20062013', 13, '2704', '0', '1', '0'),
(2948, 4, 2445, 12, '10', '', '2017-03-22', '2017-02-24', '2017-03-22', 'Vinieron rotas.', 1, '-', 14, '2704', '0', '10', '0'),
(2949, 4, 1258, 12, '1', '', '2017-03-22', '2017-02-24', '2017-03-22', 'Falta junta.', 2, 'L.12696', 21, '2704', '0', '1', '0'),
(2950, 11, 2016, 5, '1', '', '2017-03-23', '2017-03-21', '2017-03-22', 'Fallado.', 1, '-', 6, '2705', '0', '1', '0'),
(2951, 11, 1723, 6, '1', '', '2017-03-23', '2017-03-21', '2017-03-22', 'Fallado.', 2, '-', 7, '2705', '0', '1', '0'),
(2952, 11, 1969, 1, '1', '', '2017-03-23', '2017-03-21', '2017-03-22', 'Fallado.', 1, '01/13/16', 14, '2705', '0', '1', '0'),
(2953, 11, 1920, 1, '1', 'Filtro incompleto.', '2017-03-23', '2017-03-21', '2017-03-22', 'Fallado.', 1, '01042016', 4, '2705', '0', '0', '1'),
(2954, 11, 1941, 6, '1', 'Filtro usado.', '2017-03-23', '2017-03-21', '2017-03-22', 'Fallado.', 1, '09062015', 8, '2705', '1', '0', '0'),
(2955, 11, 1945, 12, '1', 'Pico dañado por golpe o manipulación inadecuada', '2017-03-23', '2017-03-21', '2017-03-22', 'Fallado.', 1, '04/2015', 14, '2705', '1', '0', '0'),
(2956, 11, 443, 5, '1', '', '2017-03-23', '2017-03-21', '2017-03-22', 'Medida diferente.', 2, 'L.16006 13.09.13', 21, '2705', '0', '1', '0'),
(2957, 11, 1941, 6, '1', 'El informe detalla FCD-0910. Pero es FCD-0913', '2017-03-23', '2017-03-21', '2017-03-22', 'Fallado.', 1, '30102015', 8, '2705', '1', '0', '0'),
(2958, 11, 2101, 1, '1', 'Estuche dañado.', '2017-03-23', '2017-03-21', '2017-03-22', 'Fallado.', 1, '-', 4, '2705', '0', '0', '1'),
(2959, 28, 2414, 12, '2', 'Filamento dañado por efecto fusible.', '2017-03-23', '2017-03-03', '2017-03-23', 'Garantia.', 1, '-', 14, '2706', '2', '0', '0'),
(2960, 244, 1945, 12, '198', '', '2017-03-23', NULL, '2017-03-23', 'Sin descripcion.', 1, '-', 20, '2707', '0', '0', '198'),
(2961, 59, 2397, 12, '4', '', '2017-03-29', '2017-03-13', '2017-03-28', 'Sin descripcion.', 1, '14D-18', 23, '2708', '0', '4', '0'),
(2962, 59, 2390, 12, '2', '', '2017-03-29', '2017-03-13', '2017-03-28', 'Sin descripcion.', 1, '15E18', 14, '2708', '0', '2', '0'),
(2963, 59, 2390, 4, '2', '', '2017-03-29', '2017-03-13', '2017-03-28', 'Sin descripcion.', 1, '-', 4, '2708', '0', '0', '2'),
(2964, 59, 2540, 12, '2', '', '2017-03-29', '2017-03-13', '2017-03-28', 'Sin descripcion.', 1, '-', 23, '2708', '0', '2', '0'),
(2965, 59, 2555, 4, '7', '', '2017-03-29', '2017-03-13', '2017-03-28', 'Sin descripcion.', 1, '-', 4, '2708', '0', '0', '7'),
(2966, 59, 2591, 11, '1', '', '2017-03-29', '2017-03-13', '2017-03-28', 'Sin descripcion.', 1, '-', 4, '2708', '1', '0', '0'),
(2967, 4, 859, 12, '6', '', '2017-04-04', '2017-03-27', '2017-04-04', 'Pedido por error.', 1, '-', 20, '2709', '0', '0', '6'),
(2968, 4, 2757, 12, '7', '', '2017-04-04', '2017-03-27', '2017-04-04', 'Pedido por error.', 1, '-', 20, '2709', '0', '0', '7'),
(2969, 28, 2591, 12, '1', '', '2017-04-04', NULL, '2017-04-04', 'Falta terminal.', 1, '-', 20, '2710', '0', '0', '1'),
(2970, 184, 1602, 12, '17', '', '2017-04-04', NULL, '2017-04-04', 'Garantia', 2, '-', 20, '2711', '0', '0', '17'),
(2971, 77, 2122, 12, '1000', '', '2017-04-04', NULL, '2017-04-04', 'Devolucion.', 1, '-', 20, '2712', '0', '0', '1000'),
(2972, 142, 1004, 12, '164', '', '2017-04-04', '2017-03-31', '2017-04-04', 'Devolucion.', 1, '-', 13, '2713', '0', '0', '164'),
(2973, 233, 1941, 6, '1', 'Filtro usado.', '2017-04-05', '2017-03-07', '2017-04-05', 'Fallo.', 1, '30/10/2015', 8, '2714', '1', '0', '0'),
(2974, 233, 783, 12, '2', '', '2017-04-05', '2017-03-07', '2017-04-05', 'No pedido.', 1, '-', 20, '2714', '0', '0', '2'),
(2975, 233, 2758, 12, '1', '', '2017-04-05', '2017-03-07', '2017-04-05', 'Mal pedido.', 1, '-', 20, '2714', '0', '0', '1'),
(2976, 233, 1061, 12, '2', '', '2017-04-05', '2017-03-07', '2017-04-05', 'Mal pedido.', 1, '-', 20, '2714', '0', '0', '2'),
(2977, 233, 840, 12, '1', '', '2017-04-05', '2017-03-07', '2017-04-05', 'Dañado.', 1, '10/09/2015', 14, '2714', '0', '1', '0'),
(2978, 245, 1152, 1, '4', '', '2017-04-05', NULL, '2017-04-05', 'Ilegible.', 1, '11/07/2016', 4, '2715', '0', '0', '4'),
(2979, 14, 1251, 1, '1', 'Filtro usado.', '2017-04-06', '2017-03-22', '2017-04-06', 'Sin descripcion.', 1, '-', 4, '2716', '1', '0', '0'),
(2980, 14, 1941, 1, '1', '', '2017-04-06', '2017-03-22', '2017-04-06', 'Sin descripcion.', 1, '-', 12, '2716', '0', '1', '0'),
(2981, 14, 1099, 12, '1', '', '2017-04-06', '2017-03-22', '2017-04-06', 'Sin descripcion.', 1, '-', 14, '2716', '0', '1', '0'),
(2982, 14, 1811, 1, '1', 'Ver Informe Nº0299', '2017-04-06', '2017-03-22', '2017-04-06', 'Sin descripcion.', 1, '-', 4, '2716', '1', '0', '0'),
(2983, 4, 2016, 6, '1', '', '2017-04-12', '2017-03-30', '2017-04-10', 'No arranca. Chupa aire.', 1, '-', 7, '2717', '0', '1', '0'),
(2984, 4, 2016, 5, '1', '', '2017-04-12', '2017-03-30', '2017-04-10', 'No arranca. Chupa aire.', 1, '-', 6, '2717', '0', '1', '0'),
(2985, 4, 2222, 2, '4', 'Bulbo de incandescencia inflamado por exceso de tiempo de suministro electrico.', '2017-04-12', '2017-03-30', '2017-04-10', 'Fallaron.', 1, '-', 2, '2717', '4', '0', '0'),
(2986, 4, 76, 5, '1', '', '2017-04-12', '2017-03-30', '2017-04-10', 'Fuera de madida.', 1, '-', 6, '2717', '0', '1', '0'),
(2987, 4, 1921, 12, '1', 'Filtro usado. Sello no presenta falla.', '2017-04-12', '2017-03-30', '2017-04-10', 'Fallo por el O´ring.', 1, '-', 4, '2717', '1', '0', '0'),
(2988, 4, 1943, 12, '1', '', '2017-04-12', '2017-03-30', '2017-04-10', 'No se rompe la seguridad del filtro.', 1, '15012015', 13, '2717', '0', '1', '0'),
(2989, 4, 1723, 6, '1', '', '2017-04-12', '2017-03-30', '2017-04-10', 'Fallan por la union', 2, 'L.18848', 7, '2717', '0', '1', '0'),
(2990, 4, 2555, 4, '1', '', '2017-04-12', '2017-03-30', '2017-04-10', 'No prende.', 1, '2b8', 20, '2717', '0', '0', '1'),
(2991, 4, 1407, 1, '1', '', '2017-04-12', '2017-03-30', '2017-04-10', 'Fallado.', 1, 'SEP 02 2016', 4, '2717', '1', '0', '0'),
(2992, 4, 2540, 12, '1', '', '2017-04-12', '2017-03-30', '2017-04-10', 'Fallada.', 1, '-', 17, '2717', '0', '1', '0'),
(2993, 4, 1888, 12, '1', 'Purgador dañado por golpe o manipulacion inadecuada.', '2017-04-12', '2017-03-30', '2017-04-10', 'Tapita vino rota.', 1, '-', 14, '2717', '0', '0', '1'),
(2994, 4, 2445, 12, '10', '', '2017-04-12', '2017-03-30', '2017-04-10', 'Vinieron rotas.', 1, '-', 14, '2717', '0', '10', '0'),
(2995, 4, 1723, 6, '1', '', '2017-04-12', '2017-03-30', '2017-04-10', 'Fallan por la union.', 1, '-', 7, '2717', '0', '1', '0'),
(2996, 232, 502, 12, '6', '', '2017-04-17', NULL, '2017-04-12', 'Devolucion.', 1, '-', 20, '2718', '0', '0', '6'),
(2997, 232, 230, 12, '10', '', '2017-04-17', NULL, '2017-04-12', 'Devolucion.', 1, '-', 20, '2718', '0', '0', '10'),
(2998, 232, 1107, 12, '2', '', '2017-04-17', NULL, '2017-04-12', 'Devolucion.', 1, '--', 20, '2718', '0', '0', '2'),
(2999, 10, 2096, 12, '10', '', '2017-04-17', '2016-09-06', '2017-04-13', 'Es Japanparts.', 1, '-', 20, '2719', '0', '0', '10'),
(3000, 10, 2155, 12, '108', '', '2017-04-17', '2016-09-06', '2017-04-13', 'Codigo erroneo.', 1, '-', 20, '2719', '0', '0', '108'),
(3001, 28, 1417, 12, '6', 'Estuches deteriorados.', '2017-04-17', '2017-04-10', '2017-04-13', 'Devolucion.', 1, 'Aug 04 2014', 20, '2720', '0', '0', '6'),
(3002, 28, 1972, 12, '2', '', '2017-04-17', '2017-04-10', '2017-04-13', 'Picos torcidos y base abollada.', 1, '1455', 14, '2721', '0', '2', '0'),
(3003, 28, 1729, 6, '1', '', '2017-04-17', '2017-04-10', '2017-04-13', 'Fallo.', 1, '15012013', 7, '2721', '0', '1', '0'),
(3004, 4, 2759, 12, '114', '', '2017-04-17', '2017-03-29', '2017-04-13', 'Devolucion', 1, '7A19', 20, '2722', '0', '0', '114'),
(3005, 245, 577, 12, '7', '', '2017-04-17', NULL, '2017-04-13', 'Devolucion.', 2, '-', 20, '2723', '0', '0', '7'),
(3006, 28, 2304, 12, '1', 'Perno de conexion dañado por exceso de torque.', '2017-04-17', '2017-03-27', '2017-04-13', 'Rota', 1, '-', 2, '2724', '1', '0', '0'),
(3007, 8, 1506, 12, '3', '', '2017-04-17', '2017-04-07', '2017-04-13', 'Falta O´ring', 1, '10/2016', 16, '2725', '0', '3', '0'),
(3008, 8, 634, 1, '1', 'Filtro usado.', '2017-04-17', '2017-04-07', '2017-04-13', 'Le da error en la computadora, usaron otro y funciono', 1, '18/12/2015', 4, '2725', '1', '0', '0'),
(3009, 8, 1729, 6, '1', '', '2017-04-17', '2017-04-07', '2017-04-13', 'Pierde', 1, '15012013', 7, '2725', '0', '1', '0'),
(3010, 8, 1284, 12, '1', '', '2017-04-17', '2017-04-07', '2017-04-13', 'Mal marcado', 1, '11/10/12', 13, '2725', '0', '1', '0'),
(3011, 8, 1990, 6, '1', '', '2017-04-17', '2017-04-07', '2017-04-13', 'Pierde por el pico', 1, '1514', 7, '2725', '0', '1', '0'),
(3012, 8, 1980, 1, '1', 'Filtro usado. Rosca plastica de purgador dañada, por manipulacion inadecuada', '2017-04-17', '2017-04-07', '2017-04-13', 'Fallo', 1, '1512', 5, '2725', '1', '0', '0'),
(3013, 8, 1723, 6, '1', '', '2017-04-17', '2017-04-07', '2017-04-13', 'Pierde', 2, '11/2016', 7, '2725', '0', '1', '0'),
(3014, 8, 1506, 12, '1', 'Desprendimiento de tapa inferior', '2017-04-17', '2017-04-07', '2017-04-13', 'Fallo', 2, '-', 14, '2725', '0', '1', '0'),
(3015, 8, 1285, 12, '1', 'Filtro usado. Sello dañado por torque inadecuado.', '2017-04-17', '2017-04-07', '2017-04-13', 'Mal marcado', 1, '-', 10, '2725', '1', '0', '0'),
(3016, 8, 2555, 4, '1', 'Una lampara no es Wega. Filamento cortado por golpe o manipulacion inadecuada.', '2017-04-17', '2017-04-07', '2017-04-13', 'Fallo', 1, '-', 14, '2725', '1', '0', '0'),
(3017, 8, 2398, 4, '1', '', '2017-04-17', '2017-04-07', '2017-04-13', 'Fallo', 1, '-', 22, '2725', '0', '1', '0'),
(3018, 8, 1998, 12, '2', '', '2017-04-17', '2017-04-07', '2017-04-13', 'Se equivoco de codigo.', 1, '-', 20, '2725', '0', '0', '2'),
(3019, 8, 678, 12, '1', '', '2017-04-17', '2017-04-07', '2017-04-13', 'Se equivoco de codigo.', 1, '-', 20, '2725', '0', '0', '1'),
(3020, 8, 1969, 12, '3', '', '2017-04-17', '2017-04-07', '2017-04-13', 'Sin O´ring', 1, '-', 16, '2725', '0', '3', '0'),
(3021, 4, 907, 12, '4', '', '2017-04-20', '2017-04-12', '2017-04-20', 'Devolucion.', 1, '-', 20, '2726', '0', '0', '4'),
(3022, 4, 870, 12, '7', '', '2017-04-20', '2017-04-12', '2017-04-20', 'Devolucion.', 1, '-', 20, '2726', '0', '0', '7'),
(3023, 4, 916, 12, '4', '', '2017-04-20', '2017-04-12', '2017-04-20', 'Devolucion.', 1, '-', 20, '2726', '0', '0', '4'),
(3024, 4, 906, 12, '12', '', '2017-04-20', '2017-04-12', '2017-04-20', 'Devolucion.', 1, '-', 20, '2726', '0', '0', '12'),
(3025, 4, 778, 12, '6', '', '2017-04-20', '2017-04-12', '2017-04-20', 'Devolucion.', 1, '-', 20, '2726', '0', '0', '6'),
(3026, 20, 1723, 6, '2', '', '2017-04-21', '2017-04-18', '2017-04-20', 'Pierde por el sellado.', 2, 'L.18846', 7, '2727', '0', '2', '0'),
(3027, 20, 1387, 3, '2', 'Se verifica con calibre P/ NP', '2017-04-21', '2017-04-18', '2017-04-20', 'Rosca fallada.', 1, '01/05/16', 4, '2727', '2', '0', '0'),
(3028, 20, 940, 12, '1', '', '2017-04-21', '2017-04-18', '2017-04-20', 'Abollado.', 1, '23/06/2015', 14, '2727', '0', '1', '0'),
(3029, 20, 2756, 12, '1', '', '2017-04-21', '2017-04-18', '2017-04-20', 'Traba rota.', 1, '10/2016', 14, '2727', '0', '1', '0'),
(3030, 20, 2756, 12, '1', 'Pico dañado por golpe.', '2017-04-21', '2017-04-18', '2017-04-20', 'Pico roto.', 1, '10/2016', 14, '2727', '1', '0', '0'),
(3031, 20, 1379, 6, '1', 'Filtro usado.', '2017-04-21', '2017-04-18', '2017-04-20', 'Pierde por la junta.', 1, '-', 8, '2727', '1', '0', '0'),
(3032, 244, 1945, 12, '102', '', '2017-04-25', NULL, '2017-03-23', 'Sin descripcion.', 1, '-', 20, '2728', '0', '0', '102'),
(3033, 21, 1240, 12, '14', 'Estuches no aptos para la venta', '2017-04-25', NULL, '2017-04-21', '1 cm mas corto.', 1, '-', 20, '2729', '0', '0', '14'),
(3034, 21, 1622, 12, '6', 'Estuches no aptos para la venta', '2017-04-25', NULL, '2017-04-21', 'Mas corto y se chupa.', 2, '16223', 20, '2729', '0', '0', '6'),
(3035, 21, 1103, 12, '1', 'Dañado por manipulacion inadecuada.', '2017-04-25', NULL, '2017-04-21', 'Aplastado en origen.', 2, 'L. 18843', 14, '2729', '1', '0', '0'),
(3036, 21, 1473, 12, '2', 'Dañado por manipulacion inadecuada.', '2017-04-25', NULL, '2017-04-21', 'Aplastado en origen.', 2, '25052013', 14, '2729', '2', '0', '0'),
(3037, 21, 2017, 6, '1', '', '2017-04-25', NULL, '2017-04-21', 'Chupa aire.', 1, '05/17/16', 8, '2729', '1', '0', '0'),
(3038, 21, 1729, 12, '5', '', '2017-04-25', NULL, '2017-04-21', 'Roto en interior.', 1, '12/2015', 23, '2729', '0', '5', '0'),
(3039, 21, 1591, 5, '1', '', '2017-04-25', NULL, '2017-04-21', 'No coincide medidas con el original', 2, '-', 6, '2729', '0', '1', '0'),
(3040, 21, 1968, 6, '1', '', '2017-04-25', NULL, '2017-04-21', 'Chupa aire.', 1, '1620', 8, '2729', '1', '0', '0'),
(3041, 21, 1972, 12, '1', '', '2017-04-25', NULL, '2017-04-21', 'Roto en el interior', 1, '1512', 23, '2729', '0', '1', '0'),
(3042, 21, 1969, 6, '2', 'Filtro usado', '2017-04-25', NULL, '2017-04-21', 'Pierde por valvula', 1, '-', 8, '2729', '2', '0', '0');
INSERT INTO `reclamos` (`id_reclamo`, `id_cliente`, `id_producto`, `id`, `cantidad_total`, `observacion`, `fecha`, `fecha_emision`, `fecha_recepcion`, `motivo`, `id_origen`, `lote`, `id_resultado`, `nro_reclamo`, `cant_infundados`, `cant_fundados`, `cant_tema_comercial`) VALUES
(3043, 21, 1941, 6, '4', '', '2017-04-25', NULL, '2017-04-21', 'Chupa aire.', 1, '30102015', 8, '2729', '4', '0', '0'),
(3044, 21, 1413, 12, '1', 'Dañado por manipulacion inadecuada.', '2017-04-25', NULL, '2017-04-21', 'Aplastado en origen.', 1, '-', 14, '2729', '1', '0', '0'),
(3045, 21, 2745, 4, '1', '', '2017-04-25', NULL, '2017-04-21', 'No funciona.', 1, '-', 4, '2729', '1', '0', '0'),
(3046, 21, 1413, 3, '1', 'Se verifico con calibre P/ NP', '2017-04-25', NULL, '2017-04-21', 'Rosca en mal estado', 1, '-', 4, '2729', '1', '0', '0'),
(3047, 21, 1382, 6, '1', 'Filtro usado', '2017-04-25', NULL, '2017-04-21', 'Pierde por engrafado', 1, '06/11/15', 8, '2729', '1', '0', '0'),
(3048, 21, 1987, 12, '1', '', '2017-04-25', NULL, '2017-04-21', 'Resto de soldadura en la base del retorno.', 1, '1514', 17, '2729', '0', '1', '0'),
(3049, 21, 1951, 12, '1', '', '2017-04-25', NULL, '2017-04-21', 'Deformado', 1, '-', 19, '2729', '1', '0', '0'),
(3050, 21, 1987, 6, '2', '', '2017-04-25', NULL, '2017-04-21', 'Se descarga', 1, '1514', 8, '2729', '2', '0', '0'),
(3051, 21, 1387, 6, '2', 'Filtro usado.', '2017-04-25', NULL, '2017-04-21', 'Pierde por engrafado.', 1, '01/08/16', 8, '2729', '2', '0', '0'),
(3052, 21, 2016, 5, '1', '', '2017-04-25', NULL, '2017-04-21', 'Chupa aire', 1, '-', 6, '2729', '0', '1', '0'),
(3053, 21, 2269, 12, '3', 'Perno de conexion dañado por exceso de torque', '2017-04-25', NULL, '2017-04-21', 'Se despego la mitad', 1, '-', 14, '2729', '3', '0', '0'),
(3054, 21, 1602, 12, '1', '', '2017-04-25', NULL, '2017-04-21', 'Se chupa', 2, '02.08.11', 20, '2729', '0', '0', '1'),
(3055, 21, 1334, 12, '1', '', '2017-04-25', NULL, '2017-04-21', 'Pierde por engrafado', 1, '01/10/14', 5, '2729', '0', '1', '0'),
(3056, 21, 1723, 6, '2', '', '2017-04-25', NULL, '2017-04-21', 'Pierde por engrafado', 2, '23.02.15', 7, '2729', '0', '2', '0'),
(3057, 21, 1990, 6, '1', 'Filtro usado.', '2017-04-25', NULL, '2017-04-21', 'Chupa aire', 1, '1326', 8, '2729', '1', '0', '0'),
(3058, 21, 1379, 6, '1', '', '2017-04-25', NULL, '2017-04-21', 'Pierde por engrafado', 1, '04/24/15', 8, '2729', '1', '0', '0'),
(3059, 21, 1599, 5, '3', '', '2017-04-25', NULL, '2017-04-21', 'Agujero inetrno mas grande', 1, '03/2016', 19, '2729', '0', '0', '3'),
(3060, 21, 1982, 12, '1', '', '2017-04-25', NULL, '2017-04-21', 'Caño fisurado.', 1, '1512', 14, '2729', '0', '1', '0'),
(3061, 21, 1283, 12, '1', '', '2017-04-25', NULL, '2017-04-21', 'Golpeado en origen.', 1, '-', 14, '2729', '0', '1', '0'),
(3062, 21, 1959, 6, '5', '', '2017-04-25', NULL, '2017-04-21', 'Pierde por engrafado', 2, '-', 7, '2729', '0', '5', '0'),
(3063, 21, 1972, 6, '1', '', '2017-04-25', NULL, '2017-04-21', 'Chupa aire', 1, '1512', 8, '2729', '1', '0', '0'),
(3064, 21, 2271, 3, '1', 'Bujia usada', '2017-04-25', NULL, '2017-04-21', 'Fallo rosca', 1, '-', 4, '2729', '1', '0', '0'),
(3066, 21, 1383, 6, '1', '', '2017-04-25', NULL, '2017-04-21', 'Pierde por engrafado', 1, 'may 25 2015', 8, '2729', '1', '0', '0'),
(3067, 21, 1411, 12, '1', 'Dañado por manipulacion inadecuada', '2017-04-25', NULL, '2017-04-21', 'Golpeado en origen', 1, '11/11/15', 14, '2729', '1', '0', '0'),
(3068, 21, 1421, 3, '1', '', '2017-04-25', NULL, '2017-04-21', 'Rosca mal', 1, '10/04/14', 5, '2729', '0', '1', '0'),
(3069, 21, 1384, 12, '1', '', '2017-04-25', NULL, '2017-04-21', 'Pierde por engrafado', 2, 'lt. 16565', 13, '2729', '0', '1', '0'),
(3070, 21, 1146, 12, '1', 'Dañado por manipulacion inadecuada.', '2017-04-25', NULL, '2017-04-21', 'Golpeado en origen', 2, 'l.18051', 14, '2729', '1', '0', '0'),
(3071, 21, 2397, 4, '2', '1U. con color inadecuado en el cuarzo. 1u.guia de casquillo deformada por mala manipulación.', '2017-04-25', NULL, '2017-04-21', 'Una unidad tiene luz amarilla.', 1, '-', 3, '2729', '1', '1', '0'),
(3072, 21, 1146, 12, '1', 'Ensayo en carcasa OEM. No se verifica falla. Presencia parcial de oxido.', '2017-04-25', NULL, '2017-04-21', 'Se chupo', 2, '-', 2, '2729', '1', '0', '0'),
(3073, 21, 1146, 12, '1', '', '2017-04-25', NULL, '2017-04-21', 'Base fragil', 2, '-', 14, '2729', '0', '1', '0'),
(3077, 21, 1413, 12, '1', 'Dañado por manipilacion inadecuada', '2017-04-25', NULL, '2017-04-21', 'Golpeado en origen', 1, '-', 14, '2729', '1', '0', '0'),
(3078, 21, 1424, 6, '1', '', '2017-04-25', NULL, '2017-04-21', 'Pierde por engrafado', 1, '10/30/14', 8, '2729', '1', '0', '0'),
(3079, 21, 1983, 6, '1', '', '2017-04-25', NULL, '2017-04-21', 'Chupa aire', 1, '1304', 8, '2729', '1', '0', '0'),
(3080, 21, 1996, 6, '1', '', '2017-04-25', NULL, '2017-04-21', 'Chupa aire', 1, '1032', 8, '2729', '1', '0', '0'),
(3081, 21, 1946, 5, '1', '', '2017-04-25', NULL, '2017-04-21', 'No entra es mas alto', 2, '05012012', 6, '2729', '0', '1', '0'),
(3082, 21, 1638, 12, '1', '', '2017-04-25', NULL, '2017-04-21', 'Roto en interior', 2, '-', 23, '2729', '0', '1', '0'),
(3083, 21, 1166, 12, '1', '', '2017-04-25', NULL, '2017-04-21', 'Se despego tapa', 2, '12.06.14', 2, '2729', '1', '0', '0'),
(3085, 28, 1972, 12, '1', '', '2017-05-04', '2017-04-24', '2017-05-04', 'Base torcida.', 1, '1544', 14, '2730', '0', '1', '0'),
(3086, 114, 2107, 12, '2', '', '2017-05-04', NULL, '2017-05-05', 'Sin descripcion.', 1, '1641', 20, '2731', '0', '0', '2'),
(3087, 5, 2011, 1, '1', 'Resorte desplazado.', '2017-05-04', '2017-04-24', '2017-05-04', 'Fallado.', 1, '1544', 17, '2732', '0', '1', '0'),
(3088, 5, 2071, 1, '1', 'Filtro sin uso.', '2017-05-04', '2017-04-24', '2017-05-04', 'Fallado.', 1, '11062015', 4, '2732', '1', '0', '0'),
(3089, 5, 2019, 6, '1', 'Válvula dañada. Se reemplaza la válvula y no pierde.', '2017-05-04', '2017-04-24', '2017-05-04', 'Pierde.', 1, '-', 8, '2732', '1', '0', '0'),
(3090, 5, 1925, 12, '1', 'Producto no es WEGA.', '2017-05-04', '2017-04-24', '2017-05-04', 'Elemento suelto.', 1, '-', 2, '2732', '1', '0', '0'),
(3091, 5, 1415, 3, '1', 'Verficacion con calibre P/NP. Faltante de sello.', '2017-05-04', '2017-04-24', '2017-05-04', 'Falla rosca.', 1, '-', 4, '2732', '1', '0', '0'),
(3092, 4, 870, 12, '6', '', '2017-05-04', NULL, '2017-05-04', 'Sin descripcion.', 1, '-', 20, '2733', '0', '0', '6'),
(3093, 4, 906, 12, '12', '', '2017-05-04', NULL, '2017-05-04', 'Sin descripcion.', 1, '-', 20, '2733', '0', '0', '12'),
(3094, 4, 916, 12, '4', '', '2017-05-04', NULL, '2017-05-04', 'Sin descripcion.', 1, '-', 20, '2733', '0', '0', '4'),
(3095, 4, 907, 12, '4', '', '2017-05-04', NULL, '2017-05-04', 'Sin descripcion.', 1, '-', 20, '2733', '0', '0', '4'),
(3096, 4, 1506, 12, '3', '', '2017-05-04', NULL, '2017-05-04', 'Sin descripcion.', 1, '-', 20, '2733', '0', '0', '3'),
(3097, 4, 1728, 12, '2', '', '2017-05-04', NULL, '2017-05-04', 'Sin descripcion.', 2, '-', 20, '2733', '0', '0', '2'),
(3098, 4, 1813, 12, '3', '', '2017-05-04', '2017-05-02', '2017-05-04', 'Devolucion comercial.', 1, '-', 20, '2734', '0', '0', '3'),
(3099, 4, 1873, 12, '3', '', '2017-05-04', '2017-05-02', '2017-05-04', 'Devolucion comercial.', 1, '-', 20, '2734', '0', '0', '3'),
(3100, 4, 1862, 12, '2', '', '2017-05-04', '2017-05-02', '2017-05-04', 'Devolucion comercial.', 1, '-', 20, '2734', '0', '0', '2'),
(3101, 4, 1863, 12, '2', '', '2017-05-04', '2017-05-02', '2017-05-04', 'Devolucion comercial.', 1, '-', 20, '2734', '0', '0', '2'),
(3102, 4, 1861, 12, '4', '', '2017-05-04', '2017-05-02', '2017-05-04', 'Devolucion comercial.', 1, '-', 20, '2734', '0', '0', '4'),
(3103, 4, 1857, 12, '2', '', '2017-05-04', '2017-05-02', '2017-05-04', 'Devolucion comercial.', 1, '-', 20, '2734', '0', '0', '2'),
(3104, 4, 2760, 12, '2', '', '2017-05-04', '2017-05-02', '2017-05-04', 'Devolucion comercial.', 1, '-', 20, '2734', '0', '0', '2'),
(3105, 4, 1869, 12, '2', '', '2017-05-04', '2017-05-02', '2017-05-04', 'Devolucion comercial.', 1, '-', 20, '2734', '0', '0', '2'),
(3106, 4, 1864, 12, '2', '', '2017-05-04', '2017-05-02', '2017-05-04', 'Devolucion comercial.', 1, '-', 20, '2734', '0', '0', '2'),
(3107, 4, 1876, 12, '2', '', '2017-05-04', '2017-05-02', '2017-05-04', 'Devolucion comercial.', 1, '-', 20, '2734', '0', '0', '2'),
(3108, 4, 1868, 12, '1', '', '2017-05-04', '2017-05-02', '2017-05-04', 'Devolucion comercial.', 1, '-', 20, '2734', '0', '0', '1'),
(3109, 4, 1866, 12, '1', '', '2017-05-04', '2017-05-02', '2017-05-04', 'Devolucion comercial.', 1, '-', 20, '2734', '0', '0', '1'),
(3110, 4, 1865, 12, '2', '', '2017-05-04', '2017-05-02', '2017-05-04', 'Devolucion comercial.', 1, '-', 20, '2734', '0', '0', '2'),
(3111, 16, 2761, 12, '100', '', '2017-05-04', '2017-04-01', '2017-05-03', 'Devolucion comercial.', 1, '-', 20, '2735', '0', '0', '100'),
(3112, 16, 1002, 12, '120', '', '2017-05-04', '2017-04-01', '2017-05-03', 'Devolucion comercial.', 1, '-', 20, '2735', '0', '0', '120'),
(3113, 16, 1022, 12, '100', '', '2017-05-04', '2017-04-01', '2017-05-03', 'Devolucion comercial.', 1, '-', 20, '2735', '0', '0', '100'),
(3114, 16, 1038, 12, '80', '', '2017-05-04', '2017-04-01', '2017-05-03', 'Devolucion comercial.', 1, '-', 20, '2735', '0', '0', '80'),
(3115, 16, 1003, 12, '140', '', '2017-05-04', '2017-04-01', '2017-05-03', 'Devolucion comercial.', 1, '-', 20, '2735', '0', '0', '140'),
(3116, 16, 357, 12, '120', '', '2017-05-04', '2017-04-01', '2017-05-03', 'Devolucion comercial.', 1, '-', 20, '2735', '0', '0', '120'),
(3117, 16, 356, 12, '120', '', '2017-05-04', '2017-04-01', '2017-05-03', 'Devolucion comercial.', 1, '-', 20, '2735', '0', '0', '120'),
(3118, 16, 358, 12, '120', '', '2017-05-04', '2017-04-01', '2017-05-03', 'Devolucion comercial.', 1, '-', 20, '2735', '0', '0', '120'),
(3119, 16, 1039, 12, '150', '', '2017-05-04', '2017-04-01', '2017-05-03', 'Devolucion comercial.', 1, '-', 20, '2735', '0', '0', '150'),
(3120, 16, 1260, 12, '50', '', '2017-05-04', '2017-04-01', '2017-05-03', 'Devolucion comercial.', 1, '-', 20, '2735', '0', '0', '50'),
(3121, 16, 1259, 12, '50', '', '2017-05-04', '2017-04-01', '2017-05-03', 'Devolucion comercial.', 1, '-', 20, '2735', '0', '0', '50'),
(3122, 16, 1258, 12, '50', '', '2017-05-04', '2017-04-01', '2017-05-03', 'Devolucion comercial.', 1, '-', 20, '2735', '0', '0', '50'),
(3123, 16, 1257, 12, '10', '', '2017-05-04', '2017-04-01', '2017-05-03', 'Devolucion comercial.', 1, '-', 20, '2735', '0', '0', '10'),
(3124, 16, 1261, 12, '50', '', '2017-05-04', '2017-04-01', '2017-05-03', 'Devolucion comercial.', 1, '-', 20, '2735', '0', '0', '50'),
(3125, 16, 2762, 12, '120', '', '2017-05-04', '2017-04-01', '2017-05-03', 'Devolucion comercial.', 1, '-', 20, '2735', '0', '0', '120'),
(3126, 16, 1264, 12, '100', '', '2017-05-04', '2017-04-01', '2017-05-03', 'Devolucion comercial.', 1, '-', 20, '2735', '0', '0', '100'),
(3127, 16, 1263, 12, '45', '', '2017-05-04', '2017-04-01', '2017-05-03', 'Devolucion comercial.', 1, '-', 20, '2735', '0', '0', '45'),
(3128, 16, 1262, 12, '16', '', '2017-05-04', '2017-04-01', '2017-05-03', 'Devolucion comercial.', 1, '-', 20, '2735', '0', '0', '16'),
(3129, 16, 1023, 12, '150', '', '2017-05-04', '2017-04-01', '2017-05-03', 'Devolucion comercial.', 1, '-', 20, '2735', '0', '0', '150'),
(3130, 16, 2548, 12, '400', '', '2017-05-04', '2017-04-01', '2017-05-03', 'Devolucion comercial.', 1, '-', 20, '2735', '0', '0', '400'),
(3131, 20, 1728, 1, '1', '', '2017-05-05', '2017-04-25', '2017-05-04', 'Se traba.', 1, '06/2015', 23, '2736', '0', '1', '0'),
(3132, 20, 1945, 1, '1', '', '2017-05-05', '2017-04-25', '2017-05-04', 'Cuando acelera se desprende la manguera', 1, '09/2015', 17, '2736', '1', '0', '0'),
(3133, 230, 1067, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 2, '17322', 20, '2737', '0', '0', '1'),
(3134, 230, 1945, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '30102012', 14, '2737', '0', '1', '0'),
(3135, 230, 1473, 12, '3', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '25052013', 20, '2737', '0', '0', '3'),
(3136, 230, 589, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '23/08/2014', 20, '2737', '0', '0', '1'),
(3137, 230, 1889, 12, '4', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '1028', 20, '2737', '0', '0', '4'),
(3138, 230, 1916, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 2, '18404', 20, '2737', '0', '0', '1'),
(3139, 230, 1905, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 2, '-', 20, '2737', '0', '0', '1'),
(3140, 230, 1423, 3, '1', 'Verificacion con calibre P/NP.', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '05.23.2007', 3, '2737', '0', '1', '0'),
(3141, 230, 1382, 3, '1', 'Verificacion con calibre P/NP.', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '01/29/10', 3, '2737', '0', '1', '0'),
(3142, 230, 1575, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 2, '-', 20, '2737', '0', '0', '1'),
(3143, 230, 1601, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 2, '10.02.12', 20, '2737', '0', '0', '1'),
(3144, 230, 589, 12, '10', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '11/07/2017', 20, '2737', '0', '0', '10'),
(3145, 230, 1972, 12, '4', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '1128', 20, '2737', '0', '0', '4'),
(3146, 230, 1384, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '05/31/12', 14, '2737', '0', '1', '0'),
(3147, 230, 1938, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 2, '06.06.09', 14, '2737', '0', '1', '0'),
(3148, 230, 1968, 12, '3', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '796.03', 20, '2737', '0', '0', '3'),
(3149, 230, 1990, 12, '2', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '0946', 14, '2737', '0', '2', '0'),
(3150, 230, 1980, 12, '3', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 20, '2737', '0', '0', '3'),
(3151, 230, 1370, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '10.2309', 14, '2737', '0', '1', '0'),
(3152, 230, 1622, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 14, '2737', '0', '1', '0'),
(3153, 230, 1387, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '05/29/12', 16, '2737', '0', '1', '0'),
(3154, 230, 1955, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '12/07', 14, '2737', '0', '1', '0'),
(3155, 230, 1728, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 2, '10/10', 14, '2737', '0', '1', '0'),
(3156, 230, 1943, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 20, '2737', '0', '0', '1'),
(3157, 230, 1987, 12, '4', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '1032', 20, '2737', '0', '0', '4'),
(3158, 230, 1537, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 2, '-', 20, '2737', '0', '0', '1'),
(3159, 230, 1682, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 20, '2737', '0', '0', '1'),
(3160, 230, 1506, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 2, '-', 14, '2737', '0', '1', '0'),
(3161, 230, 2075, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 20, '2737', '0', '0', '1'),
(3162, 230, 1431, 12, '2', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 14, '2737', '0', '2', '0'),
(3163, 230, 1387, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '05/29/12', 20, '2737', '0', '0', '1'),
(3164, 230, 1732, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 2, '07/2010', 20, '2737', '0', '0', '1'),
(3165, 230, 1356, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 20, '2737', '0', '0', '1'),
(3166, 230, 1888, 12, '8', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '12/18', 20, '2737', '0', '0', '8'),
(3167, 230, 1426, 12, '2', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 13, '2737', '0', '2', '0'),
(3168, 230, 1972, 12, '10', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '1344', 20, '2737', '0', '0', '10'),
(3169, 230, 1704, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '15082015', 20, '2737', '0', '0', '1'),
(3170, 230, 1739, 12, '2', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 2, '09/2015', 20, '2737', '0', '0', '2'),
(3171, 230, 1940, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 14, '2737', '0', '1', '0'),
(3172, 230, 1943, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 14, '2737', '0', '1', '0'),
(3173, 230, 1403, 12, '2', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 20, '2737', '0', '0', '2'),
(3174, 230, 1945, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '30102012', 14, '2737', '0', '1', '0'),
(3175, 230, 2692, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 2, '-', 14, '2737', '0', '1', '0'),
(3176, 230, 1370, 12, '7', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '12/2016', 20, '2737', '0', '0', '7'),
(3177, 230, 1382, 3, '3', 'Verificacion con calibre P/NP.', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '070810', 3, '2737', '0', '3', '0'),
(3178, 230, 1724, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 2, '16962', 20, '2737', '0', '0', '1'),
(3179, 230, 1377, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '102009', 20, '2737', '0', '0', '1'),
(3180, 230, 1506, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 2, '-', 20, '2737', '0', '0', '1'),
(3181, 230, 2064, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '1240', 14, '2737', '0', '1', '0'),
(3182, 230, 2016, 12, '4', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 14, '2737', '0', '4', '0'),
(3183, 230, 1951, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '1512', 14, '2737', '0', '1', '0'),
(3184, 230, 1405, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 14, '2737', '0', '1', '0'),
(3185, 230, 2020, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 20, '2737', '0', '0', '1'),
(3186, 230, 1994, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '1202', 14, '2737', '0', '1', '0'),
(3187, 230, 2725, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 13, '2737', '0', '1', '0'),
(3188, 230, 1309, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '03/26/13', 14, '2737', '0', '1', '0'),
(3189, 230, 1955, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '12/2007', 20, '2737', '0', '0', '1'),
(3190, 230, 1941, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 14, '2737', '0', '1', '0'),
(3191, 230, 1984, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '06/10/09', 20, '2737', '0', '0', '1'),
(3192, 230, 1413, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '01/29/2007', 14, '2737', '0', '1', '0'),
(3193, 230, 1969, 12, '3', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 14, '2737', '0', '3', '0'),
(3194, 230, 1890, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '01/2008', 14, '2737', '0', '1', '0'),
(3195, 230, 1581, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '04.03.01', 14, '2737', '0', '1', '0'),
(3196, 230, 1286, 12, '2', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '08.12.11', 20, '2737', '0', '0', '2'),
(3197, 230, 1284, 12, '13', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '07/03/14', 13, '2737', '0', '13', '0'),
(3198, 230, 1969, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 20, '2737', '0', '0', '1'),
(3199, 230, 1946, 5, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '05.01.2012', 6, '2737', '0', '1', '0'),
(3200, 230, 1087, 12, '2', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 2, '18633', 14, '2737', '0', '2', '0'),
(3201, 230, 1863, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 20, '2737', '0', '0', '1'),
(3202, 230, 1454, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 20, '2737', '0', '0', '1'),
(3203, 230, 1716, 12, '5', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 20, '2737', '0', '0', '5'),
(3204, 230, 2021, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '6708', 20, '2737', '0', '0', '1'),
(3205, 230, 310, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 13, '2737', '0', '1', '0'),
(3206, 230, 725, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 20, '2737', '0', '0', '1'),
(3207, 230, 1552, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '18.12.2012', 20, '2737', '0', '0', '1'),
(3208, 230, 1905, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 2, '281009', 20, '2737', '0', '0', '1'),
(3209, 230, 1916, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 2, '030908', 20, '2737', '0', '0', '1'),
(3210, 230, 1603, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 20, '2737', '0', '0', '1'),
(3211, 230, 1871, 12, '6', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 20, '2737', '0', '0', '6'),
(3212, 230, 2108, 12, '1', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '07/03/09', 20, '2737', '0', '0', '1'),
(3213, 230, 1941, 12, '3', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 20, '2737', '0', '0', '3'),
(3214, 230, 1946, 12, '19', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '-', 13, '2737', '0', '19', '0'),
(3215, 230, 2009, 12, '2', '', '2017-05-08', NULL, '2017-05-03', 'Sin descripcion.', 1, '05/17/16', 20, '2737', '0', '0', '2'),
(3216, 45, 283, 12, '3', '', '2017-05-10', NULL, '2017-05-10', 'Vinieron aplastados', 1, '-', 14, '2738', '0', '3', '0'),
(3217, 45, 603, 12, '1', '', '2017-05-10', NULL, '2017-05-10', 'Vino aplastado.', 1, '01/11/2016', 14, '2738', '0', '1', '0'),
(3218, 45, 1723, 6, '1', '', '2017-05-10', NULL, '2017-05-10', 'Pierde', 2, '-', 7, '2738', '0', '1', '0'),
(3219, 45, 1682, 6, '1', '', '2017-05-10', NULL, '2017-05-10', 'Pierde', 1, '-', 7, '2738', '0', '1', '0'),
(3220, 45, 1387, 6, '2', 'Filtro sin uso. Sello dañado por manipulación inadecuada. (ver foto)', '2017-05-10', NULL, '2017-05-10', 'Pierde por la junta.', 1, '04/23/16', 8, '2738', '2', '0', '0'),
(3221, 45, 1931, 5, '1', '', '2017-05-10', NULL, '2017-05-10', 'No entra en el recipiente.', 1, '09/2014', 6, '2738', '0', '1', '0'),
(3222, 45, 1413, 6, '1', 'Filtro usado. El informe detalla WO-180. Es WO-370', '2017-05-10', NULL, '2017-05-10', 'Pierde por la junta.', 1, 'Aug 10 2014', 8, '2738', '1', '0', '0'),
(3223, 56, 1737, 6, '1', '', '2017-05-11', '2017-04-28', '2017-05-10', 'Pierde.', 2, '-', 7, '2739', '0', '1', '0'),
(3224, 230, 1309, 6, '1', 'Filtro usado. Sello dañado.', '2017-05-11', NULL, '2017-05-11', 'Sin descripcion.', 1, '061416', 7, '2740', '0', '1', '0'),
(3225, 4, 963, 12, '3', '', '2017-05-16', '2017-05-10', '2017-05-15', 'Devolucion comercial.', 1, '-', 20, '2741', '0', '0', '3'),
(3226, 4, 1028, 12, '3', '', '2017-05-16', '2017-05-10', '2017-05-15', 'Devolucion comercial.', 1, '-', 20, '2741', '0', '0', '3'),
(3227, 4, 955, 12, '2', '', '2017-05-16', '2017-05-10', '2017-05-15', 'Devolucion comercial.', 1, '-', 20, '2741', '0', '0', '2'),
(3228, 4, 796, 12, '2', '', '2017-05-16', '2017-05-10', '2017-05-15', 'Devolucion comercial.', 1, '-', 20, '2741', '0', '0', '2'),
(3229, 4, 845, 12, '4', '', '2017-05-16', '2017-05-10', '2017-05-15', 'Devolucion comercial.', 1, '-', 20, '2741', '0', '0', '4'),
(3230, 4, 805, 12, '3', '', '2017-05-16', '2017-05-10', '2017-05-15', 'Devolucion comercial.', 1, '-', 20, '2741', '0', '0', '3'),
(3231, 4, 854, 12, '4', '', '2017-05-16', '2017-05-10', '2017-05-15', 'Devolucion comercial.', 1, '-', 20, '2741', '0', '0', '4'),
(3232, 4, 787, 12, '7', '', '2017-05-16', '2017-05-10', '2017-05-15', 'Devolucion comercial.', 1, '-', 20, '2741', '0', '0', '7'),
(3233, 4, 1305, 12, '5', '', '2017-05-16', '2017-05-10', '2017-05-15', 'Devolucion comercial.', 1, '-', 20, '2741', '0', '0', '5'),
(3234, 4, 2759, 12, '6', '', '2017-05-16', '2017-05-10', '2017-05-15', 'Devolucion comercial.', 1, '-', 20, '2741', '0', '0', '6'),
(3235, 4, 2115, 12, '1', '', '2017-05-16', '2017-05-10', '2017-05-15', 'Devolucion comercial.', 1, '-', 20, '2741', '0', '0', '1'),
(3236, 28, 772, 12, '1', '', '2017-05-16', '2017-05-04', '2017-05-15', 'Abollado.', 1, '10/11/2015', 14, '2742', '0', '1', '0'),
(3237, 28, 2555, 4, '1', '', '2017-05-16', '2017-05-04', '2017-05-15', 'Fallo.', 1, '-', 3, '2742', '0', '1', '0'),
(3239, 4, 2453, 12, '10', '', '2017-05-16', '2017-05-15', '2017-05-16', 'Pedidopor error.', 1, '-', 20, '2744', '0', '0', '10'),
(3240, 58, 1046, 12, '6', '', '2017-05-16', '2017-05-15', '2017-05-16', 'No fueron pedidos.', 1, '-', 20, '2745', '0', '0', '6'),
(3241, 246, 1146, 12, '1', '', '2017-05-16', '2017-04-12', '2017-05-16', 'Mal pedido.', 1, '-', 20, '2746', '0', '0', '1'),
(3242, 246, 1419, 12, '2', '', '2017-05-16', '2017-04-12', '2017-05-16', 'Mal pedido.', 1, '-', 20, '2746', '0', '0', '2'),
(3243, 246, 433, 12, '4', '', '2017-05-16', '2017-04-12', '2017-05-16', 'Mal pedido.', 1, '-', 20, '2746', '0', '0', '4'),
(3244, 246, 1058, 12, '6', '', '2017-05-16', '2017-04-12', '2017-05-16', 'Mal pedido.', 1, '-', 20, '2746', '0', '0', '6'),
(3245, 112, 2251, 12, '2', 'Bujias inflamadas por exceso de tiempo de suministro electrico, con presencia de hollin.', '2017-05-16', NULL, '2017-05-16', 'Sin descripcion.', 1, 'R04', 2, '2747', '2', '0', '0'),
(3246, 112, 2591, 11, '1', 'Juego incompleto. Bocina usada.', '2017-05-16', NULL, '2017-05-16', 'Sin descripcion.', 1, '-', 4, '2747', '1', '0', '0'),
(3247, 4, 1729, 12, '1', '', '2017-05-16', '2017-05-15', '2017-05-16', 'Fallado.', 1, '06/2016', 23, '2748', '0', '1', '0'),
(3248, 4, 2763, 4, '2', '', '2017-05-16', '2017-05-15', '2017-05-16', 'Una quemada.', 1, '7A14', 4, '2748', '2', '0', '0'),
(3249, 4, 2540, 4, '1', 'Filamento de luz no funciona.', '2017-05-16', '2017-05-15', '2017-05-16', 'Fallada.', 1, '14E23i', 24, '2748', '0', '1', '0'),
(3252, 132, 1723, 12, '252', '', '2017-05-16', NULL, '2017-05-16', 'Garantia.', 2, '-', 20, '2749', '0', '0', '252'),
(3253, 11, 2756, 12, '1', '', '2017-05-17', '2017-05-09', '2017-05-16', 'Falla.', 1, '11/2016', 14, '2750', '0', '1', '0'),
(3254, 11, 1411, 1, '1', 'Filtro usado.', '2017-05-17', '2017-05-09', '2017-05-16', 'Falla.', 1, '11/12/15', 4, '2750', '1', '0', '0'),
(3255, 11, 1370, 12, '1', '', '2017-05-17', '2017-05-09', '2017-05-16', 'Falla.', 1, '09/04/15', 23, '2750', '0', '1', '0'),
(3256, 11, 1370, 6, '1', '', '2017-05-17', '2017-05-09', '2017-05-16', 'Falla.', 1, '17 oct 13', 7, '2750', '0', '1', '0'),
(3257, 11, 1370, 1, '1', 'Filtro usado.', '2017-05-17', '2017-05-09', '2017-05-16', 'Falla.', 1, '09/04/15', 4, '2750', '1', '0', '0'),
(3258, 11, 1405, 1, '3', 'Filtos usados.', '2017-05-17', '2017-05-09', '2017-05-16', 'Falla.', 1, '04/28/16', 4, '2750', '3', '0', '0'),
(3259, 11, 1969, 1, '1', 'Filtro usado.', '2017-05-17', '2017-05-09', '2017-05-16', 'Falla.', 1, '09/15/15', 4, '2750', '1', '0', '0'),
(3260, 11, 1980, 6, '1', '', '2017-05-17', '2017-05-09', '2017-05-16', 'Falla.', 1, '1552', 7, '2750', '0', '1', '0'),
(3261, 11, 1382, 1, '1', 'Filtro usado.', '2017-05-17', '2017-05-09', '2017-05-16', 'Falla.', 1, '09/12/15', 4, '2750', '1', '0', '0'),
(3262, 11, 2016, 12, '1', '', '2017-05-17', '2017-05-09', '2017-05-16', 'Falla.', 1, '-', 17, '2750', '0', '1', '0'),
(3263, 11, 1283, 12, '1', '', '2017-05-17', '2017-05-09', '2017-05-16', 'Devolucion. Enviado de mas.', 1, '-', 20, '2750', '0', '0', '1'),
(3264, 8, 2397, 4, '4', 'Filamento de luz baja dañado por efecto fusible.', '2017-05-18', '2017-05-15', '2017-05-17', 'Quemadas.', 1, '-', 20, '2751', '0', '0', '4'),
(3265, 8, 2540, 4, '1', '', '2017-05-18', '2017-05-15', '2017-05-17', 'Quemada.', 1, '-', 4, '2751', '1', '0', '0'),
(3266, 8, 2146, 2, '4', '', '2017-05-18', '2017-05-15', '2017-05-17', 'Fallaron.', 1, '-', 4, '2751', '4', '0', '0'),
(3267, 8, 1717, 6, '1', '', '2017-05-18', '2017-05-15', '2017-05-17', 'Pinchado.', 1, '1304', 7, '2751', '0', '1', '0'),
(3268, 8, 1633, 3, '1', 'Verificacion con calibra P/NP.', '2017-05-18', '2017-05-15', '2017-05-17', 'Fallo rosca.', 1, '20042013', 4, '2751', '1', '0', '0'),
(3269, 8, 1682, 1, '1', '', '2017-05-18', '2017-05-15', '2017-05-17', 'Fallo.', 1, '15082015', 6, '2751', '0', '1', '0'),
(3270, 8, 2030, 1, '1', '', '2017-05-18', '2017-05-15', '2017-05-17', 'Fallo.', 1, '681/01', 4, '2751', '1', '0', '0'),
(3271, 8, 1951, 12, '1', '', '2017-05-18', '2017-05-15', '2017-05-17', 'Doblado el labio.', 1, '1534', 14, '2751', '0', '1', '0'),
(3272, 8, 1980, 6, '1', '', '2017-05-18', '2017-05-15', '2017-05-17', 'Chupa aire.', 1, '-', 7, '2751', '0', '1', '0'),
(3273, 8, 872, 12, '1', '', '2017-05-18', '2017-05-15', '2017-05-17', 'Abollado.', 1, '03/06/2014', 14, '2751', '0', '1', '0'),
(3274, 8, 1946, 5, '1', '', '2017-05-18', '2017-05-15', '2017-05-17', 'Fallo.', 1, '2012', 6, '2751', '0', '1', '0'),
(3275, 8, 2555, 4, '1', 'Filamento de luz baja dañado por efecto fusible.', '2017-05-18', '2017-05-15', '2017-05-17', 'Fallo.', 1, '-', 20, '2751', '0', '0', '1'),
(3276, 8, 1940, 12, '1', '', '2017-05-18', '2017-05-15', '2017-05-17', 'El pico vino roto.', 1, '10082012', 14, '2751', '0', '1', '0'),
(3277, 8, 584, 12, '2', 'Dañado por manipulacion inadecuada.', '2017-05-18', '2017-05-15', '2017-05-17', 'Partidos.', 2, '14.03.16 L.18629', 14, '2751', '2', '0', '0'),
(3278, 8, 1945, 1, '1', 'Filtro usado.', '2017-05-18', '2017-05-15', '2017-05-17', 'Fallo.', 1, '12/2014', 4, '2751', '1', '0', '0'),
(3279, 4, 1324, 1, '1', 'Se adjunta Informe tecnico Nº 303', '2017-05-26', '2017-05-15', '2017-05-22', 'Sin descripcion.', 1, 'OCT 17 2015', 4, '2752', '1', '0', '0'),
(3280, 49, 1945, 6, '1', '', '2017-06-05', '2017-05-15', '2017-06-02', 'Pierde el sellado.', 1, '25052013', 7, '2753', '0', '1', '0'),
(3281, 49, 1384, 12, '1', '', '2017-06-05', '2017-05-15', '2017-06-02', 'Pierde el sellado.', 2, '16565 L.12/2013', 13, '2753', '0', '1', '0'),
(3282, 49, 1972, 12, '1', '', '2017-06-05', '2017-05-15', '2017-06-02', 'Rosca fallada.', 1, '1516', 14, '2753', '0', '1', '0'),
(3283, 4, 2096, 12, '4', '', '2017-06-06', '2017-05-22', '2017-06-06', 'Devolucion comercial.', 1, '-', 20, '2754', '0', '0', '4'),
(3285, 4, 2764, 12, '4', '', '2017-06-06', '2017-05-22', '2017-06-06', 'Devolucion comercial.', 1, '-', 20, '2754', '0', '0', '4'),
(3286, 4, 1836, 12, '6', '', '2017-06-06', '2017-05-22', '2017-06-06', 'Devolucion comercial.', 1, '-', 20, '2754', '0', '0', '6'),
(3287, 4, 1844, 12, '2', '', '2017-06-06', '2017-05-22', '2017-06-06', 'Devolucion comercial.', 1, '-', 20, '2754', '0', '0', '2'),
(3288, 4, 1665, 12, '10', '', '2017-06-06', '2017-05-22', '2017-06-06', 'Devolucion comercial.', 1, '-', 20, '2754', '0', '0', '10'),
(3289, 4, 1853, 12, '9', '', '2017-06-06', '2017-05-22', '2017-06-06', 'Devolucion comercial.', 1, '-', 20, '2754', '0', '0', '9'),
(3290, 4, 1841, 12, '3', '', '2017-06-06', '2017-05-22', '2017-06-06', 'Devolucion comercial.', 1, '-', 20, '2754', '0', '0', '3'),
(3291, 4, 1824, 12, '3', '', '2017-06-06', '2017-05-22', '2017-06-06', 'Devolucion comercial.', 1, '-', 20, '2754', '0', '0', '3'),
(3292, 4, 1820, 12, '4', '', '2017-06-06', '2017-05-22', '2017-06-06', 'Devolucion comercial.', 1, '-', 20, '2754', '0', '0', '4'),
(3293, 4, 2087, 12, '3', '', '2017-06-06', '2017-05-22', '2017-06-06', 'Devolucion comercial.', 1, '-', 20, '2754', '0', '0', '3'),
(3294, 4, 1827, 12, '2', '', '2017-06-06', '2017-05-22', '2017-06-06', 'Devolucion comercial.', 1, '-', 20, '2754', '0', '0', '2'),
(3295, 4, 1817, 12, '2', '', '2017-06-06', '2017-05-22', '2017-06-06', 'Devolucion comercial.', 1, '-', 20, '2754', '0', '0', '2'),
(3296, 128, 1580, 12, '17', '', '2017-06-06', '2017-03-28', '2017-06-06', 'Enviado demas.', 1, '-', 20, '2755', '0', '0', '17'),
(3297, 128, 1916, 12, '8', '', '2017-06-06', '2017-03-28', '2017-06-06', 'Enviado demas.', 1, '-', 20, '2755', '0', '0', '8'),
(3298, 128, 1990, 12, '17', '', '2017-06-06', '2017-03-28', '2017-06-06', 'Enviado demas.', 1, '-', 20, '2755', '0', '0', '17'),
(3299, 128, 273, 12, '40', '', '2017-06-06', '2017-03-28', '2017-06-06', 'Error al pedir.', 1, '-', 20, '2755', '0', '0', '40'),
(3300, 128, 626, 12, '8', 'No es FAP-6002 como detalla el informe. Es FAP-9002', '2017-06-06', '2017-03-28', '2017-06-06', 'Error al pedir.', 2, '-', 20, '2755', '0', '0', '8'),
(3301, 128, 67, 12, '16', '', '2017-06-06', '2017-03-28', '2017-06-06', 'Error al pedir.', 1, '-', 20, '2755', '0', '0', '16'),
(3302, 28, 430, 12, '1', '', '2017-06-06', '2017-05-18', '2017-06-06', 'Caja deteriorada.', 2, '-', 15, '2756', '0', '0', '1'),
(3303, 28, 583, 12, '1', 'Estuche dañado.', '2017-06-06', '2017-05-18', '2017-06-06', 'Caja deteriorada y filtro rayada.', 2, '-', 14, '2756', '0', '0', '1'),
(3304, 228, 2765, 12, '140', '', '2017-06-06', '2017-04-13', '2017-06-06', 'Devolucion comercial.', 1, '-', 20, '2757', '0', '0', '140'),
(3305, 228, 2449, 12, '4000', '', '2017-06-06', '2017-04-13', '2017-06-06', 'Mal pedido.', 1, '-', 20, '2757', '0', '0', '4000'),
(3306, 228, 2200, 12, '400', '', '2017-06-06', '2017-04-13', '2017-06-06', 'Mal pedido.', 1, '-', 20, '2757', '0', '0', '400'),
(3307, 28, 2555, 12, '10', '', '2017-06-06', '2017-05-23', '2017-06-06', 'Caja deteriorada.', 1, '-', 15, '2758', '0', '0', '10'),
(3308, 11, 1136, 12, '2', '', '2017-06-06', '2017-05-18', '2017-06-06', 'Caja rota.', 2, '12.08.11', 15, '2759', '0', '0', '2'),
(3309, 11, 1981, 1, '1', '', '2017-06-06', '2017-05-18', '2017-06-06', 'Falla.', 1, '1552', 7, '2759', '0', '1', '0'),
(3310, 11, 1729, 12, '1', '', '2017-06-06', '2017-05-18', '2017-06-06', 'Falla.', 1, '06/2016', 23, '2759', '0', '1', '0'),
(3311, 28, 1916, 12, '1', '', '2017-06-06', '2017-05-17', '2017-06-06', 'Caja vacia.', 1, '-', 20, '2760', '0', '0', '1'),
(3312, 146, 2151, 12, '84', '', '2017-06-06', NULL, '2017-06-06', 'Mal codificado.', 1, '-', 20, '2761', '0', '0', '84'),
(3313, 24, 595, 12, '4', 'Informe Nº477', '2017-06-06', '2017-05-10', '2017-06-06', 'Defecto entre sello de poliuretano y el medio filtrante.', 1, '23/04/2016', 9, '2762', '0', '4', '0'),
(3314, 24, 1732, 12, '8', 'Informe Nº478', '2017-06-06', '2017-05-10', '2017-06-06', 'Elemento interno suelto y montaje roto.', 2, '-', 23, '2762', '0', '8', '0'),
(3315, 24, 1729, 12, '17', 'Informe Nº478', '2017-06-06', '2017-05-10', '2017-06-06', 'Elemento interno suelto y montaje roto.', 2, '-', 23, '2762', '0', '17', '0'),
(3316, 24, 1728, 12, '128', 'Informe Nº478', '2017-06-06', '2017-05-10', '2017-06-06', 'Elemento interno suelto y montaje roto.', 2, '-', 23, '2762', '0', '128', '0'),
(3317, 24, 1723, 12, '80', 'Informe Nº478', '2017-06-06', '2017-05-10', '2017-06-06', 'Elemento interno suelto y montaje roto.', 2, '-', 23, '2762', '0', '80', '0'),
(3318, 24, 1732, 12, '4', 'Informe Nº482', '2017-06-06', '2017-05-10', '2017-06-06', 'Elemento interno suelto y montaje roto..', 2, '-', 23, '2762', '0', '4', '0'),
(3319, 24, 1729, 12, '6', 'Informe Nº482', '2017-06-06', '2017-05-10', '2017-06-06', 'Elemento interno suelto y montaje roto.', 2, '-', 23, '2762', '0', '6', '0'),
(3320, 24, 1724, 12, '90', 'Informe Nº482', '2017-06-06', '2017-05-10', '2017-06-06', 'Elemento interno suelto y montaje roto.', 2, '-', 23, '2762', '0', '90', '0'),
(3321, 24, 1972, 12, '1', 'Informe Nº483', '2017-06-06', '2017-05-10', '2017-06-06', 'Elemento suelto.', 1, '1544', 23, '2762', '0', '1', '0'),
(3322, 4, 1817, 12, '1', '', '2017-06-06', '2017-05-22', '2017-06-06', 'Devolucion comercial.', 1, '-', 20, '2754', '0', '0', '1'),
(3323, 20, 1554, 12, '1', '', '2017-06-06', '2017-05-23', '2017-06-06', 'Sin descripcion.', 1, '30/09/2013', 3, '2763', '0', '1', '0'),
(3324, 57, 2768, 12, '20', '', '2017-06-06', NULL, '2017-06-06', 'Mal pedido.', 1, '-', 20, '2764', '0', '0', '20'),
(3325, 28, 2445, 12, '120', '', '2017-06-07', '2017-05-17', '2017-06-06', 'Rotas.', 1, '-', 20, '2765', '0', '0', '120'),
(3326, 87, 1370, 12, '39', '', '2017-06-07', NULL, '2017-06-07', 'Garantia.', 1, '-', 20, '2766', '0', '0', '39'),
(3327, 28, 2591, 12, '1', '', '2017-06-08', '2017-06-08', '2017-06-08', 'Falta una.', 1, '-', 20, '2767', '0', '0', '1'),
(3328, 4, 1857, 12, '1', '', '2017-06-08', '2017-06-07', '2017-06-08', 'Devolucion comercial.', 1, '-', 20, '2768', '0', '0', '1'),
(3329, 4, 1859, 12, '3', '', '2017-06-08', '2017-06-07', '2017-06-08', 'Devolucion comercial.', 1, '-', 20, '2768', '0', '0', '3'),
(3330, 4, 1861, 12, '2', '', '2017-06-08', '2017-06-07', '2017-06-08', 'Devolucion comercial.', 1, '-', 20, '2768', '0', '0', '2'),
(3331, 4, 1863, 12, '2', '', '2017-06-08', '2017-06-07', '2017-06-08', 'Devolucion comercial.', 1, '-', 20, '2768', '0', '0', '2'),
(3332, 4, 1864, 12, '1', '', '2017-06-08', '2017-06-07', '2017-06-08', 'Devolucion comercial.', 1, '-', 20, '2768', '0', '0', '1'),
(3333, 4, 1865, 12, '2', '', '2017-06-08', '2017-06-07', '2017-06-08', 'Devolucion comercial.', 1, '-', 20, '2768', '0', '0', '2'),
(3334, 4, 1873, 12, '2', '', '2017-06-08', '2017-06-07', '2017-06-08', 'Devolucion comercial.', 1, '-', 20, '2768', '0', '0', '2'),
(3335, 4, 1875, 12, '3', '', '2017-06-08', '2017-06-07', '2017-06-08', 'Devolucion comercial.', 1, '-', 20, '2768', '0', '0', '3'),
(3336, 4, 21, 12, '21', '', '2017-06-08', '2017-06-07', '2017-06-08', 'Devolucion comercial. Mal enviado.', 1, '-', 20, '2769', '0', '0', '21'),
(3337, 3, 1941, 12, '28', '', '2017-06-08', '2017-05-16', '2017-06-07', 'Sin O´ring.', 1, '15/07/2016º', 20, '2770', '0', '0', '28'),
(3339, 3, 1945, 1, '1', '', '2017-06-08', '2017-05-16', '2017-06-07', 'Falla.', 1, '2015', 7, '2770', '0', '1', '0'),
(3340, 3, 1356, 12, '2', '', '2017-06-08', '2017-05-16', '2017-06-07', 'Oxidados.', 1, '15/11/2013', 18, '2770', '0', '2', '0'),
(3341, 3, 1602, 12, '24', 'Estuches impregnados en aceite.', '2017-06-08', '2017-05-16', '2017-06-07', 'Partida, problemas con la luz.', 1, '06/2016', 20, '2770', '0', '0', '24'),
(3342, 3, 1943, 1, '1', 'Pared del sensor defectuosa', '2017-06-08', '2017-05-16', '2017-06-07', 'Falla.', 1, '15/01/2015', 3, '2770', '0', '1', '0'),
(3343, 3, 1405, 6, '1', 'Filtro usado.', '2017-06-08', '2017-05-16', '2017-06-07', 'Pierde', 1, '04/28/16', 8, '2770', '1', '0', '0'),
(3344, 3, 1405, 3, '1', '', '2017-06-08', '2017-05-16', '2017-06-07', 'Rosca.', 1, '04/27/16', 5, '2770', '0', '1', '0'),
(3345, 3, 1324, 12, '1', '', '2017-06-08', '2017-05-16', '2017-06-07', 'Sin goma.', 1, '03 04 08', 16, '2770', '0', '1', '0'),
(3346, 3, 1682, 5, '1', 'Conector fuera de medida.', '2017-06-08', '2017-05-16', '2017-06-07', 'No traba.', 1, '30102015', 6, '2770', '0', '1', '0'),
(3347, 3, 1302, 12, '1', '', '2017-06-08', '2017-05-16', '2017-06-07', 'Golpeado.', 1, '-', 14, '2770', '0', '1', '0'),
(3348, 3, 1815, 6, '1', '', '2017-06-08', '2017-05-16', '2017-06-07', 'Pierde.', 1, '30112012', 7, '2770', '0', '1', '0'),
(3349, 3, 1516, 12, '1', '', '2017-06-08', '2017-05-16', '2017-06-07', 'Traba rota.', 1, '01/2013', 14, '2770', '0', '1', '0'),
(3350, 3, 1677, 6, '1', 'Carcasa metalica dañada por manipulacion inadecuada.', '2017-06-08', '2017-05-16', '2017-06-07', 'Pinchado.', 1, '-', 7, '2770', '1', '0', '0'),
(3351, 3, 1384, 12, '1', '', '2017-06-08', '2017-05-16', '2017-06-07', 'Pieza suelta.', 1, '12/13/15', 23, '2770', '0', '1', '0'),
(3352, 3, 2085, 6, '1', '', '2017-06-08', '2017-05-16', '2017-06-07', 'Pierde.', 1, '-', 8, '2770', '1', '0', '0'),
(3353, 3, 1718, 6, '1', 'El informe detalla FCI-1301. Es FCI-1303.', '2017-06-08', '2017-05-16', '2017-06-07', 'Pierde.', 1, '1551', 8, '2770', '1', '0', '0'),
(3354, 3, 1407, 12, '1', '', '2017-06-08', '2017-05-16', '2017-06-07', 'Desarmado.', 1, 'cec 04 2016', 17, '2770', '0', '1', '0'),
(3355, 9, 1370, 1, '1', 'Filtro usado. Presncia de aceite entre brida y sello.', '2017-06-09', '2017-05-19', '2017-06-08', 'Sin descripcion.', 1, '12/06/15', 4, '2771', '1', '0', '0'),
(3356, 9, 1473, 12, '1', '', '2017-06-09', '2017-05-19', '2017-06-08', 'Sin descripcion.', 1, '-', 14, '2771', '0', '1', '0'),
(3357, 9, 1369, 3, '1', '', '2017-06-09', '2017-05-19', '2017-06-08', 'Sin descripcion.', 1, 'mar 29 2015', 5, '2771', '0', '1', '0'),
(3358, 9, 1413, 1, '1', '', '2017-06-09', '2017-05-19', '2017-06-08', 'Sin descripcion.', 1, '08/03/16', 4, '2771', '1', '0', '0'),
(3359, 9, 1431, 1, '1', 'Filtro usado.', '2017-06-09', '2017-05-19', '2017-06-08', 'Sin descripcion.', 1, '-', 4, '2771', '1', '0', '0'),
(3360, 9, 1508, 8, '1', 'O´ring cortado por fuerza indebida.', '2017-06-09', '2017-05-19', '2017-06-08', 'Sin descripcion.', 2, '17919', 10, '2771', '1', '0', '0'),
(3361, 9, 1603, 12, '1', '', '2017-06-09', '2017-05-19', '2017-06-08', 'Sin descripcion.', 1, '09/2016', 16, '2771', '0', '1', '0'),
(3362, 9, 1951, 1, '1', 'Filtro usado.', '2017-06-09', '2017-05-19', '2017-06-08', 'Sin descripcion.', 1, '11/12/16', 4, '2771', '1', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `resultados`
--

CREATE TABLE `resultados` (
  `id_resultado` int(100) NOT NULL,
  `resultado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resultados`
--

INSERT INTO `resultados` (`id_resultado`, `resultado`) VALUES
(1, 'Corresponde'),
(2, 'No corresponde'),
(3, 'Falla'),
(4, 'No falla'),
(5, 'Rosca defectuosa'),
(6, 'Fuera de medida'),
(7, 'Pierde'),
(8, 'No pierde'),
(9, 'By pass'),
(10, 'O´ring / sello dañado'),
(11, 'Tapado'),
(12, 'Válvula defectuosa'),
(13, 'Partida defectuosa '),
(14, 'Producto dañado'),
(15, 'Estuche dañado'),
(16, 'Incompleto'),
(17, 'Mal armado'),
(18, 'Oxido'),
(19, 'Medidas de acuerdo a plano'),
(20, 'Devolución por motivos comerciales'),
(21, 'Mal identificado'),
(22, 'Quemada'),
(23, 'Elemento suelto'),
(24, 'No funciona'),
(25, 'Estuche incorrecto');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `user`, `pass`) VALUES
(1, 'nicolas', 'contraseña'),
(2, 'jonathan ', 'wega'),
(3, 'Daniel', 'wega2015'),
(5, 'Jorge', 'wega2015'),
(6, 'Vanesa', 'wega2015');

-- --------------------------------------------------------

--
-- Table structure for table `verificaciones`
--

CREATE TABLE `verificaciones` (
  `id` int(100) NOT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verificaciones`
--

INSERT INTO `verificaciones` (`id`, `tipo`) VALUES
(1, 'Verificación Completa'),
(2, 'Prueba de bujía'),
(3, 'Verificación de rosca'),
(4, 'Prueba de lámpara'),
(5, 'Dimensional'),
(6, 'Prueba de estanqueidad'),
(7, 'Verificación de asiento de válvula de retorno de combustible'),
(8, 'Análisis de O ´ring / Sello'),
(9, 'Verificación de válvula'),
(10, 'Verificación de flujo'),
(11, 'Prueba de bocina'),
(12, 'Visual'),
(13, 'Prueba de bomba cebadora');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indexes for table `origenes`
--
ALTER TABLE `origenes`
  ADD PRIMARY KEY (`id_origen`),
  ADD UNIQUE KEY `pais` (`origen`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD UNIQUE KEY `codigo_producto` (`codigo_producto`);

--
-- Indexes for table `reclamos`
--
ALTER TABLE `reclamos`
  ADD PRIMARY KEY (`id_reclamo`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id` (`id`),
  ADD KEY `id_origen` (`id_origen`),
  ADD KEY `id_resultado` (`id_resultado`);

--
-- Indexes for table `resultados`
--
ALTER TABLE `resultados`
  ADD PRIMARY KEY (`id_resultado`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verificaciones`
--
ALTER TABLE `verificaciones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;
--
-- AUTO_INCREMENT for table `origenes`
--
ALTER TABLE `origenes`
  MODIFY `id_origen` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2769;
--
-- AUTO_INCREMENT for table `resultados`
--
ALTER TABLE `resultados`
  MODIFY `id_resultado` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `verificaciones`
--
ALTER TABLE `verificaciones`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `reclamos`
--
ALTER TABLE `reclamos`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `origen` FOREIGN KEY (`id_origen`) REFERENCES `origenes` (`id_origen`),
  ADD CONSTRAINT `productos` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  ADD CONSTRAINT `resultado` FOREIGN KEY (`id_resultado`) REFERENCES `resultados` (`id_resultado`),
  ADD CONSTRAINT `verificacion` FOREIGN KEY (`id`) REFERENCES `verificaciones` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
