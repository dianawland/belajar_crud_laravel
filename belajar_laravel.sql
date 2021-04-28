-- phpMyAdmin SQL Dump
-- version 5.0.4deb2~bpo10+1+bionic1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 27 Apr 2021 pada 00.59
-- Versi server: 5.7.33-0ubuntu0.18.04.1
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `pegawai_id` int(11) NOT NULL,
  `pegawai_nama` varchar(50) NOT NULL,
  `pegawai_jabatan` varchar(20) NOT NULL,
  `pegawai_umur` int(11) NOT NULL,
  `pegawai_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`pegawai_id`, `pegawai_nama`, `pegawai_jabatan`, `pegawai_umur`, `pegawai_alamat`) VALUES
(3, 'park jimin', 'vocal line', 27, 'busan'),
(4, 'Joni', 'Web Designer', 25, 'Jl. Panglateh'),
(5, 'Sadina Wijayanti S.Sos', 'vel', 28, 'Ki. Bakin No. 633, Tarakan 44685, Sulbar'),
(6, 'Mahdi Eko Iswahyudi', 'qui', 36, 'Jln. Babah No. 681, Lhokseumawe 81047, Sulteng'),
(7, 'Sakura Puti Puspita', 'aut', 37, 'Jr. Babah No. 306, Tanjung Pinang 36433, Sulsel'),
(8, 'Julia Hassanah', 'in', 27, 'Psr. Salatiga No. 615, Sukabumi 12979, Kaltara'),
(9, 'Alambana Prabowo', 'qui', 34, 'Dk. Bahagia  No. 943, Tidore Kepulauan 40493, Sulsel'),
(10, 'Candra Sinaga', 'ut', 25, 'Gg. Ters. Kiaracondong No. 302, Ambon 40592, DIY'),
(11, 'Baktianto Nugroho', 'iure', 27, 'Jln. Ekonomi No. 365, Sorong 67554, Sulbar'),
(12, 'Janet Sarah Hariyah', 'autem', 30, 'Jln. Bak Mandi No. 249, Balikpapan 47065, Sulbar'),
(13, 'Maya Ifa Yolanda', 'non', 39, 'Ds. Warga No. 954, Semarang 86393, Pabar'),
(14, 'Fitria Shakila Mardhiyah M.Ak', 'quam', 39, 'Dk. Bara Tambar No. 225, Semarang 84516, DIY'),
(15, 'Irma Rahimah', 'et', 27, 'Ds. Bakhita No. 575, Mataram 28332, Jateng'),
(16, 'Siti Suartini', 'omnis', 28, 'Gg. Siliwangi No. 758, Semarang 65740, Sulteng'),
(17, 'Chelsea Lestari M.Pd', 'perferendis', 32, 'Ki. Dahlia No. 564, Yogyakarta 97769, Riau'),
(18, 'Yunita Intan Wijayanti', 'itaque', 26, 'Gg. Suharso No. 680, Palembang 15601, Kepri'),
(19, 'Puspa Widya Pertiwi M.Pd', 'corrupti', 29, 'Ki. Basmol Raya No. 43, Payakumbuh 57182, Malut'),
(20, 'Lala Queen Padmasari M.Pd', 'et', 36, 'Ki. Basket No. 55, Pematangsiantar 15168, Bengkulu'),
(21, 'Halima Clara Agustina M.TI.', 'aut', 35, 'Ds. Achmad Yani No. 564, Pontianak 87248, Papua'),
(22, 'Bakiono Jaka Ardianto', 'est', 33, 'Gg. Labu No. 417, Mataram 21824, Jabar'),
(23, 'Indra Hidayanto', 'dolorem', 35, 'Kpg. Rajiman No. 319, Probolinggo 96228, Sulsel'),
(24, 'Harja Pangestu', 'in', 28, 'Jr. Baiduri No. 571, Lhokseumawe 71410, Sumsel'),
(25, 'Jessica Wijayanti', 'eum', 32, 'Gg. Tambun No. 538, Samarinda 96375, Aceh'),
(26, 'Setya Kusumo', 'cupiditate', 39, 'Jr. Pelajar Pejuang 45 No. 235, Serang 97279, Sumut'),
(27, 'Maida Suartini S.Ked', 'modi', 29, 'Psr. Gatot Subroto No. 891, Bitung 23571, Banten'),
(28, 'Siska Wulandari', 'alias', 40, 'Jr. Karel S. Tubun No. 310, Semarang 89490, Aceh'),
(29, 'Hardana Tarihoran', 'maiores', 37, 'Ds. Bambon No. 590, Tangerang 46371, Maluku'),
(30, 'Daliman Emas Siregar', 'in', 25, 'Psr. S. Parman No. 457, Binjai 71407, NTT'),
(31, 'Nyoman Habibi', 'numquam', 34, 'Gg. Gatot Subroto No. 523, Bukittinggi 83787, NTB'),
(32, 'Lukita Wasita S.Ked', 'ab', 26, 'Jr. Bak Air No. 843, Sawahlunto 69447, Sumbar'),
(33, 'Faizah Pertiwi', 'in', 40, 'Psr. Bata Putih No. 941, Banjarbaru 60734, Papua'),
(34, 'Intan Maryati', 'ut', 40, 'Dk. Ekonomi No. 589, Metro 41549, Jatim'),
(35, 'Galak Prakasa', 'quibusdam', 35, 'Ki. Bahagia  No. 213, Gunungsitoli 47663, Kalsel'),
(36, 'Bella Puspita', 'blanditiis', 29, 'Kpg. Barat No. 903, Sabang 50973, Kalsel'),
(37, 'Edison Prasetyo', 'debitis', 30, 'Gg. Soekarno Hatta No. 243, Sukabumi 35385, Riau'),
(38, 'Intan Melani', 'quia', 25, 'Jr. Sutarjo No. 247, Banjarmasin 77341, Jabar'),
(39, 'Irnanto Sitompul', 'aut', 29, 'Ki. Sampangan No. 361, Tanjung Pinang 66006, Riau'),
(40, 'Lalita Sakura Prastuti S.IP', 'rerum', 29, 'Ki. Antapani Lama No. 480, Banda Aceh 19888, Lampung'),
(41, 'Siti Hariyah', 'quaerat', 25, 'Kpg. Moch. Yamin No. 757, Mojokerto 48501, Gorontalo'),
(42, 'Irma Usada S.I.Kom', 'culpa', 34, 'Dk. Jend. A. Yani No. 325, Tangerang Selatan 92943, Sultra'),
(43, 'Dalima Farida', 'non', 38, 'Gg. Uluwatu No. 722, Kendari 78287, Maluku'),
(44, 'Raisa Astuti', 'necessitatibus', 32, 'Kpg. Sudirman No. 22, Tangerang Selatan 83921, Kaltara'),
(45, 'Mahdi Jumadi Rajata S.IP', 'eos', 38, 'Ds. Banal No. 232, Pariaman 72651, Malut'),
(46, 'Sari Wastuti', 'voluptatem', 29, 'Jr. Hang No. 56, Gunungsitoli 50523, Kepri'),
(47, 'Lukita Tarihoran', 'accusamus', 35, 'Ki. Yosodipuro No. 54, Palembang 30721, Babel'),
(48, 'Sarah Prastuti', 'sunt', 32, 'Gg. Abdullah No. 577, Tebing Tinggi 12091, Sumut'),
(49, 'Ani Wijayanti', 'quis', 32, 'Jr. Jakarta No. 55, Metro 19969, Babel'),
(50, 'Ika Gawati Farida', 'veritatis', 28, 'Dk. Bagis Utama No. 57, Palembang 85149, Bengkulu'),
(51, 'Olga Budiman', 'sunt', 37, 'Gg. Tubagus Ismail No. 680, Tegal 50727, Kaltim'),
(52, 'Amalia Astuti', 'ut', 28, 'Ki. Babah No. 103, Bukittinggi 80569, Pabar'),
(53, 'Bahuraksa Bahuwarna Maheswara', 'natus', 30, 'Ds. Ters. Jakarta No. 80, Bengkulu 52962, NTB'),
(54, 'Taufan Natsir M.Pd', 'sed', 25, 'Ds. Setia Budi No. 394, Palopo 21920, Bali'),
(55, 'kim seokjin', 'desain grafis', 29, 'gwacheon'),
(56, 'kim namjoon', 'uri leader', 27, 'tokyo'),
(57, 'min yoongi', 'rapper', 28, 'daegu'),
(58, 'V', 'vocal line', 25, 'daegu'),
(59, 'hoseok', 'rapper', 27, 'gwacheon'),
(60, 'jeon jungkook', 'vocal line', 25, 'Busan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`pegawai_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `pegawai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
