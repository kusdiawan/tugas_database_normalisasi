-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Okt 2020 pada 05.43
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klinik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dokter`
--

CREATE TABLE `tbl_dokter` (
  `id_dokter` varchar(4) DEFAULT NULL,
  `nama_dokter` varchar(25) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `jenis_dokter` enum('Umum','Spesialis') DEFAULT NULL,
  `spesialisasi_dokter` varchar(35) DEFAULT NULL,
  `status_dokter` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jenis_pembayaran`
--

CREATE TABLE `tbl_jenis_pembayaran` (
  `id_jenis_pembayaran` varchar(3) DEFAULT NULL,
  `jenis_pembayaran` enum('cash','Kartu Kredit') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_klinik`
--

CREATE TABLE `tbl_klinik` (
  `id_klinik` varchar(3) DEFAULT NULL,
  `nama_klinik` varchar(35) DEFAULT NULL,
  `logo_klinik` varchar(60) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `no_telp` varchar(10) DEFAULT NULL,
  `link_web` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_layanan`
--

CREATE TABLE `tbl_layanan` (
  `id_layanan` varchar(4) DEFAULT NULL,
  `nama_layanan` varchar(30) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `harga_layanan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pasien`
--

CREATE TABLE `tbl_pasien` (
  `id_pasien` varchar(5) DEFAULT NULL,
  `nama_pasien` varchar(30) DEFAULT NULL,
  `no_ktp` varchar(15) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `jenis_kelaim` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `usia` int(11) DEFAULT NULL,
  `nomor_telepon` varchar(15) DEFAULT NULL,
  `id_jenis_pembayaran` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penyakit`
--

CREATE TABLE `tbl_penyakit` (
  `id_penyakit` varchar(5) DEFAULT NULL,
  `nama_penyakit` varchar(25) DEFAULT NULL,
  `gejala` longtext DEFAULT NULL,
  `diagnosa` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
