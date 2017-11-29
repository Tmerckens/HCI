-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 29 nov 2017 om 16:26
-- Serverversie: 10.1.26-MariaDB
-- PHP-versie: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `got`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `characters`
--

CREATE TABLE `characters` (
  `character_ID` int(11) NOT NULL,
  `character_name` varchar(30) NOT NULL,
  `character_house` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `characters`
--

INSERT INTO `characters` (`character_ID`, `character_name`, `character_house`) VALUES
(1, 'Jon Snow', 'Stark'),
(2, 'Bran Stark', 'Stark'),
(3, 'Eddard Stark', 'Stark'),
(4, 'Robb Stark', 'Stark'),
(5, 'Rickon Stark', 'Stark'),
(6, 'Sansa Stark', 'Stark'),
(7, 'Arya Stark', 'Stark'),
(8, 'Lady Catelyn', 'Stark'),
(9, 'Theon Greyjoy', 'Greyjoy'),
(10, 'Cersei Lannister', 'Lannister'),
(11, 'Tyrion Lannister', 'Lannister'),
(12, 'Jamie Lannister', 'Lannister'),
(13, 'Joffrey Baratheon', 'Lannister'),
(14, 'Robert Baratheon', 'Stark'),
(15, 'Khal Drogo', 'Drogo'),
(16, 'Daenerys Targaryen', 'Targaryen'),
(17, 'Viserys Targaryen', 'Targaryen'),
(18, 'Jorah Mormont', 'Mormont'),
(19, 'Myrcella Baratheon', 'Baratheon'),
(20, 'Tommen Baratheon', 'Baratheon'),
(21, 'Petyr Baelish', 'Baelish'),
(22, 'Varys', 'none'),
(23, 'Samwell Tarly', 'Tarly'),
(24, 'Hodor', 'none'),
(25, 'Lysa Arryn', 'Arryn'),
(26, 'Robin Arryn', 'Arryn'),
(27, 'Tywin Lannister', 'Lannister');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `character_connections`
--

CREATE TABLE `character_connections` (
  `connection_ID` int(11) NOT NULL,
  `character_name1` text NOT NULL,
  `character_name2` text NOT NULL,
  `connection_start_episode` int(11) NOT NULL,
  `connection_end_episode` int(11) NOT NULL,
  `connection_type` varchar(1) NOT NULL COMMENT 'H = Hostile, F = friendly, N = neutral'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `character_positions`
--

CREATE TABLE `character_positions` (
  `Character ID` int(11) NOT NULL,
  `S1E0` int(11) DEFAULT NULL,
  `S1E1` int(11) DEFAULT NULL,
  `S1E2` int(11) DEFAULT NULL,
  `S1E3` int(11) DEFAULT NULL,
  `S1E4` int(11) DEFAULT NULL,
  `S1E5` int(11) DEFAULT NULL,
  `S1E6` int(11) DEFAULT NULL,
  `S1E7` int(11) DEFAULT NULL,
  `S1E8` int(11) DEFAULT NULL,
  `S1E9` int(11) DEFAULT NULL,
  `S1E10` int(11) DEFAULT NULL,
  `S2E1` int(11) DEFAULT NULL,
  `S2E2` int(11) DEFAULT NULL,
  `S2E3` int(11) DEFAULT NULL,
  `S2E4` int(11) DEFAULT NULL,
  `S2E5` int(11) DEFAULT NULL,
  `S2E6` int(11) DEFAULT NULL,
  `S2E7` int(11) DEFAULT NULL,
  `S2E8` int(11) DEFAULT NULL,
  `S2E9` int(11) DEFAULT NULL,
  `S2E10` int(11) DEFAULT NULL,
  `S3E1` int(11) DEFAULT NULL,
  `S3E2` int(11) DEFAULT NULL,
  `S3E3` int(11) DEFAULT NULL,
  `S3E4` int(11) DEFAULT NULL,
  `S3E5` int(11) DEFAULT NULL,
  `S3E6` int(11) DEFAULT NULL,
  `S3E7` int(11) DEFAULT NULL,
  `S3E8` int(11) DEFAULT NULL,
  `S3E9` int(11) DEFAULT NULL,
  `S3E10` int(11) DEFAULT NULL,
  `S4E1` int(11) DEFAULT NULL,
  `S4E2` int(11) DEFAULT NULL,
  `S4E3` int(11) DEFAULT NULL,
  `S4E4` int(11) DEFAULT NULL,
  `S4E5` int(11) DEFAULT NULL,
  `S4E6` int(11) DEFAULT NULL,
  `S4E7` int(11) DEFAULT NULL,
  `S4E8` int(11) DEFAULT NULL,
  `S4E9` int(11) DEFAULT NULL,
  `S4E10` int(11) DEFAULT NULL,
  `S5E1` int(11) DEFAULT NULL,
  `S5E2` int(11) DEFAULT NULL,
  `S5E3` int(11) DEFAULT NULL,
  `S5E4` int(11) DEFAULT NULL,
  `S5E5` int(11) DEFAULT NULL,
  `S5E6` int(11) DEFAULT NULL,
  `S5E7` int(11) DEFAULT NULL,
  `S5E8` int(11) DEFAULT NULL,
  `S5E9` int(11) DEFAULT NULL,
  `S5E10` int(11) DEFAULT NULL,
  `S6E1` int(11) DEFAULT NULL,
  `S6E2` int(11) DEFAULT NULL,
  `S6E3` int(11) DEFAULT NULL,
  `S6E4` int(11) DEFAULT NULL,
  `S6E5` int(11) DEFAULT NULL,
  `S6E6` int(11) DEFAULT NULL,
  `S6E7` int(11) DEFAULT NULL,
  `S6E8` int(11) DEFAULT NULL,
  `S6E9` int(11) DEFAULT NULL,
  `S6E10` int(11) DEFAULT NULL,
  `S7E1` int(11) DEFAULT NULL,
  `S7E2` int(11) DEFAULT NULL,
  `S7E3` int(11) DEFAULT NULL,
  `S7E4` int(11) DEFAULT NULL,
  `S7E5` int(11) DEFAULT NULL,
  `S7E6` int(11) DEFAULT NULL,
  `S7E7` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `character_positions`
--

INSERT INTO `character_positions` (`Character ID`, `S1E0`, `S1E1`, `S1E2`, `S1E3`, `S1E4`, `S1E5`, `S1E6`, `S1E7`, `S1E8`, `S1E9`, `S1E10`, `S2E1`, `S2E2`, `S2E3`, `S2E4`, `S2E5`, `S2E6`, `S2E7`, `S2E8`, `S2E9`, `S2E10`, `S3E1`, `S3E2`, `S3E3`, `S3E4`, `S3E5`, `S3E6`, `S3E7`, `S3E8`, `S3E9`, `S3E10`, `S4E1`, `S4E2`, `S4E3`, `S4E4`, `S4E5`, `S4E6`, `S4E7`, `S4E8`, `S4E9`, `S4E10`, `S5E1`, `S5E2`, `S5E3`, `S5E4`, `S5E5`, `S5E6`, `S5E7`, `S5E8`, `S5E9`, `S5E10`, `S6E1`, `S6E2`, `S6E3`, `S6E4`, `S6E5`, `S6E6`, `S6E7`, `S6E8`, `S6E9`, `S6E10`, `S7E1`, `S7E2`, `S7E3`, `S7E4`, `S7E5`, `S7E6`, `S7E7`) VALUES
(1, 1, 1, 67, 67, 68, 68, 68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 2, 2, 2, 2, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 3, 58, 27, 27, 27, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 4, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 5, 3, 3, 3, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 6, 59, 28, 28, 28, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, 7, 60, 29, 29, 29, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, 8, 73, 47, 58, 87, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, 9, 4, 4, 4, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 51, 21, 61, 30, 30, 30, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 27, 22, 68, 68, 59, 88, 91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 28, 23, 62, 31, 31, 31, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 29, 24, 63, 32, 32, 32, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 30, 25, 64, 51, 51, 51, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 52, 52, 74, 79, 84, 84, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 53, 53, 75, 80, 85, 85, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 54, 54, 76, 81, 86, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 55, 55, 77, 82, 83, 83, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 31, 20, 65, 40, 40, 40, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 32, 19, 66, 38, 38, 38, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, NULL, NULL, 33, 33, 33, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, NULL, NULL, 34, 34, 34, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, NULL, NULL, NULL, NULL, 69, 69, 69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, NULL, NULL, NULL, 5, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, NULL, NULL, NULL, NULL, NULL, 89, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, NULL, NULL, NULL, NULL, NULL, 90, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, NULL, NULL, NULL, NULL, NULL, NULL, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `position_id_x_y`
--

CREATE TABLE `position_id_x_y` (
  `position_block_number` int(11) NOT NULL,
  `x_value` int(11) NOT NULL,
  `y_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `position_id_x_y`
--

INSERT INTO `position_id_x_y` (`position_block_number`, `x_value`, `y_value`) VALUES
(1, 6, 8),
(2, 5, 8),
(3, 5, 7),
(4, 5, 9),
(5, 6, 7),
(6, 6, 9),
(7, 7, 7),
(8, 7, 8),
(9, 7, 9),
(10, 4, 8),
(11, 4, 7),
(12, 4, 9),
(13, 4, 6),
(14, 4, 10),
(15, 5, 6),
(16, 5, 10),
(17, 6, 10),
(18, 6, 6),
(19, 7, 10),
(20, 7, 6),
(21, 8, 7),
(22, 8, 9),
(23, 8, 6),
(24, 8, 10),
(25, 8, 8),
(26, 8, 7),
(27, 19, 10),
(28, 21, 10),
(29, 19, 9),
(30, 20, 9),
(31, 21, 9),
(32, 19, 11),
(33, 20, 11),
(34, 21, 11),
(35, 18, 9),
(36, 18, 10),
(37, 18, 11),
(38, 22, 9),
(39, 22, 11),
(40, 22, 10),
(41, 19, 12),
(42, 20, 12),
(43, 21, 12),
(44, 19, 8),
(45, 20, 8),
(46, 21, 8),
(47, 18, 8),
(48, 22, 8),
(49, 22, 12),
(50, 18, 12),
(51, 20, 10),
(52, 20, 18),
(53, 19, 18),
(54, 21, 18),
(55, 20, 19),
(56, 19, 19),
(57, 21, 19),
(58, 15, 8),
(59, 16, 8),
(60, 14, 8),
(61, 15, 7),
(62, 16, 7),
(63, 16, 9),
(64, 14, 7),
(65, 14, 9),
(66, 15, 9),
(67, 1, 8),
(68, 1, 9),
(69, 1, 10),
(70, 2, 8),
(71, 2, 9),
(72, 2, 10),
(73, 11, 6),
(74, 22, 26),
(75, 23, 26),
(76, 22, 27),
(77, 23, 27),
(78, 23, 37),
(79, 23, 36),
(80, 22, 35),
(81, 22, 36),
(82, 23, 35),
(83, 17, 44),
(84, 16, 44),
(85, 17, 45),
(86, 16, 45),
(87, 15, 11),
(88, 15, 12),
(89, 16, 11),
(90, 16, 12),
(91, 15, 8),
(92, 20, 4),
(93, 21, 4),
(94, 21, 5),
(95, 20, 5);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`character_ID`),
  ADD UNIQUE KEY `Character Name` (`character_name`);

--
-- Indexen voor tabel `character_connections`
--
ALTER TABLE `character_connections`
  ADD PRIMARY KEY (`connection_ID`);

--
-- Indexen voor tabel `character_positions`
--
ALTER TABLE `character_positions`
  ADD PRIMARY KEY (`Character ID`),
  ADD UNIQUE KEY `S6E2` (`S6E2`,`S6E3`,`S6E4`,`S6E5`,`S6E6`,`S6E7`,`S6E8`,`S6E9`,`S6E10`,`S7E1`,`S7E2`,`S7E3`,`S7E4`,`S7E5`,`S7E6`,`S7E7`),
  ADD UNIQUE KEY `S3E5` (`S3E5`,`S3E6`,`S3E7`,`S3E8`,`S3E9`,`S3E10`,`S4E1`,`S4E2`,`S4E3`,`S4E4`,`S4E5`,`S4E6`,`S4E7`,`S4E8`,`S4E9`,`S4E10`,`S5E1`,`S5E2`,`S5E3`,`S5E4`,`S5E5`,`S5E6`,`S5E7`,`S5E8`,`S5E9`,`S5E10`,`S6E1`),
  ADD UNIQUE KEY `S3E3` (`S3E3`),
  ADD UNIQUE KEY `S3E4` (`S3E4`),
  ADD UNIQUE KEY `S1E2` (`S1E2`),
  ADD UNIQUE KEY `S1E3` (`S1E3`,`S1E4`,`S1E5`,`S1E6`,`S1E7`,`S1E8`,`S1E9`,`S1E10`,`S2E1`,`S2E2`,`S2E3`,`S2E4`,`S2E5`,`S2E6`,`S2E7`,`S2E8`,`S2E9`,`S2E10`,`S3E1`,`S3E2`),
  ADD UNIQUE KEY `S1E2_2` (`S1E2`,`S1E3`,`S1E4`,`S1E5`,`S7E1`,`S7E2`,`S7E3`,`S7E4`,`S7E5`,`S7E6`,`S7E7`),
  ADD UNIQUE KEY `S1E1` (`S1E1`),
  ADD KEY `S1E4` (`S1E4`),
  ADD KEY `S1E5` (`S1E5`),
  ADD KEY `S1E1_2` (`S1E1`);

--
-- Indexen voor tabel `position_id_x_y`
--
ALTER TABLE `position_id_x_y`
  ADD PRIMARY KEY (`position_block_number`),
  ADD UNIQUE KEY `position_block_number` (`position_block_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
