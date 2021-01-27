-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Gen 26, 2021 alle 18:22
-- Versione del server: 10.1.37-MariaDB-0+deb9u1
-- Versione PHP: 7.2.14-1+0~20190113100742.14+stretch~1.gbpd83c69

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kNet_it`
--

-- --------------------------------------------------------

--
-- Dump dei dati per la tabella `sollec`
--

INSERT INTO `sollec` (`codice`, `descrizion`) VALUES
('001', 'SOLLECITO DI PAGAMENTO'),
('002', 'SECONDO SOLLECITO'),
('003', 'TERZO SOLLECITO'),
('004', 'SOLLECITO MATERIALE'),
('005', 'RIMESSA DIRETTA VISTA FATTURA'),
('999', 'AVVOCATO'),
('CCD', 'VERIFICA MESSA A PERDITA'),
('D1', 'SOLLECITO TEDESCO'),
('E1', 'SOLLECITO SPAGNOLO'),
('F1', 'SOLLECITO FRANCESE'),
('GB1', 'SOLLECITO INGLESE');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `sollec`
--
ALTER TABLE `sollec`
  ADD PRIMARY KEY (`codice`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
