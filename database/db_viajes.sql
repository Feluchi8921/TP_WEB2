-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2022 at 03:04 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_viajes`
--

-- --------------------------------------------------------

--
-- Table structure for table `automoviles`
--

CREATE TABLE `automoviles` (
  `id_automovil` int(100) NOT NULL,
  `marca` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `modelo` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `anio` int(5) NOT NULL,
  `color` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `patente` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `licencia` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `automoviles`
--

INSERT INTO `automoviles` (`id_automovil`, `marca`, `modelo`, `anio`, `color`, `patente`, `licencia`) VALUES
(1, 'CITROEN', 'C3', 2002, 'NEGRO', 'FGH123', '44345678'),
(3, 'CHEVROLET', 'CRUZE', 2022, 'NEGRO', 'AF123CG', '23456983');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(1, 'admin1@gmail.com', '$2a$12$xbGFoxZYr.3BhVgBqIvLqOBpVwouDiCDwIvrfwiQGJtnqNJmrNkpG'),
(2, 'admin2@gmail.com', '$2a$12$KVnwtgUykwBRg2xADwXQS.qIcialBJcaVHmHO55.so/ASWGgOZTLW');

-- --------------------------------------------------------

--
-- Table structure for table `viajes`
--

CREATE TABLE `viajes` (
  `id_viaje` int(100) NOT NULL,
  `salida` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `destino` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `dia` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `horario` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `lugares` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `mascota` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `precio` varchar(8) COLLATE utf8mb4_spanish_ci NOT NULL,
  `datos` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `id_automovil` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `viajes`
--

INSERT INTO `viajes` (`id_viaje`, `salida`, `destino`, `dia`, `horario`, `lugares`, `mascota`, `precio`, `datos`, `id_automovil`) VALUES
(1, 'Balcarse', 'Tandil', '2023-12-12', '23:00', '2', 'ninguna', '1300', '', 1),
(3, 'Azul', 'Bolivar', '2022-12-24', '15:00', '2', 'perro', '2500', '', 3),
(4, 'Tandil', 'San Alberto', '2022-12-03', '12:00', '1', 'gato', '2400', 'Gato en canil sin excepcion', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `automoviles`
--
ALTER TABLE `automoviles`
  ADD PRIMARY KEY (`id_automovil`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `viajes`
--
ALTER TABLE `viajes`
  ADD PRIMARY KEY (`id_viaje`),
  ADD KEY `id_automovil` (`id_automovil`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `automoviles`
--
ALTER TABLE `automoviles`
  MODIFY `id_automovil` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `viajes`
--
ALTER TABLE `viajes`
  MODIFY `id_viaje` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `viajes`
--
ALTER TABLE `viajes`
  ADD CONSTRAINT `viajes_ibfk_1` FOREIGN KEY (`id_automovil`) REFERENCES `automoviles` (`id_automovil`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
