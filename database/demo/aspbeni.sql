-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Gen 26, 2021 alle 18:07
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
-- Dump dei dati per la tabella `aspbeni`
--

INSERT INTO `aspbeni` (`codice`, `descrizion`) VALUES
('AV', 'A VISTA'),
('BA', 'BANCALI'),
('BAF', 'BANCALI / FASCI'),
('BC', 'BANCALI /SCAT. CARTONE'),
('BPV', 'BANCALI E CONTENITORE PVC'),
('BSC', 'BANCALI / SCATOLE CARTONE'),
('BSF', 'BANCALI / CARTONI / FASCI'),
('BUS', 'BUSTA'),
('CA', 'SCATOLE CARTONI'),
('CAS', 'CASSE LEGNO'),
('CF', 'CARTONI E FASCI'),
('CFE', 'CONTENITORE IN FERRO'),
('FA', 'FASCI'),
('LL', 'LEGNO LAVORATO'),
('PAL', 'PALLET'),
('PEL', 'PELLICOLA'),
('PVC', 'CONTENITORI IN PVC.'),
('SAC', 'SACCHI'),
('SC', 'SCATOLE'),
('SCT', 'SCATOLE E TUBI CARTONE'),
('SEF', 'SCATOLE CARTONI E FASCI'),
('TC', 'TUBI CARTONE');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `aspbeni`
--
ALTER TABLE `aspbeni`
  ADD PRIMARY KEY (`codice`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
