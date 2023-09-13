-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2023 at 08:23 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baza1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabela`
--

CREATE TABLE `tabela` (
  `ime` varchar(40) NOT NULL,
  `prezime` varchar(50) NOT NULL,
  `pol` varchar(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `broj` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabela`
--

INSERT INTO `tabela` (`ime`, `prezime`, `pol`, `email`, `broj`) VALUES
('Andjela', 'Stankovic', 'z', 'andjelastankovic2016@gmail.com', 2147483647),
('Luka', 'Simic', 'm', 'lukasimic@gmail.com', 2141324134),
('Milutin', 'Milic', 'm', 'milutinmilic@gmail.com', 2147483647),
('Novak', 'Djokovic', 'm', 'najbolji.na.svetu@gmail.com', 2147483647),
('Sofija', 'Stojanovic', 'z', 'sofijas@gmail.com', 1244353552);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabela`
--
ALTER TABLE `tabela`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
