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
