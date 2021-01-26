-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Gen 26, 2021 alle 18:08
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
-- Struttura della tabella `cligrp`
--

CREATE TABLE `cligrp` (
  `codice` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codice Univoco',
  `descrizion` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Descrizione'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `cligrp`
--

INSERT INTO `cligrp` (`codice`, `descrizion`) VALUES
('001', 'FRANCIA'),
('1KN', 'LISTINO GRUPPO KNAUF'),
('AA', 'KOB 40%'),
('AB', 'KRO 50%'),
('AC', '40%+7% VUOTO GRUPPI'),
('AD', 'KOB 40%+10%'),
('AE', 'KOB 40%+15%'),
('AF', 'KOB 40% + 5%'),
('AH', 'KOB 45%'),
('AK', '45% + 5%'),
('AW', 'KRONA 45+5 KOB 45+5'),
('AY', 'KOB 48%'),
('AZ', 'KOB 50+3%'),
('B0', 'KRO 50+2%'),
('BA', 'KOB 50%'),
('BB', 'KOB 50%+5%'),
('BC', 'KOB 50%+7%'),
('BD', 'KOB 50%+10%'),
('BE', 'KOB 50%+15%'),
('BF', 'KOB 50%+7%'),
('BG', 'KOB 50%+7%'),
('BH', 'KOB 55%'),
('BK', '56%         VUOTO'),
('BW', 'KOB 57%'),
('BY', '58%        VUOTO'),
('BZ', '59%         VUOTO'),
('C0', 'KRO 50+3%'),
('D3', 'KRO  50+18'),
('DE', 'GERMANIA 50+30 KRO 50+20'),
('EC', 'KRO 50+5%'),
('ES', 'KRO 50%+20%'),
('FA', 'KRO 50+6%'),
('FR', 'FRANCIA'),
('GA', 'KRO 50+7%'),
('GW', 'LISTINO W URTH'),
('H0', 'KRO 50+8 %'),
('HO', 'HAEFELE OVERSEAS'),
('HU', 'HAEFELE EUROPE'),
('LC', 'KRO 50+10%'),
('N0', 'KRO 50+12%'),
('O0', 'KRO  50+13%'),
('Q0', 'KRO 50+15%'),
('R0', 'KRO 40%'),
('S0', 'KRO 45%'),
('S3', 'KRO 45+10%'),
('T2', 'KRO 50+15% CONTR.50+20%'),
('Z0', 'KRO 40%'),
('Z1', 'KRO 40+10%'),
('Z2', 'KAO 40+15%'),
('ZM', 'KRO 50+20%'),
('ZN', 'KRONA 50+20% RESTO 50+15%'),
('ZZZ', 'Altro');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `cligrp`
--
ALTER TABLE `cligrp`
  ADD PRIMARY KEY (`codice`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
