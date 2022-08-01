-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Agu 2022 pada 14.09
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajax-dropdown`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jakarta`
--

CREATE TABLE IF NOT EXISTS `tbl_jakarta` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(225) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_jakarta`
--

INSERT INTO `tbl_jakarta` (`country_id`, `country_name`) VALUES
(1, 'Jakarta Timur'),
(2, 'Jakarta Barat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_lokasi_jakarta`
--

CREATE TABLE IF NOT EXISTS `tbl_lokasi_jakarta` (
  `country_id` int(11) NOT NULL,
  `state_name` varchar(225) NOT NULL,
  KEY `country_id` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_lokasi_jakarta`
--

INSERT INTO `tbl_lokasi_jakarta` (`country_id`, `state_name`) VALUES
(1, 'Petamburan'),
(2, 'Grogol');

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_lokasi_jakarta`
--
ALTER TABLE `tbl_lokasi_jakarta`
  ADD CONSTRAINT `tbl_lokasi_jakarta_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `tbl_jakarta` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
