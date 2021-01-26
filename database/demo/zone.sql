-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Gen 26, 2021 alle 18:36
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
-- Struttura della tabella `zone`
--

CREATE TABLE `zone` (
  `codice` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codice Univoco',
  `descrizion` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `zone`
--

INSERT INTO `zone` (`codice`, `descrizion`) VALUES
('AA', 'AOSTA -VALLE D\'AOSTA-'),
('AE', 'EMIRATI ARABI UNITI'),
('BA', 'TORINO -PIEMONTE-'),
('BB', 'ALESSANDRIA -PIEMONTE-'),
('BC', 'ASTI -PIEMONTE-'),
('BD', 'BIELLA -PIEMONTE-'),
('BE', 'CUNEO -PIEMONTE-'),
('BF', 'NOVARA -PIEMONTE-'),
('BG', 'VERBANIA -PIEMONTE-'),
('BH', 'VERCELLI -PIEMONTE-'),
('BT', 'ANDRIA BARLETTA TRANI'),
('CA', 'MILANO -LOMBARDIA-'),
('CB', 'BERGAMO -LOMBARDIA-'),
('CC', 'BRESCIA -LOMBARDIA-'),
('CD', 'COMO -LOMBARDIA-'),
('CE', 'CREMONA -LOMBARDIA-'),
('CF', 'LECCO -LOMBARDIA-'),
('CG', 'LODI -LOMBARDIA-'),
('CH', 'MANTOVA -LOMBARDIA-'),
('CI', 'PAVIA -LOMBARDIA-'),
('CL', 'SONDRIO -LOMBARDIA-'),
('CM', 'VARESE -LOMBARDIA-'),
('CN', 'MONZA E  BRIANZA -LOMBARDIA'),
('DA', 'VENEZIA -VENETO-'),
('DB', 'BELLUNO -VENETO-'),
('DC', 'PADOVA -VENETO-'),
('DD', 'ROVIGO -VENETO-'),
('DE', 'TREVISO -VENETO-'),
('DF', 'VICENZA -VENETO-'),
('DG', 'VERONA -VENETO-'),
('EA', 'TRENTO -TRENTINO ALTO ADIGE-'),
('EB', 'BOLZANO -TRENTINO ALTO ADIGE-'),
('FA', 'TRIESTE -FRIULI VENEZIA G.-'),
('FB', 'GORIZIA -FRIULI VENEZIA G.-'),
('FC', 'PORDENONE -FRIULI VENEZIA G.-'),
('FD', 'UDINE -FRIULI VENEZIA G.-'),
('GA', 'GENOVA -LIGURIA-'),
('GB', 'IMPERIA -LIGURIA-'),
('GC', 'LA SPEZIA -LIGURIA-'),
('GD', 'SAVONA -LIGURIA-'),
('HA', 'BOLOGNA -EMILIA ROMAGNA-'),
('HB', 'FERRARA -EMILIA ROMAGNA-'),
('HC', 'FORLI\' -EMILIA ROMAGNA-'),
('HD', 'MODENA -EMILIA ROMAGNA-'),
('HE', 'PIACENZA -EMILIA ROMAGNA-'),
('HF', 'PARMA -EMILIA ROMAGNA-'),
('HG', 'RAVENNA -EMILIA ROMAGNA-'),
('HH', 'REGGIO EMILIA -EMILIA ROMAGNA-'),
('HI', 'RIMINI -EMILIA ROMAGNA-'),
('IA', 'FIRENZE -TOSCANA-'),
('IB', 'AREZZO -TOSCANA-'),
('IC', 'GROSSETO -TOSCANA-'),
('ID', 'LIVORNO -TOSCANA-'),
('IE', 'LUCCA -TOSCANA-'),
('IF', 'MASSA C. -TOSCANA-'),
('IG', 'PISA -TOSCANA-'),
('IH', 'PRATO -TOSCANA-'),
('II', 'PISTOIA -TOSCANA-'),
('IL', 'SIENA -TOSCANA-'),
('LA', 'ANCONA -MARCHE-'),
('LB', 'ASCOLI PICENO -MARCHE-'),
('LC', 'MACERATA -MARCHE-'),
('LD', 'PESARO -MARCHE-'),
('LE', 'FERMO-MARCHE'),
('MA', 'PERUGIA -UMBRIA-'),
('MB', 'TERNI -UMBRIA-'),
('NA', 'L\'AQUILA -ABRUZZO-'),
('NB', 'CHIETI -ABRUZZO-'),
('NC', 'PESCARA -ABRUZZO-'),
('ND', 'TERAMO -ABRUZZO-'),
('OA', 'ROMA -LAZIO-'),
('OB', 'FROSINONE -LAZIO-'),
('OC', 'LATINA -LAZIO-'),
('OD', 'RIETI -LAZIO-'),
('OE', 'VITERBO -LAZIO-'),
('PA', 'CAMPOBASSO -MOLISE-'),
('PB', 'ISERNIA -MOLISE-'),
('QA', 'NAPOLI -CAMPANIA-'),
('QB', 'AVELLINO -CAMPANIA-'),
('QC', 'BENEVENTO -CAMPANIA-'),
('QD', 'CASERTA -CAMPANIA-'),
('QE', 'SALERNO -CAMPANIA-'),
('RA', 'BARI -PUGLIA-'),
('RB', 'LECCE -PUGLIA-'),
('RC', 'TARANTO -PUGLIA-'),
('RD', 'BRINDISI -PUGLIA-'),
('RE', 'FOGGIA -PUGLIA-'),
('RSM', 'REPUBBLICA DI SAN MARINO'),
('SA', 'POTENZA -BASILICATA-'),
('SB', 'MATERA -BASILICATA-'),
('TA', 'CATANZARO -CALABRIA-'),
('TB', 'COSENZA -CALABRIA-'),
('TC', 'CROTONE -CALABRIA-'),
('TD', 'REGGIO CALABRIA -CALABRIA-'),
('TE', 'VIBO VALENTIA -CALABRIA-'),
('UA', 'PALERMO -SICILIA-'),
('UB', 'AGRIGENTO -SICILIA-'),
('UC', 'CALTANISETTA -SICILIA-'),
('UD', 'CATANIA -SICILIA-'),
('UE', 'ENNA -SICILIA-'),
('UF', 'MESSINA -SICILIA-'),
('UG', 'RAGUSA -SICILIA-'),
('UH', 'SIRACUSA -SICILIA-'),
('UI', 'TRAPANI -SICILIA-'),
('VA', 'CAGLIARI -SARDEGNA-'),
('VB', 'NUORO -SARDEGNA-'),
('VC', 'ORISTANO -SARDEGNA-'),
('VD', 'SASSARI -SARDEGNA-'),
('VE', 'OLBIA-TEMPIO -SARDEGNA-');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`codice`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
