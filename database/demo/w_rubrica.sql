-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Gen 26, 2021 alle 18:33
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
-- Struttura della tabella `w_rubrica`
--

CREATE TABLE `w_rubrica` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descrizion` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ragione Sociale',
  `partiva` varchar(17) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Partita IVA',
  `codfiscale` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Codice Fiscale',
  `telefono` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'TELEFONO',
  `telcell` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Telefono Cellulare',
  `persdacont` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Persona da Contattare',
  `posperscon` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Posizione Aziendale della Persona da Contattare',
  `legalerapp` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Legale Rappresentante',
  `email` varchar(80) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Email principale',
  `indirizzo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Indirizzo Sede',
  `cap` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'CAP',
  `localita` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Località',
  `prov` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Provincia',
  `regione` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Regione',
  `codnazione` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Codice Nazione',
  `settore` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Settore Merciologico',
  `statocf` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Stato',
  `sitoweb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Sito Web',
  `agente` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Codice Agente Associato',
  `date_nextvisit` date DEFAULT NULL COMMENT 'Data Prossima Visita Programmata',
  `date_lastvisit` date DEFAULT NULL COMMENT 'Data Ultima Visita Programmata',
  `code_ateco` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Codice Ateco',
  `vote` int(11) NOT NULL DEFAULT '0' COMMENT 'Valutazione',
  `isKkBuyer` tinyint(1) DEFAULT NULL COMMENT 'Acquista Prodotti KK',
  `know_kk` tinyint(1) DEFAULT NULL COMMENT 'Conosce già KK',
  `wants_tryKK` tinyint(1) DEFAULT NULL COMMENT 'Vuole Provare KK',
  `wants_info` tinyint(1) DEFAULT NULL COMMENT 'Vuole Info su KK',
  `prod_note` text COLLATE utf8_unicode_ci COMMENT 'Specifica Altro',
  `prod_other` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Produttore Altro',
  `prod_cucine` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Produttore Cucine',
  `prod_portefinestre` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Produttore Finestre',
  `prod_porte` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Produttore Porte',
  `prod_mobili` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Produttore Mobili',
  `codicecf` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Codice Cliente Associato ARCA',
  `nDipendenti` int(11) DEFAULT NULL COMMENT 'Numero di Dipendenti',
  `isModCarp01` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Modulo Fatto',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'Codice Utente Associato',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `w_rubrica`
--

INSERT INTO `w_rubrica` (`id`, `descrizion`, `partiva`, `codfiscale`, `telefono`, `telcell`, `persdacont`, `posperscon`, `legalerapp`, `email`, `indirizzo`, `cap`, `localita`, `prov`, `regione`, `codnazione`, `settore`, `statocf`, `sitoweb`, `agente`, `date_nextvisit`, `date_lastvisit`, `code_ateco`, `vote`, `isKkBuyer`, `know_kk`, `wants_tryKK`, `wants_info`, `prod_note`, `prod_other`, `prod_cucine`, `prod_portefinestre`, `prod_porte`, `prod_mobili`, `codicecf`, `nDipendenti`, `isModCarp01`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'FELTRINLEGNO S.R.L.', '00659970255', '00659970255', '0437749239', NULL, NULL, NULL, 'FELTRIN BARBARA', 'info@feltrinlegno.it', 'VIALE VASCO SALVATELLI, 6', '32026', 'MEL', 'BELLUNO', 'Veneto', 'IT', 'FALEGNAMERIA', 'T', 'www.feltrinlegno.it', '18', NULL, NULL, '16.23', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 6, 0, 2, '2019-01-29 11:03:51', '2019-02-01 06:44:58', NULL),
(328, 'CULLARO S.R.L.', '01611990845', '01611990845', '', NULL, NULL, NULL, 'CULLARO ROSARIO', 'info@cullaroserramenti.it', 'CONTRADA CONTUBERNA, KM.70,000', '92020', 'SANTO STEFANO QUISQUINA', 'AGRIGENTO', 'Sicilia', 'IT', 'FALEGNAMERIA', 'T', 'www.cullaroserramenti.it', '23', NULL, NULL, '16.23', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 7, 0, 2, '2019-01-29 13:11:44', '2019-01-29 13:11:44', NULL),
(405, 'FOSSATI GIUSEPPE E FIGLI S.R.L.', '00579230061', '00579230061', '0143489880', NULL, NULL, NULL, 'FOSSATI GIORGIO', 'info@fossatigiuseppe.it', 'VIA NOVI, 74', '15060', 'BASALUZZO', 'ALESSANDRIA', 'Piemonte', 'IT', 'FALEGNAMERIA', 'T', 'www.fossatigiuseppe.it', '28', NULL, NULL, '16.23.1', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 4, 0, 2, '2019-01-29 13:12:47', '2019-01-29 13:12:47', NULL),
(538, 'LA3 S.R.L.S.', '02416030423', '02416030423', '0731981294', NULL, NULL, NULL, 'CURZI STEFANO', '', 'ZIN P.I.P.', '60011', 'ARCEVIA', 'ANCONA', 'Marche', 'IT', 'FALEGNAMERIA', 'T', '', '1', NULL, NULL, '16.23', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 7, 0, 2, '2019-01-29 13:13:56', '2019-01-29 13:13:56', NULL),
(641, 'FABBRONI SERRAMENTI IN LEGNO S.R.L.', '00087190518', '00087190518', '0575410193', NULL, NULL, NULL, 'FABBRONI ROBERTO', 'info@fabbroniserramenti.it', 'VIA TAGLIAMENTO, 25', '52041', 'CIVITELLA IN VAL DI CHIANA', 'AREZZO', 'Toscana', 'IT', 'FALEGNAMERIA', 'T', '', '22', NULL, NULL, '16.23.1', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 16, 0, 2, '2019-01-29 13:16:06', '2019-01-29 13:16:06', NULL),
(777, 'SCAMOLLA S.R.L. DI SCAMOLLA ROCCO E FIGLI', '01579030667', '01579030667', '0863842149', NULL, NULL, NULL, 'SCAMOLLA ROCCO', 'info@scamollasrl.it', 'STRADA STATALE 83 MARSICANA, SNC', '67057', 'PESCINA', 'L\'AQUILA', 'Abruzzo', 'IT', 'FALEGNAMERIA', 'T', 'www.scamollasrl.it', '004', NULL, NULL, '16.23', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 3, 0, 2, '2019-01-29 13:17:19', '2019-01-29 13:17:19', NULL),
(863, 'CASTELLANO INFISSI S.P.A.', '02250480643', '02250480643', '082751641', NULL, NULL, NULL, 'CASTELLANO GERARDO', 'info@castellanoinfissi.it', 'VIA ALCIDE DE GASPERI, 34', '83056', 'TEORA', 'AVELLINO', 'Campania', 'IT', 'FALEGNAMERIA', 'T', 'www.castellanoinfissi.it', '48', NULL, NULL, '16.23.1', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 14, 0, 2, '2019-01-29 13:18:36', '2019-01-29 13:18:36', NULL),
(1850, 'ROLFI S.R.L.', '03297910170', '03297910170', '030610160', NULL, NULL, NULL, 'ROLFI CLAUDIO', 'info@rolfisrl.com', 'VIA PADERNO, 8', '25050', 'RODENGO SAIANO', 'BRESCIA', 'Lombardia', 'IT', 'FALEGNAMERIA', 'T', '', '005', NULL, NULL, '16.23', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 15, 0, 2, '2019-01-29 13:27:54', '2019-01-29 13:27:54', NULL),
(2069, 'RI.NOVA S.R.L.', '03508880923', '03508880923', '', NULL, NULL, NULL, 'PINTUS SILVIA', '', 'CORSO VITTORIO EMANUELE II, 400', '09123', 'CAGLIARI', 'CAGLIARI', 'Sardegna', 'IT', 'FALEGNAMERIA', 'T', '', '9', NULL, NULL, '16.23', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 12, 0, 2, '2019-01-29 13:30:11', '2019-01-29 13:30:11', NULL);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `w_rubrica`
--
ALTER TABLE `w_rubrica`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `w_rubrica`
--
ALTER TABLE `w_rubrica`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2209;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;