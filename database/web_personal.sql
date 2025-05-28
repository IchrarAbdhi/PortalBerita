-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2023 at 07:10 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_personal`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `kode_artikel` char(10) NOT NULL,
  `judul_artikel` varchar(100) NOT NULL,
  `isi_artikel` text NOT NULL,
  `gambar` varchar(100) NOT NULL DEFAULT 'gambar_default.png',
  `tanggal` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `kode_artikel`, `judul_artikel`, `isi_artikel`, `gambar`, `tanggal`, `status`, `id_kategori`, `id_pengguna`) VALUES
(134, 'A0001', 'Tsunoda penurunan karir?', 'didikan Red Bull itu tidak mudah tekanan yang dihadapi sangatlah besar dan lingkungan kerja yang ada di dalamnya terkenal cukup keras dengan persaingan beserta tuntutan yang besar untuk perform secara instan Hal itulah yang dihadapi oleh yuki tsunoda  dan musim 2023 akan jadi musim penghakiman bagi dirinya yang akan berpengaruh pada masa depannya di balap F1 kehilangan pierre gasly tentu akan cukup berpengaruh pada Bagaimana pendekatan tsunoda pada balapan musim ini selain kehilangan sosok panutan atau sosok kakak yang selalu rela mengajarkan banyak hal untuk membantu sunoda beradaptasi Ia juga kehilangan pierre gasly  sebagai benchmark atau patokan perkembangannya di F1 sedikit memutar balikkan waktu ke belakang Yuki tsunada langsung dipromosikan oleh Red Bulls ke tim alfa tauri  setelah menjalani musim yang sensasional sebagai pembalap debutan di formula 2  ia mampu bersaing ketat dengan mick schumacher  yang jadi juara umum saat itu tapi ekspektasi publik sepertinya terlalu tinggi untuk tsunoda  pembalap Jepang ini minim berpengalaman dan terlalu sering membuat kesalahan-kesalahan sendiri bisa dibilang merupakan pembalap Jepang yang berbeda dari rekan-rekan negaranya orang Jepang biasa dikenal dengan hobi bekerja keras dan berkomitmen tinggi tapi hal tersebut tidak terlihat di dalam salah satu balapnya penyebab Yuki kesulitan beradaptasi di musim pertamanya adalah sifat malas-malasan yang ia punya Selain itu yuki juga dikenal kesulitan dalam menjaga temperamennya ketika di sirkuit dan kita tahu di f1s saja tidak cukup yang kemudian dilanjutkan oleh untuk pindah supaya tsunoda bisa lebih dekat dan tidak bermalas-malasan ini bahkan sampai mendatangkan psikolog untuk bisa membuat tsunoda lebih tenang ketika balapan Hasilnya cukup positif Karena di musim 2012 sebelumnya dalam beberapa kesempatan namun sekali lagi Sudah belum bisa menghasilkan produk yang meyakinkan begini dan untuk menjadikannya sebagai calon pengganti Perez di masa depan secara statistik dia masih kalah dari gasly dari semua Sisi mungkin iya itu karena mobil Alpha tauri  musim lalu yang buruk Tetapi meski begitu pada faktanya tsunada belum bisa konsistensi masih melanda dalam diri pembalap 22 tahun ini alasan-alasan di klasik seperti suroda masih muda atau pengalamannya di F1 masih sedikit sudah tidak berlaku lagi dan terkesan riset masa adaptasi seorang pembalap di f1 cuma bisa dijadikan alasan di musim debutnya saja tapi kalau sudah memasuki musim kedua maka sang pembalap harus perform entah bagaimana caranya sonoda cukup beruntung masih bisa bertahan di F1 ada nasibnya tidak seperti ini cuman yang di Depak dari Honda  karena tidak perform di musim keduanya memiliki dua hal berbeda walaupun mereka rekan setim  seperti gasly  memang ada positif dan negatifnya dan harus diakui merupakan salah satu pembalap pada talenta di F1 saat ini dan selalu konsisten', 'yuki-tsunoda-alphatauri-1.jpg', '2023-01-23 19:35:34', 1, 26, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `gambar_kategori` varchar(200) NOT NULL DEFAULT 'gambar_default.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `gambar_kategori`) VALUES
(26, 'Berita', 'gambar_default.png'),
(27, 'Sejarah Sirkuit', 'gambar_default.png'),
(28, 'Jadwal', 'gambar_default.png'),
(29, 'Pembalap', 'gambar_default.png'),
(30, 'Tentang', 'gambar_default.png');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_artikel` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `isi_komentar` text NOT NULL,
  `status_komentar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_artikel`, `nama`, `email`, `isi_komentar`, `status_komentar`) VALUES
(7, 101, 'Setiawan Dimas', 'arimurti295.sd@gmail.com', 'Saya terkagum membaca artikel ini karena setelah membaca artikel ini pikiran saya menjadi terbuka. Saya sadar, selama ini saya terlalu tertutup dengan hal-hal yang baru dan merasa sudah tahu. Hal ini berimbas kepada saya yakni saya menjadi orang yang Sok Tahu', 1),
(8, 116, 'ikrar', 'ichrarganteng833@gmail.com', 'danieeeeel', 0),
(9, 126, 'ANDRI', 'andrepeat44@gmail.com', 'jkdhaiudga', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `kode_pengguna` char(9) NOT NULL,
  `nama_pengguna` varchar(50) NOT NULL,
  `email` varchar(35) NOT NULL,
  `no_telp` char(14) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `kode_pengguna`, `nama_pengguna`, `email`, `no_telp`, `username`, `password`, `status`) VALUES
(19, 'U010', 'Dimas', 'arimurti95.sd@gmail.com', '082322230343', 'dimas', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(20, 'U020', 'Bayu', 'bayu@gmail.com', '082322230343', 'bayu', 'a430e06de5ce438d499c2e4063d60fd6', 1),
(21, 'U021', 'Ichrar', 'ichrarganteng833@gmail.com', '085157307335', 'ichrar', 'd260c8779b6e566bd627ce0082a86467', 1);

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `nama_website` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`nama_website`) VALUES
('Portal Formula 1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD UNIQUE KEY `judul_artikel` (`judul_artikel`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_artikel` (`id_artikel`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
