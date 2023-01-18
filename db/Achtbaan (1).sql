-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 18 jan 2023 om 15:11
-- Serverversie: 5.7.36
-- PHP-versie: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php-pdo-crud-herkansing`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Achtbaan`
--

DROP TABLE IF EXISTS `Achtbaan`;
CREATE TABLE IF NOT EXISTS `Achtbaan` (
  `Id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `NaamAchtbaan` varchar(255) NOT NULL,
  `NaamPretpark` varchar(255) NOT NULL,
  `Land` varchar(255) NOT NULL,
  `Topsnelheid` int(4) UNSIGNED NOT NULL,
  `Hoogte` int(4) UNSIGNED NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `Achtbaan`
--

INSERT INTO `Achtbaan` (`Id`, `NaamAchtbaan`, `NaamPretpark`, `Land`, `Topsnelheid`, `Hoogte`) VALUES
(5, 'Shambala', 'PortAventura', 'Spanje', 134, 102),
(3, 'Hyperion', 'EnergyLandia', 'Polen', 141, 77),
(2, 'Ring Racer', 'Race circuit Nürnberg', 'Duitsland', 160, 110),
(4, 'Furios Baco', 'PortAventura', 'Spanje', 138, 23),
(1, 'Red Force', 'Ferrari land', 'Spanje', 192, 112);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
