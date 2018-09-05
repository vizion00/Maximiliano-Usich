--
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
  MODIFY `ch_it_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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

