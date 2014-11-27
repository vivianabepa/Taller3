-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 27, 2014 at 04:43 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `PlacesGoogleM`
--

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE IF NOT EXISTS `places` (
  `id` text NOT NULL,
  `nombre` text NOT NULL,
  `coordenadas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `nombre`, `coordenadas`) VALUES
('restaurantes', 'Simon Parrilla', '\r\n3.398838, -76.489994\r\n'),
('restaurantes', 'Patada de la Mula', '\r\n3.345352, -76.530338\r\n'),
('restaurantes', 'El Arca Cocina Fusion', '\r\n3.434128, -76.527248\r\n'),
('restaurantes', 'Rodizio Do Brazil', '\r\n3.337480, -76.514545\r\n'),
('restaurantes', 'Sandwich Qbano', '\r\n3.348750, -76.529496\r\n'),
('hoteles', 'Hotel Radisson', '\r\n3.371285, -76.534002\r\n'),
('hoteles', 'Four Points by Sheraton Cali', '\r\n3.457649, -76.512029\r\n'),
('hoteles', 'Hotel Dann Carlton', '\r\n3.450418, -76.540072\r\n'),
('hoteles', 'Hotel Intercontinental', '\r\n3.450204, -76.538645\r\n'),
('hoteles', 'San Antonio Hotel Boutique', '\r\n3.447376, -76.539149\r\n'),
('cajeros', 'Cajeros Bancolombia', '\r\n3.427155, -76.536984\r\n'),
('cajeros', 'Cajeros Banco Popular', '\r\n3.427065, -76.537019\r\n'),
('cajeros', 'Cajeros Citibank', '\r\n3.375203, -76.537457\r\n'),
('cajeros', 'Cajero Automatico Banco de Bogota', '\r\n3.369243, -76.528961\r\n'),
('cajeros', 'Cajero Automatico Davivienda', '\r\n3.369318, -76.529841\r\n');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
