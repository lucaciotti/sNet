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
-- Struttura della tabella `staticf`
--

CREATE TABLE `staticf` (
  `codice` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codice Univoco',
  `descrizion` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `staticf`
--

INSERT INTO `staticf` (`codice`, `descrizion`) VALUES
('A', 'PAGAMENTO ANTICIPATO'),
('C', 'CLIENTE CHIUSO'),
('F', 'FORNITORE CHIUSO'),
('I', 'Attenzione Insoluti'),
('L', 'PROCEDURE LEGALE'),
('M', 'RIMESSE DIRETTE INSOLUTE'),
('N', 'Normale'),
('O', 'PAGAMENTO IN CONTRASSEGNO'),
('S', 'SOSPESO'),
('T', 'Cliente attivo'),
('U', 'fornitore attivo');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `staticf`
--
ALTER TABLE `staticf`
  ADD PRIMARY KEY (`codice`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
