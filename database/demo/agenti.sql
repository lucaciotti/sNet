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
-- Dump dei dati per la tabella `agenti`
--

INSERT INTO `agenti` (`codice`, `descrizion`, `provv`, `fornitore`, `timestamp`, `email`, `u_capoa`, `u_commessa`, `u_codcli`, `u_dataini`, `u_datafine`, `u_budg1`, `u_kobudg1`, `u_kotarget`) VALUES
('00', 'CLI DIREZIONALE AMMINISTRATIVO', '0', 'F', '2007-11-27 14:54:10', '', '', '', '', NULL, NULL, 0, 0, 0),
('002', 'CAPOAREA LEOPALDI MAURO', '0', 'F01668', '2016-06-24 13:09:15', 'mauro.leopaldi@koblenz.it', '002', '002', 'C04365', NULL, '2008-10-16', 0, 6285000, 0),
('003', 'CAPOAREA POMPONIO', '0', 'F01667', '2016-09-23 06:33:47', 'furio.pomponio@koblenz.it', '002', '003', 'C08458', NULL, '2003-05-20', 0, 770000, 0),
('004', 'FIADONE LUCA', '0', 'F01664', '2016-06-24 13:08:01', 'luca.fiadone@k-group.com', '002', '004', 'C04511', NULL, '2010-06-01', 0, 640000, 0),
('005', 'DE LUCA GIUSEPPE', '0', 'F01665', '2016-09-28 08:31:00', 'giuseppe.deluca@k-group.com', '002', '005', 'C04520', NULL, '2010-07-12', 0, 575000, 0),
('01', 'DIREZIONALE COMMERCIALE', '0', 'F01669', '2015-05-04 14:46:15', 'mauro.leopaldi@k-group.com', '002', '002', '', NULL, NULL, 0, 0, 0),
('1', 'MIGLIORINI MIRKO', '6', 'F00503', '2020-02-17 16:12:28', 'mircomiglio@lgmail.com', '002', 'AG7', 'C02340', NULL, '1992-09-18', 0, 890000, 0),
('100', 'CLI DIREZIONALE AMMINISTRATIVO', '0', 'F', '2007-11-27 14:54:10', '', '', '', 'C', NULL, NULL, 0, 0, 0),
('20', 'PROCACCIATORE GARIN FRANCESCO', '0', 'F09401', '2015-09-24 06:59:00', 'francesco.garin@k-group.com', '002', '', 'C', NULL, NULL, 0, 0, 0),
('21', 'PROCACCIATORE TREVISANI', '6', 'F', '2016-04-07 14:46:31', '', '002', '', 'C', NULL, NULL, 0, 0, 0),
('22', 'GARIN FRANCESCO', '4', 'F09401', '2016-09-28 08:32:52', 'francesco.garin@k-group.com', '002', 'AG6', 'C04611', NULL, '2017-10-01', 0, 570000, 0),
('23', 'COPPOLA STEFANIA', '5', 'F02942', '2016-09-28 08:33:24', 'mimmo.larosa@virgilio.it', '002', 'AG18', 'C08544', NULL, '2017-10-01', 0, 180000, 0),
('28', 'TREVISANI SAVERIO', '4', 'F01406', '2016-09-28 08:32:37', 'saverio.trevisani@k-group.com', '002', 'AG2', 'C03381', NULL, '2012-01-01', 0, 865000, 0),
('48', 'INTICHERO PIERO RAPPRESENTANTE', '4', 'F00249', '2016-06-28 12:40:47', 'Piero.Intinchero@gmail.com', '002', 'AG12', 'C02935', NULL, '1999-03-01', 0, 220000, 0),
('5', 'D\'AMARIO D.I.', '0', 'F', '2015-06-18 13:57:14', '', '', '', '', NULL, NULL, 0, 0, 0),
('88', 'EX MARCONETTI', '0', 'F', '2012-10-17 13:32:37', '', '', '', 'C', NULL, NULL, 0, 0, 0),
('9', 'BENUZZI FABIO', '4', 'F00449', '2016-09-28 08:33:45', 'benuzzif@tiscali.it', '002', 'AG4', 'C04220', NULL, '1993-11-30', 0, 110000, 0),
('A0', 'DIRETTO ESTERO', '0', 'F', '2015-05-04 14:41:35', '', 'A0', 'K05', '', NULL, NULL, 0, 0, 0),
('A15', 'R. SHERWOOD', '4', 'F01751', '2015-11-10 07:29:25', 'rob@rsagencies.com', 'AM2', 'AG11', 'C04901', NULL, '2013-01-01', 0, 0, 0),
('A19', 'GRADENEGGER', '5', 'F00390', '2016-04-11 08:29:32', 'wolfgang@gradenegger.at', 'AM1', 'AG10', 'C04312', NULL, '2008-04-01', 0, 0, 0),
('A2', 'ELLELOGIKA', '5', 'F02186', '2014-10-01 15:08:59', 'ellelogikasrl@gmail.com', 'AM2', '', 'C', NULL, '2011-01-01', 0, 0, 0),
('A21', 'NOVET SPOLKA - PROCACCIATORE', '5', 'F02466', NULL, 'm.makowska@novet.eu', 'AM1', 'AG17', 'C08163', NULL, '2016-12-21', 0, 0, 0),
('A25', 'FRANCESCO DE LUCIA', '0', 'F03065', NULL, 'francesco@fdlinternational.co.uk', 'AM2', '', 'C05628', NULL, NULL, 0, 0, 0),
('A27', 'BIRMAN WOOD & HARDAWARE', '2,5', 'F03165', NULL, 'import.manager1@dom-market.com', 'AM3', '', 'C07722', NULL, '2019-09-10', 0, 0, 0),
('A29', 'PROCACCIATORE CK DESIGN', '3', 'F01558', '2015-11-10 07:28:50', 'erik@ckdesign-int.com', 'AM2', 'AG9', 'C04803', NULL, '2020-01-01', 0, 0, 0),
('AM1', 'AREA MGR (TOMAIUOLO)', '0', 'F01935', '2016-04-19 14:50:26', 'tomaiuolo@k-group.com', 'AM1', 'AM1', 'C05545', NULL, '2018-10-01', 0, 5366000, 0),
('AM2', 'AREA MGR (BROLLO)', '0', 'F00974', '2016-10-19 13:48:18', 'brollo@k-group.com', 'AM2', 'AM2', 'C05471', NULL, '2017-12-04', 0, 2785000, 0),
('AM3', 'AREA MGR (TRANCHINA)', '0', 'F01745', '2016-04-19 14:50:17', 'tranchina@k-group.com', 'AM3', 'AM3', 'C05113', NULL, '2006-07-01', 0, 4730000, 0),
('AM4', 'AREA MGR 4 (DIREZIONALE)', '0', 'F', '2015-11-10 07:31:37', '', 'AM4', 'K05', 'C04413', NULL, '2006-07-01', 0, 0, 0),
('AM5', 'AREA MGR (MKT)', '5', 'F03230', '2016-04-19 14:50:17', 'jerin.james008@gmail.com', '', 'AM5', 'C', NULL, '2020-09-08', 0, 0, 0);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `agenti`
--
ALTER TABLE `agenti`
  ADD PRIMARY KEY (`codice`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
