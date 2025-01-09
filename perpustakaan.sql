-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jan 2025 pada 21.03
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `alamat`, `telepon`, `email`) VALUES
(1, 'Agus Santoso', 'Jl. Mawar No.1', '081234567890', 'agus@mail.com'),
(2, 'Rina Kusuma', 'Jl. Melati No.2', '081298765432', 'rina@mail.com'),
(3, 'Siti Aminah', 'Jl. Kenanga No.3', '081345678901', 'siti@mail.com'),
(4, 'Budi Prasetyo', 'Jl. Anggrek No.4', '081456789012', 'budi@mail.com'),
(5, 'Andi Wijaya', 'Jl. Cempaka No.5', '081567890123', 'andi@mail.com'),
(6, 'Dewi Lestari', 'Jl. Dahlia No.6', '081678901234', 'dewi@mail.com'),
(7, 'Rudi Hartono', 'Jl. Teratai No.7', '081789012345', 'rudi@mail.com'),
(8, 'Lina Marlina', 'Jl. Flamboyan No.8', '081890123456', 'lina@mail.com'),
(9, 'Ali Akbar', 'Jl. Sakura No.9', '081901234567', 'ali@mail.com'),
(10, 'Siti Nurhaliza', 'Jl. Tulip No.10', '082012345678', 'nurhaliza@mail.com'),
(11, 'Tono Prasetya', 'Jl. Kamboja No.11', '082123456789', 'tono@mail.com'),
(12, 'Ani Wijayanti', 'Jl. Bougenville No.12', '082234567890', 'ani@mail.com'),
(13, 'Hadi Saputra', 'Jl. Kaktus No.13', '082345678901', 'hadi@mail.com'),
(14, 'Sari Dewi', 'Jl. Seruni No.14', '082456789012', 'sari@mail.com'),
(15, 'Joko Susilo', 'Jl. Akasia No.15', '082567890123', 'joko@mail.com'),
(16, 'Tina Kuswanti', 'Jl. Pinus No.16', '082678901234', 'tina@mail.com'),
(17, 'Eko Harianto', 'Jl. Cemara No.17', '082789012345', 'eko@mail.com'),
(18, 'Rita Anggraini', 'Jl. Bambu No.18', '082890123456', 'rita@mail.com'),
(19, 'Asep Rahmat', 'Jl. Nusa Indah No.19', '082901234567', 'asep@mail.com'),
(20, 'Maya Sari', 'Jl. Pandan No.20', '083012345678', 'maya@mail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `penulis` varchar(100) DEFAULT NULL,
  `penerbit` varchar(100) DEFAULT NULL,
  `tahun_terbit` int(11) DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `penulis`, `penerbit`, `tahun_terbit`, `kategori`, `jumlah`) VALUES
