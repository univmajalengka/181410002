-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Apr 2020 pada 15.29
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
-- Database: `nilai_mt_pelajaran`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_guru`
--

CREATE TABLE `d_guru` (
  `nip` char(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jns_kel` char(15) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `d_guru`
--

INSERT INTO `d_guru` (`nip`, `nama`, `alamat`, `jns_kel`, `nohp`, `jabatan`, `status`) VALUES
('19650720', 'DARTA, S.Ag', 'Tanjungsari', 'Laki-laki', '081563819913', 'Guru', 'Hidup'),
('19650721', 'Subana S.Pd', 'Majalengka', 'Laki-laki', '081563819999', 'Guru', 'Hidup');

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_kelas`
--

CREATE TABLE `d_kelas` (
  `id_kelas` char(10) NOT NULL,
  `tahun_ajar` varchar(10) NOT NULL,
  `tingkat` char(5) NOT NULL,
  `nama_kelas` varchar(20) NOT NULL,
  `wali_kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `d_kelas`
--

INSERT INTO `d_kelas` (`id_kelas`, `tahun_ajar`, `tingkat`, `nama_kelas`, `wali_kelas`) VALUES
('20127A', '2012/2013', '7', '7B', 'Darta, S.Ag');

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_matapelajaran`
--

CREATE TABLE `d_matapelajaran` (
  `kode_mp` char(10) NOT NULL,
  `tingkat` char(5) NOT NULL,
  `semester` char(5) NOT NULL,
  `jenis_mp` varchar(30) NOT NULL,
  `mata_pelajaran` varchar(100) NOT NULL,
  `nip` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `d_matapelajaran`
--

INSERT INTO `d_matapelajaran` (`kode_mp`, `tingkat`, `semester`, `jenis_mp`, `mata_pelajaran`, `nip`) VALUES
('MP7', '7', '1', 'Muatan Lokal', 'Quran dan Hadits', '19650720');

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_nilai`
--

CREATE TABLE `d_nilai` (
  `id_nilai` char(10) NOT NULL,
  `tahun_ajar` varchar(10) NOT NULL,
  `tingkat` char(5) NOT NULL,
  `nis` varchar(15) NOT NULL,
  `kode_mp` char(15) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `d_nilai`
--

INSERT INTO `d_nilai` (`id_nilai`, `tahun_ajar`, `tingkat`, `nis`, `kode_mp`, `nilai`) VALUES
('1', '2012/2013', '7', '121307002', 'MP7', 75);

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_siswa`
--

CREATE TABLE `d_siswa` (
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

--
-- Dumping data untuk tabel `d_siswa`
--

INSERT INTO `d_siswa` (`nis`, `nama`, `alamat`, `tmp_lahir`, `tgl_lahir`, `jns_kel`, `agama`, `nohp`, `tahun_masuk`, `id_kelas`) VALUES
('121307001', 'Sakurudin', 'Kertajati', 'Majalengka', '2000-03-02', 'Laki-laki', 'Islam', '085624110850', '2018-02-', '20127A'),
('121307002', 'Haris Sakurudin', 'Sukamanah', 'Majalengka', '2000-01-02', 'Laki-laki', 'Islam', ' 085624110850', '2012', '20127A');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `d_guru`
--
ALTER TABLE `d_guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `d_kelas`
--
ALTER TABLE `d_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `d_matapelajaran`
--
ALTER TABLE `d_matapelajaran`
  ADD PRIMARY KEY (`kode_mp`),
  ADD KEY `nip` (`nip`);

--
-- Indeks untuk tabel `d_nilai`
--
ALTER TABLE `d_nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `nis` (`nis`),
  ADD KEY `kode_md` (`kode_mp`);

--
-- Indeks untuk tabel `d_siswa`
--
ALTER TABLE `d_siswa`
  ADD PRIMARY KEY (`nis`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `d_matapelajaran`
--
ALTER TABLE `d_matapelajaran`
  ADD CONSTRAINT `d_matapelajaran_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `d_guru` (`nip`);

--
-- Ketidakleluasaan untuk tabel `d_nilai`
--
ALTER TABLE `d_nilai`
  ADD CONSTRAINT `d_nilai_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `d_siswa` (`nis`),
  ADD CONSTRAINT `d_nilai_ibfk_2` FOREIGN KEY (`kode_mp`) REFERENCES `d_matapelajaran` (`kode_mp`);

--
-- Ketidakleluasaan untuk tabel `d_siswa`
--
ALTER TABLE `d_siswa`
  ADD CONSTRAINT `d_siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `d_kelas` (`id_kelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
