-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Gen 26, 2021 alle 18:27
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
-- Struttura della tabella `w_mcarp01_sysKnown`
--

CREATE TABLE `w_mcarp01_sysKnown` (
  `id` int(10) UNSIGNED NOT NULL,
  `mcarp01_id` bigint(20) UNSIGNED NOT NULL,
  `sysmkt_cod` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `w_mcarp01_sysKnown`
--

INSERT INTO `w_mcarp01_sysKnown` (`id`, `mcarp01_id`, `sysmkt_cod`, `created_at`, `updated_at`) VALUES
(1, 15, 'KU01', '2019-02-21 08:56:09', '2019-02-21 08:56:09'),
(4, 16, 'KZ01', '2019-02-21 08:58:35', '2019-02-21 08:58:35'),
(5, 16, 'KU01', '2019-02-21 08:58:35', '2019-02-21 08:58:35'),
(6, 17, 'KU', '2019-02-21 09:06:58', '2019-02-21 09:06:58'),
(7, 18, 'KZ01', '2019-02-21 09:08:35', '2019-02-21 09:08:35'),
(8, 18, 'KU', '2019-02-21 09:08:35', '2019-02-21 09:08:35'),
(9, 19, 'KZ01', '2019-02-21 09:13:32', '2019-02-21 09:13:32'),
(10, 19, 'KU', '2019-02-21 09:13:32', '2019-02-21 09:13:32'),
(15, 49, 'KZ01', '2019-07-17 12:59:44', '2019-07-17 12:59:44'),
(16, 49, 'KU01', '2019-07-17 12:59:44', '2019-07-17 12:59:44'),
(21, 48, 'KU01', '2019-11-29 16:20:42', '2019-11-29 16:20:42');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `w_mcarp01_sysKnown`
--
ALTER TABLE `w_mcarp01_sysKnown`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `w_mcarp01_sysKnown`
--
ALTER TABLE `w_mcarp01_sysKnown`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
