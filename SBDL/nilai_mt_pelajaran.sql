-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 09 Mar 2020 pada 07.27
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nilai_mt_pelajaran`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_guru`
--

CREATE TABLE IF NOT EXISTS `d_guru` (
  `nip` char(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jns_kel` char(15) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_kelas`
--

CREATE TABLE IF NOT EXISTS `d_kelas` (
  `id_kelas` char(10) NOT NULL,
  `tahun_ajar` varchar(10) NOT NULL,
  `tingkat` char(5) NOT NULL,
  `nama_kelas` varchar(20) NOT NULL,
  `wali_kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_matapelajaran`
--

CREATE TABLE IF NOT EXISTS `d_matapelajaran` (
  `kode_mp` char(10) NOT NULL,
  `tingkat` char(5) NOT NULL,
  `semester` char(5) NOT NULL,
  `jenis_mp` varchar(30) NOT NULL,
  `mata_pelajaran` varchar(100) NOT NULL,
  `nip` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_nilai`
--

CREATE TABLE IF NOT EXISTS `d_nilai` (
  `id_nilai` char(10) NOT NULL,
  `tahun_ajar` varchar(10) NOT NULL,
  `tingkat` char(5) NOT NULL,
  `nis` varchar(15) NOT NULL,
  `kode_md` char(15) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_siswa`
--

CREATE TABLE IF NOT EXISTS `d_siswa` (
  `nis` varchar(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tmp_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jns_kel` char(15) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `nohp` char(15) NOT NULL,
  `tahun_masuk` char(8) NOT NULL,
  `id_kelas` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