(1, 'Pemrograman Python', 'John Doe', 'Tech Publisher', 2020, 'Teknologi', 5),
(2, 'Database MySQL', 'Jane Smith', 'Data Publisher', 2018, 'Teknologi', 3),
(3, 'Algoritma dan Struktur Data', 'Ahmad Fauzi', 'Edu Publisher', 2019, 'Pendidikan', 4),
(4, 'Dasar Pemrograman C++', 'Lisa Tan', 'Code Publisher', 2021, 'Teknologi', 6),
(5, 'Belajar HTML dan CSS', 'Michael Brown', 'Web Publisher', 2022, 'Desain', 7),
(6, 'Manajemen Waktu', 'David Green', 'Life Publisher', 2017, 'Pengembangan Diri', 8),
(7, 'Psikologi Modern', 'Sarah White', 'Psych Publisher', 2016, 'Psikologi', 2),
(8, 'Filsafat Hidup', 'Aristotle', 'Philo Publisher', 2015, 'Filsafat', 5),
(9, 'Matematika Dasar', 'Joko Widodo', 'Math Publisher', 2018, 'Pendidikan', 9),
(10, 'Fisika Modern', 'Albert Ein', 'Science Publisher', 2020, 'Pendidikan', 4),
(11, 'Kimia Organik', 'Marie Curie', 'Science Publisher', 2021, 'Pendidikan', 3),
(12, 'Ekonomi Mikro', 'Adam Smith', 'Economy Publisher', 2017, 'Ekonomi', 6),
(13, 'Sejarah Dunia', 'Herodotus', 'History Publisher', 2016, 'Sejarah', 5),
(14, 'Biologi Dasar', 'Charles Darwin', 'Bio Publisher', 2019, 'Pendidikan', 7),
(15, 'Teknik Mesin', 'Henry Ford', 'Eng Publisher', 2020, 'Teknik', 3),
(16, 'Pengantar AI', 'Alan Turing', 'AI Publisher', 2021, 'Teknologi', 4),
(17, 'Desain Grafis', 'Leonardo da Vinci', 'Art Publisher', 2018, 'Desain', 6),
(18, 'Pemrograman Java', 'James Gosling', 'Code Publisher', 2019, 'Teknologi', 3),
(19, 'Cloud Computing', 'Mark Bezos', 'Tech Publisher', 2020, 'Teknologi', 5),
(20, 'Big Data Analytics', 'Clara Data', 'Data Publisher', 2022, 'Teknologi', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_anggota` int(11) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_anggota`, `id_buku`, `tanggal_pinjam`, `tanggal_kembali`, `id_petugas`) VALUES
(1, 1, 1, '2025-01-01', '2025-01-15', 1),
(2, 2, 2, '2025-01-02', '2025-01-16', 2),
(3, 3, 3, '2025-01-03', '2025-01-17', 3),
(4, 4, 4, '2025-01-04', '2025-01-18', 4),
(5, 5, 5, '2025-01-05', '2025-01-19', 5),
(6, 6, 6, '2025-01-06', '2025-01-20', 6),
(7, 7, 7, '2025-01-07', '2025-01-21', 7),
(8, 8, 8, '2025-01-08', '2025-01-22', 8),
(9, 9, 9, '2025-01-09', '2025-01-23', 9),
(10, 10, 10, '2025-01-10', '2025-01-24', 10),
(11, 11, 11, '2025-01-11', '2025-01-25', 11),
(12, 12, 12, '2025-01-12', '2025-01-26', 12),
(13, 13, 13, '2025-01-13', '2025-01-27', 13),
(14, 14, 14, '2025-01-14', '2025-01-28', 14),
(15, 15, 15, '2025-01-15', '2025-01-29', 15),
(16, 16, 16, '2025-01-16', '2025-01-30', 16),
(17, 17, 17, '2025-01-17', '2025-01-31', 17),
(18, 18, 18, '2025-01-18', '2025-02-01', 18),
(19, 19, 19, '2025-01-19', '2025-02-02', 19),
(20, 20, 20, '2025-01-20', '2025-02-03', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` int(11) NOT NULL,
  `id_peminjaman` int(11) DEFAULT NULL,
  `tanggal_pengembalian` date DEFAULT NULL,
  `denda` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengembalian`
--

INSERT INTO `pengembalian` (`id_pengembalian`, `id_peminjaman`, `tanggal_pengembalian`, `denda`) VALUES
(1, 1, '2025-01-15', 0),
(2, 2, '2025-01-16', 0),
(3, 3, '2025-01-17', 0),
(4, 4, '2025-01-18', 0),
(5, 5, '2025-01-19', 0),
(6, 6, '2025-01-20', 0),
(7, 7, '2025-01-21', 0),
(8, 8, '2025-01-22', 0),
(9, 9, '2025-01-23', 0),
(10, 10, '2025-01-24', 0),
(11, 11, '2025-01-25', 0),
(12, 12, '2025-01-26', 0),
(13, 13, '2025-01-27', 0),
(14, 14, '2025-01-28', 0),
(15, 15, '2025-01-29', 0),
(16, 16, '2025-01-30', 0),
(17, 17, '2025-01-31', 0),
(18, 18, '2025-02-01', 0),
(19, 19, '2025-02-02', 0),
(20, 20, '2025-02-03', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `shift` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama`, `shift`) VALUES
(1, 'Siti Rahmawati', 'Pagi'),
(2, 'Ahmad Ridwan', 'Siang'),
(3, 'Budi Santoso', 'Pagi'),
(4, 'Rina Lestari', 'Siang'),
(5, 'Agus Wijaya', 'Malam'),
(6, 'Andi Saputra', 'Pagi'),
(7, 'Dewi Kartika', 'Siang'),
(8, 'Rudi Suryana', 'Malam'),
(9, 'Lina Sari', 'Pagi'),
(10, 'Eko Hariyanto', 'Siang'),
(11, 'Sari Pranoto', 'Pagi'),
(12, 'Tono Suryadi', 'Malam'),
(13, 'Joko Widodo', 'Siang'),
(14, 'Hadi Susilo', 'Pagi'),
(15, 'Rita Wulandari', 'Siang'),
(16, 'Maya Kartika', 'Malam'),
(17, 'Siti Marlina', 'Pagi'),
(18, 'Budi Prasetyo', 'Siang'),
(19, 'Ahmad Fauzan', 'Malam'),
(20, 'Tina Marlina', 'Pagi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
