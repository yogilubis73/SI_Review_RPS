-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Bulan Mei 2020 pada 16.59
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pa2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(11) NOT NULL,
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita_acara`
--

CREATE TABLE `berita_acara` (
  `id_berita` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `nidn` int(11) DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_hadir`
--

CREATE TABLE `daftar_hadir` (
  `id_daftar_hadir` int(11) NOT NULL,
  `status_hadir` char(25) DEFAULT NULL,
  `daftaryanghadir` varchar(2048) DEFAULT NULL,
  `nidn` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumen`
--

CREATE TABLE `dokumen` (
  `id_file` int(11) NOT NULL,
  `nama_file` varchar(64) DEFAULT NULL,
  `mata_kuliah` varchar(256) DEFAULT NULL,
  `dosen_pengampu` varchar(256) DEFAULT NULL,
  `prodi` varchar(256) DEFAULT NULL,
  `upload` varchar(256) DEFAULT NULL,
  `jenis` varchar(256) DEFAULT NULL,
  `nidn` int(11) DEFAULT NULL,
  `deskripsi` varchar(2048) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dokumen`
--

INSERT INTO `dokumen` (`id_file`, `nama_file`, `mata_kuliah`, `dosen_pengampu`, `prodi`, `upload`, `jenis`, `nidn`, `deskripsi`) VALUES
(1, 'bastian', NULL, NULL, 'D3-TI', NULL, NULL, NULL, NULL),
(5, 'PROBSTAT', NULL, 'IBU IKE FITRIYA NINGSIH', 'tarno', 'anooo', 'RPS', NULL, NULL),
(6, 'PNKI', NULL, 'IBU TIURMA', 'D3-TI', 'dokumen.docx', 'RPS', NULL, 'tolong disi dengan benar'),
(7, 'PBO', 'review dokumen', 'Pak Teamsar M P', 'D3-TI', 'UTS.docx', 'UTS', NULL, 'harap diisi yah pak/bu. terima kasih'),
(8, 'PSW2', 'Review bersama', 'Pak Togu N T', 'D3-TI', 'UAS.docx', 'UAS', NULL, 'Mohon berikan kommentar beserta opini nya'),
(9, 'SBD', 'Penting!!', 'VES', 'D3TI', 'full.jpg', 'fileRPS', NULL, 'Mohon bantuannya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nidn` int(11) NOT NULL,
  `nama` varchar(256) DEFAULT NULL,
  `jabatan` varchar(256) DEFAULT NULL,
  `program_studi` varchar(256) DEFAULT NULL,
  `golongan` char(24) DEFAULT NULL,
  `pendidikan` varchar(256) DEFAULT NULL,
  `mulai_s1` date DEFAULT NULL,
  `lulus_s1` date DEFAULT NULL,
  `mulai_s2` date DEFAULT NULL,
  `lulus_s2` date DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nidn`, `nama`, `jabatan`, `program_studi`, `golongan`, `pendidikan`, `mulai_s1`, `lulus_s1`, `mulai_s2`, `lulus_s2`, `email`) VALUES
(12345, 'yogi', 'Dosen', 'D3-Teknologi Informasi', '4a', 'S2', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 'yogi@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `forum`
--

CREATE TABLE `forum` (
  `id_forum` int(11) NOT NULL,
  `dokumen_final` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `jabatan` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi_layak_cetak`
--

CREATE TABLE `konfirmasi_layak_cetak` (
  `id_konfirmasilc` int(11) NOT NULL,
  `waktu` date DEFAULT NULL,
  `id_file` int(11) NOT NULL,
  `nidn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id_notifikasi` int(11) NOT NULL,
  `pesan` varchar(1024) DEFAULT NULL,
  `waktu` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id_status` int(11) NOT NULL,
  `waktu` date DEFAULT NULL,
  `status` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indeks untuk tabel `berita_acara`
--
ALTER TABLE `berita_acara`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `FK_berita_acara_dosen` (`nidn`),
  ADD KEY `FK_berita_acara` (`id_file`);

--
-- Indeks untuk tabel `daftar_hadir`
--
ALTER TABLE `daftar_hadir`
  ADD PRIMARY KEY (`id_daftar_hadir`),
  ADD KEY `FK_daftar_hadir_dosen` (`nidn`);

--
-- Indeks untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id_file`),
  ADD KEY `FK_dokumen` (`nidn`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nidn`);

--
-- Indeks untuk tabel `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id_forum`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indeks untuk tabel `konfirmasi_layak_cetak`
--
ALTER TABLE `konfirmasi_layak_cetak`
  ADD PRIMARY KEY (`id_konfirmasilc`),
  ADD KEY `FK_konfirmasi_layak_cetak` (`nidn`),
  ADD KEY `FK_KLC_dokumen` (`id_file`);

--
-- Indeks untuk tabel `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id_notifikasi`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `berita_acara`
--
ALTER TABLE `berita_acara`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `daftar_hadir`
--
ALTER TABLE `daftar_hadir`
  MODIFY `id_daftar_hadir` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `forum`
--
ALTER TABLE `forum`
  MODIFY `id_forum` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `konfirmasi_layak_cetak`
--
ALTER TABLE `konfirmasi_layak_cetak`
  MODIFY `id_konfirmasilc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id_notifikasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD CONSTRAINT `FK_akun` FOREIGN KEY (`id_akun`) REFERENCES `dosen` (`nidn`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `berita_acara`
--
ALTER TABLE `berita_acara`
  ADD CONSTRAINT `FK_berita_acara` FOREIGN KEY (`id_file`) REFERENCES `dokumen` (`id_file`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_berita_acara_dosen` FOREIGN KEY (`nidn`) REFERENCES `dosen` (`nidn`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `daftar_hadir`
--
ALTER TABLE `daftar_hadir`
  ADD CONSTRAINT `FK_daftar_hadir_dosen` FOREIGN KEY (`nidn`) REFERENCES `dosen` (`nidn`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  ADD CONSTRAINT `FK_dokumen` FOREIGN KEY (`nidn`) REFERENCES `dosen` (`nidn`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `forum`
--
ALTER TABLE `forum`
  ADD CONSTRAINT `FK_forum` FOREIGN KEY (`id_forum`) REFERENCES `dokumen` (`id_file`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD CONSTRAINT `FK_jabatan` FOREIGN KEY (`id_jabatan`) REFERENCES `dosen` (`nidn`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `konfirmasi_layak_cetak`
--
ALTER TABLE `konfirmasi_layak_cetak`
  ADD CONSTRAINT `FK_KLC_dokumen` FOREIGN KEY (`id_file`) REFERENCES `dokumen` (`id_file`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_konfirmasi_layak_cetak` FOREIGN KEY (`nidn`) REFERENCES `dosen` (`nidn`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD CONSTRAINT `FK_notifikasi` FOREIGN KEY (`id_notifikasi`) REFERENCES `dosen` (`nidn`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `FK_status` FOREIGN KEY (`id_status`) REFERENCES `forum` (`id_forum`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
