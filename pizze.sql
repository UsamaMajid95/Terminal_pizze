-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2023 at 11:14 AM
-- Server version: 8.0.17
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `terminal_pizze`
--

-- --------------------------------------------------------

--
-- Table structure for table `pizze`
--

CREATE TABLE `pizze` (
  `id` int(10) NOT NULL,
  `type_pizze` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `size` varchar(255) NOT NULL,
  `coyc` varchar(255) NOT NULL,
  `price_of_pizze(USD)` int(11) NOT NULL,
  `price_of_sauce(USD)` int(11) NOT NULL,
  `total_price(USD)` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pizze`
--

INSERT INTO `pizze` (`id`, `type_pizze`, `size`, `coyc`, `price_of_pizze(USD)`, `price_of_sauce(USD)`, `total_price(USD)`) VALUES
(27, 'Пепперони', '21cm', 'сырный', 5, 1, 6),
(28, 'Гавайская', '31cm', 'чесночный', 10, 1, 11),
(29, 'Грибная', '45cm', 'барбекю', 15, 2, 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pizze`
--
ALTER TABLE `pizze`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pizze`
--
ALTER TABLE `pizze`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
