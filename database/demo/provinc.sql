-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Gen 26, 2021 alle 18:21
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
-- Struttura della tabella `provinc`
--

CREATE TABLE `provinc` (
  `codice` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codice Univoco',
  `descrizion` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `provinc`
--

INSERT INTO `provinc` (`codice`, `descrizion`) VALUES
('AG', 'AGRIGENTO'),
('AL', 'ALESSANDRIA'),
('AN', 'ANCONA'),
('AO', 'AOSTA'),
('AP', 'ASCOLI PICENO'),
('AQ', 'L\'AQUILA'),
('AR', 'AREZZO'),
('AT', 'ASTI'),
('AV', 'AVELLINO'),
('BA', 'BARI'),
('BG', 'BERGAMO'),
('BI', 'BIELLA'),
('BL', 'BELLUNO'),
('BN', 'BENEVENTO'),
('BO', 'BOLOGNA'),
('BR', 'BRINDISI'),
('BS', 'BRESCIA'),
('BT', 'BARLETTA'),
('BZ', 'BOLZANO'),
('CA', 'CAGLIARI'),
('CB', 'CAMPOBASSO'),
('CE', 'CASERTA'),
('CH', 'CHIETI'),
('CL', 'CALTANISETTA'),
('CN', 'CUNEO'),
('CO', 'COMO'),
('CR', 'CREMONA'),
('CS', 'COSENZA'),
('CT', 'CATANIA'),
('CZ', 'CATANZARO'),
('EN', 'ENNA'),
('FC', 'FORLI'),
('FE', 'FERRARA'),
('FG', 'FOGGIA'),
('FI', 'FIRENZE'),
('FM', 'FERMO'),
('FR', 'FROSINONE'),
('GE', 'GENOVA'),
('GO', 'GORIZIA'),
('GR', 'GROSSETO'),
('IM', 'IMPERIA'),
('IS', 'ISERNIA'),
('KR', 'CROTONE'),
('LC', 'LECCO'),
('LE', 'LECCE'),
('LI', 'LIVORNO'),
('LO', 'LODI'),
('LT', 'LATINA'),
('LU', 'LUCCA'),
('MB', 'MONZA E DELLA BRIANZA'),
('MC', 'MACERATA'),
('ME', 'MESSINA'),
('MI', 'MILANO'),
('MN', 'MANTOVA'),
('MO', 'MODENA'),
('MS', 'MASSA CARRARA'),
('MT', 'MATERA'),
('NA', 'NAPOLI'),
('NO', 'NOVARA'),
('NU', 'NUORO'),
('OR', 'ORISTANO'),
('PA', 'PALERMO'),
('PC', 'PIACENZA'),
('PD', 'PADOVA'),
('PE', 'PESCARA'),
('PG', 'PERUGIA'),
('PI', 'PISA'),
('PN', 'PORDENONE'),
('PO', 'PRATO'),
('PR', 'PARMA'),
('PS', 'PESARO'),
('PT', 'PISTOIA'),
('PV', 'PAVIA'),
('PZ', 'POTENZA'),
('RA', 'RAVENNA'),
('RC', 'REGGIO CALABRIA'),
('RE', 'REGGIO EMILIA'),
('RG', 'RAGUSA'),
('RI', 'RIETI'),
('RM', 'ROMA'),
('RN', 'RIMINI'),
('RO', 'ROVIGO'),
('SA', 'SALERNO'),
('SI', 'SIENA'),
('SO', 'SONDRIO'),
('SP', 'LA SPEZIA'),
('SR', 'SIRACUSA'),
('SS', 'SASSARI'),
('SV', 'SAVONA'),
('TA', 'TARANTO'),
('TE', 'TERAMO'),
('TN', 'TRENTO'),
('TO', 'TORINO'),
('TP', 'TRAPANI'),
('TR', 'TERNI'),
('TS', 'TRIESTE'),
('TV', 'TREVISO'),
('UD', 'UDINE'),
('VA', 'VARESE'),
('VB', 'VERBANIA'),
('VC', 'VERCELLI'),
('VE', 'VENEZIA'),
('VI', 'VICENZA'),
('VR', 'VERONA'),
('VT', 'VITERBO'),
('VV', 'VIBO VALENTIA');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `provinc`
--
ALTER TABLE `provinc`
  ADD PRIMARY KEY (`codice`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
