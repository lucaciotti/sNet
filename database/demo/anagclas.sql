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
-- Struttura della tabella `anagclas`
--

CREATE TABLE `anagclas` (
  `codice` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codice Univoco',
  `descrizion` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Descrizione'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `anagclas`
--

INSERT INTO `anagclas` (`codice`, `descrizion`) VALUES
('001', 'GRUPPO DIALFER'),
('002', 'GRUPPO GRIFFER'),
('003', 'GRUPPO E/D/E chiuso al 31.12.04'),
('004', 'GRUPPO NORDWEST AG'),
('005', 'GRUPPO W?RTH'),
('006', 'GRUPPO KNAUF'),
('007', 'GRUPPO CONVED'),
('008', 'GRUPPO PENTA EDIL'),
('009', 'GRUPPO SOLECO'),
('010', 'RIVEA'),
('011', 'GRUPPO EDILE CENTRO ITALIA'),
('012', 'GRUPPO HAEFELE'),
('013', 'CONSORZIO G.E.F. SOC. COOP.'),
('014', 'EDILCOM S.C.C. ARL'),
('015', 'GRUPPO MADE'),
('016', 'GRUPPO C.A.E.'),
('019', 'GRUPPO AVANTI'),
('020', 'FILIALE KK'),
('021', 'GROUPE BENETEAU'),
('022', 'R & R - AUSTRIA'),
('023', 'JELD WEN'),
('024', 'MEESENBURG'),
('025', 'ALLEGION'),
('032', 'STUDCO BUILDING SYSTEMS'),
('106', 'CYLIQ FRANCIA'),
('107', 'GRUPPO GROCO'),
('108', 'DISTRIBUTORE KRONA'),
('16', 'GRUPPO BAIER'),
('17', 'Gruppo Polymerservice - Ucraina'),
('18', 'Union Group - Union Doors - Russia'),
('19', 'GRUPPO SCHACHERMAYER'),
('20', 'GRUPPO ODOERFER'),
('21', 'SANTENS GROUP'),
('22', 'GRUPPO MASTERMATE'),
('23', 'GRUPPO INTESA - BULGARIA'),
('24', 'Gruppo HERBERS'),
('PR1', 'FORN. SOGGETTO A NOMINA RESP.TRATTAMENTO'),
('ZZZ', 'Escluso dalle statistiche');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `anagclas`
--
ALTER TABLE `anagclas`
  ADD PRIMARY KEY (`codice`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
