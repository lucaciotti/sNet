-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Gen 26, 2021 alle 18:40
-- Versione del server: 10.1.37-MariaDB-0+deb9u1
-- Versione PHP: 7.2.14-1+0~20190113100742.14+stretch~1.gbpd83c69

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kNet`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `roles`
--


--
-- Dump dei dati per la tabella `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'User Administrator', 'One Role to Rule them All', '2016-08-30 06:53:24', '2016-08-30 06:53:24'),
(2, 'agent', 'Agente Commerciale', 'Agente Commerciale', '2016-08-30 06:53:24', '2016-08-30 06:53:24'),
(3, 'client', 'Cliente K-Group', 'Cliente di Krona Koblenz', '2016-08-30 06:53:24', '2016-08-30 06:53:24'),
(4, 'superAgent', 'Capoarea / Export Manager', 'Agente Commerciale con visualizzazioni speciali', '2016-08-30 06:53:24', '2016-08-30 06:53:24'),
(5, 'direz', 'Direzione', 'Utente Direzionale', '2016-08-30 06:53:24', '2016-08-30 06:53:24'),
(6, 'commerc', 'Commerciale', 'Utente generico Commerciale', '2016-08-30 06:53:24', '2016-08-30 06:53:24'),
(7, 'user', 'User', 'Generic User', '2016-10-21 12:26:03', '2016-10-21 12:26:03');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
