-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Bulan Mei 2023 pada 16.08
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
-- Database: `uts`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel kota`
--

CREATE TABLE `tabel kota` (
  `ID` varchar(4) NOT NULL,
  `PROVINCE ID` varchar(2) NOT NULL,
  `NAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel penduduk`
--

CREATE TABLE `tabel penduduk` (
  `ID` int(4) NOT NULL,
  `NIK` varchar(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `JENIS KELAMIN` varchar(15) NOT NULL,
  `TGL_LAHIR` date NOT NULL,
  `UMUR` int(4) NOT NULL,
  `PROPINSI` varchar(2) NOT NULL,
  `KOTA_ID` varchar(4) NOT NULL,
  `ALAMAT` text NOT NULL,
  `RT` int(3) NOT NULL,
  `RW` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel propinsi`
--

CREATE TABLE `tabel propinsi` (
  `ID` varchar(2) NOT NULL,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel penduduk`
--
ALTER TABLE `tabel penduduk`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
