-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2026 at 04:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `linguistudy`
--

-- --------------------------------------------------------

--
-- Table structure for table `bahasa`
--

CREATE TABLE `bahasa` (
  `bahasa_id` int(11) NOT NULL,
  `nama_bahasa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bahasa`
--

INSERT INTO `bahasa` (`bahasa_id`, `nama_bahasa`) VALUES
(1, 'Inggris'),
(2, 'Jepang'),
(3, 'Korea'),
(4, 'Indonesia'),
(5, 'Italia'),
(6, 'Spanyol');

-- --------------------------------------------------------

--
-- Table structure for table `kursus`
--

CREATE TABLE `kursus` (
  `kursus_id` int(11) NOT NULL,
  `bahasa_id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `level` enum('pemula','menengah','mahir') NOT NULL,
  `is_free` tinyint(1) DEFAULT 0,
  `urutan` int(11) DEFAULT 1,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kursus`
--

INSERT INTO `kursus` (`kursus_id`, `bahasa_id`, `judul`, `level`, `is_free`, `urutan`, `deskripsi`) VALUES
(1, 1, 'English Basic Fundamentals', 'pemula', 1, 1, 'Pelajari dasar-dasar tata bahasa, kosakata sehari-hari, dan kalimat sederhana.'),
(2, 1, 'Intermediate English Conversation', 'menengah', 0, 2, 'Fokus pada peningkatan kemampuan berbicara dan pemahaman mendengarkan dalam konteks nyata.'),
(3, 1, 'Advanced Academic Writing', 'mahir', 0, 3, 'Mengembangkan kemampuan menulis esai, laporan, dan dokumen formal dengan tata bahasa kompleks.'),
(5, 2, 'Tata Bahasa N5', 'menengah', 0, 2, 'Persiapan ujian JLPT N5 dasar.'),
(7, 3, 'Korean Daily Conversation', 'menengah', 0, 2, 'Percakapan sehari-hari di Seoul.'),
(8, 2, 'Dasar Hiragana & Katakana', 'pemula', 1, 1, 'Belajar menulis dan membaca huruf dasar Jepang.'),
(10, 3, 'Hangeul Master', 'pemula', 1, 1, 'Cara cepat menguasai huruf Korea.'),
(12, 4, 'Basic Indonesia', 'pemula', 1, 1, 'Percakapan Menggunakan Bahasa Indonesia\r\n'),
(14, 5, 'Basic Italia', 'pemula', 1, 1, 'Italian conversation\r\n'),
(15, 6, 'Basic Spanyol', 'pemula', 1, 1, 'Basic Conversation with spanyol'),
(16, 4, 'Bahasa Indonesia Formal', 'menengah', 0, 2, 'Pendalaman penggunaan kata baku dan struktur kalimat sesuai PUEBI.'),
(17, 5, 'Grammatica Italiana', 'menengah', 0, 2, 'Mempelajari tata bahasa Italia untuk percakapan sehari-hari yang lebih kompleks.');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `materi_id` int(11) NOT NULL,
  `kursus_id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `konten` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`materi_id`, `kursus_id`, `judul`, `konten`) VALUES
(1, 1, 'Materi 1: Personal Pronouns dan Be Verb', 'Penjelasan tentang penggunaan I, You, He, She, It, We, They dan perubahan kata kerja Be (is, am, are).'),
(2, 1, 'Materi 2: Simple Present Tense', 'Memahami struktur dan fungsi Simple Present Tense untuk kebiasaan dan fakta umum.'),
(3, 1, 'Materi 3: Kosakata Dasar Sehari-hari', 'Daftar dan latihan kosakata dasar untuk makanan, keluarga, dan pekerjaan.'),
(4, 1, 'Materi 4: Introducing Yourself', 'Panduan membuat perkenalan diri yang efektif dan contoh dialog.'),
(5, 2, 'Materi 1: Expressing Opinions and Agreement', 'Frasa untuk menyampaikan opini dan menyetujui atau menolak dengan sopan.'),
(6, 2, 'Materi 2: Passive Voice dalam Percakapan', 'Penggunaan Passive Voice untuk membuat percakapan terdengar lebih formal dan profesional.'),
(7, 2, 'Materi 3: Listening Practice: News Broadcast', 'Latihan mendengarkan berita pendek dan menjawab pertanyaan pemahaman.'),
(8, 3, 'Materi 1: Structure of an Academic Essay', 'Panduan mendalam tentang pendahuluan, isi, dan kesimpulan esai akademis.'),
(9, 3, 'Materi 2: Conjunctions and Transition Words', 'Penggunaan konjungsi kompleks untuk meningkatkan kohesi dan alur tulisan.'),
(10, 3, 'Materi 3: Citing Sources (APA/MLA)', 'Metode dan praktik terbaik dalam mengutip sumber untuk menghindari plagiarisme.'),
(16, 10, 'Materi 1: Sejarah dan Konsep Hangeul', 'Mengenal Raja Sejong dan filosofi di balik pembuatan huruf Hangeul.'),
(17, 10, 'Materi 2: Vokal Dasar', 'Mempelajari 10 vokal dasar seperti ㅏ, ㅑ, ㅓ, ㅕ.'),
(18, 10, 'Materi 3: Konsonan Dasar', 'Mempelajari konsonan utama seperti ㄱ, ㄴ, ㄷ, ㄹ.'),
(19, 10, 'Materi 4: Menulis Suku Kata', 'Teknik menggabungkan konsonan dan vokal menjadi satu blok suku kata.'),
(20, 15, 'Materi 1: El Alfabeto', 'Mengenal abjad Spanyol dan cara pengucapan unik seperti ñ dan ll.'),
(21, 15, 'Materi 2: Saludos y Despedidas', 'Belajar memberi salam (Hola, Buenos dias) dan berpamitan (Adios, Hasta luego).'),
(26, 12, 'Materi 1: Salam dan Sapaan Dasar', 'Belajar kata sapaan seperti Selamat Pagi, Halo, dan Apa Kabar.'),
(27, 12, 'Materi 2: Kata Ganti Orang', 'Mengenal penggunaan Saya, Kamu, Dia, Kami, dan Mereka dalam kalimat.'),
(28, 12, 'Materi 3: Angka dan Waktu', 'Mempelajari penyebutan angka 1-100 serta nama-nama hari dan bulan.'),
(29, 12, 'Materi 4: Perkenalan Diri Sederhana', 'Cara memperkenalkan nama, asal, dan hobi dalam Bahasa Indonesia.'),
(34, 16, 'Materi 1: Imbuhan Dasar (Me- & Ber-)', 'Pendalaman fungsi awalan me- dan ber- pada kata kerja aktif.'),
(35, 16, 'Materi 2: Struktur Kalimat SPOK', 'Cara menyusun kalimat yang baik dan benar sesuai standar PUEBI.'),
(36, 16, 'Materi 3: Kosakata Formal & Baku', 'Perbedaan kata baku dan tidak baku serta penggunaannya dalam surat resmi.'),
(37, 16, 'Materi 4: Percakapan di Lingkungan Kerja', 'Simulasi dialog profesional dengan atasan dan rekan bisnis.'),
(38, 7, 'Materi 1: Salam dan Perkenalan Formal', 'Belajar cara menyapa orang yang lebih tua atau atasan menggunakan bentuk formal (Sumnida/Imnida).'),
(39, 7, 'Materi 2: Partikel Penanda (Subject & Object)', 'Penggunaan partikel 이/가 (Subject) dan 을/를 (Object) dalam struktur kalimat sehari-hari.'),
(40, 7, 'Materi 3: Angka Native & Sino Korea', 'Mempelajari perbedaan penggunaan angka Native (untuk umur/jam) dan Sino (untuk tanggal/uang).'),
(41, 7, 'Materi 4: Tata Bahasa -yo (Informal Sopan)', 'Cara mengubah kata kerja dasar menjadi bentuk -아요/어요 untuk percakapan akrab namun tetap sopan.'),
(46, 5, 'Materi 1: Partikel Dasar (Wa, No, Mo)', 'Penggunaan partikel は (subjek), の (kepemilikan), dan も (juga) dalam kalimat.'),
(47, 5, 'Materi 2: Kata Tunjuk (Kore, Sore, Are)', 'Mempelajari cara menunjuk benda berdasarkan jarak dari pembicara dan lawan bicara.'),
(48, 5, 'Materi 3: Kata Kerja Desu & Masu', 'Memahami perubahan kata kerja bentuk sopan untuk menyatakan kegiatan sehari-hari.'),
(49, 5, 'Materi 4: Struktur Kalimat Tanya (Ka)', 'Cara membuat kalimat tanya sederhana menggunakan partikel か di akhir kalimat.'),
(50, 8, 'Materi 1: Pengenalan Hiragana A-O', 'Belajar menulis dan melafalkan huruf vokal dasar: あ (a), い (i), う (u), え (e), お (o).'),
(51, 8, 'Materi 2: Baris Ka-Ko dan Sa-So', 'Latihan menulis huruf か, き, く, け, こ dan さ, し, す, せ, そ.'),
(52, 8, 'Materi 3: Pengenalan Katakana Dasar', 'Belajar huruf Katakana yang digunakan khusus untuk kata serapan asing seperti Kohi (Kopi).'),
(53, 8, 'Materi 4: Salam Sapaan (Aisatsu)', 'Mempelajari sapaan dasar seperti Ohayou, Konnichiwa, dan Arigatou.');

-- --------------------------------------------------------

--
-- Table structure for table `progres`
--

CREATE TABLE `progres` (
  `progres_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `materi_id` int(11) NOT NULL,
  `status` enum('belum','selesai') DEFAULT 'belum',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `progres`
--

INSERT INTO `progres` (`progres_id`, `user_id`, `materi_id`, `status`, `updated_at`) VALUES
(22, 2, 1, 'selesai', '2026-01-09 12:54:00'),
(23, 2, 2, 'selesai', '2026-01-09 12:54:04'),
(24, 2, 3, 'selesai', '2026-01-09 12:54:06'),
(25, 3, 1, 'selesai', '2026-01-09 13:03:56'),
(26, 3, 16, 'selesai', '2026-01-09 13:20:30'),
(27, 3, 17, 'selesai', '2026-01-09 13:20:36'),
(28, 3, 18, 'selesai', '2026-01-09 13:20:37'),
(29, 3, 19, 'selesai', '2026-01-09 13:20:38');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `user_id`, `tanggal`, `total`) VALUES
(8, 2, '2026-01-09', 399000.00),
(9, 3, '2026-01-09', 49000.00);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `detail_id` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL,
  `jenis_subscribe` enum('bulanan','tahunan') NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `durasi_bulan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`detail_id`, `transaksi_id`, `jenis_subscribe`, `harga`, `durasi_bulan`) VALUES
(8, 8, 'tahunan', 399000.00, 12),
(9, 9, 'bulanan', 49000.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `is_premium` tinyint(1) DEFAULT 0,
  `premium_until` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `nama`, `email`, `password`, `role`, `is_premium`, `premium_until`, `created_at`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin123', 'admin', 0, NULL, '2026-01-09 12:26:06'),
(2, 'Albert', 'albert@gmail.com', 'albertleo', 'user', 1, '2027-01-09', '2026-01-09 12:27:47'),
(3, 'Christopher', 'chris@gmail.com', 'chris123', 'user', 1, '2026-02-09', '2026-01-09 13:03:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bahasa`
--
ALTER TABLE `bahasa`
  ADD PRIMARY KEY (`bahasa_id`);

--
-- Indexes for table `kursus`
--
ALTER TABLE `kursus`
  ADD PRIMARY KEY (`kursus_id`),
  ADD KEY `bahasa_id` (`bahasa_id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`materi_id`),
  ADD KEY `kursus_id` (`kursus_id`);

--
-- Indexes for table `progres`
--
ALTER TABLE `progres`
  ADD PRIMARY KEY (`progres_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `materi_id` (`materi_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `transaksi_id` (`transaksi_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bahasa`
--
ALTER TABLE `bahasa`
  MODIFY `bahasa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kursus`
--
ALTER TABLE `kursus`
  MODIFY `kursus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `materi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `progres`
--
ALTER TABLE `progres`
  MODIFY `progres_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kursus`
--
ALTER TABLE `kursus`
  ADD CONSTRAINT `kursus_ibfk_1` FOREIGN KEY (`bahasa_id`) REFERENCES `bahasa` (`bahasa_id`) ON DELETE CASCADE;

--
-- Constraints for table `materi`
--
ALTER TABLE `materi`
  ADD CONSTRAINT `materi_ibfk_1` FOREIGN KEY (`kursus_id`) REFERENCES `kursus` (`kursus_id`) ON DELETE CASCADE;

--
-- Constraints for table `progres`
--
ALTER TABLE `progres`
  ADD CONSTRAINT `progres_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `progres_ibfk_2` FOREIGN KEY (`materi_id`) REFERENCES `materi` (`materi_id`) ON DELETE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD CONSTRAINT `transaksi_detail_ibfk_1` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksi` (`transaksi_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
