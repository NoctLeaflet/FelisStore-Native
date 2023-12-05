-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Des 2022 pada 16.32
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
-- Database: `felisstore`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_nama` varchar(100) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_nama`, `admin_username`, `admin_password`, `admin_foto`) VALUES
(1, 'Yommu', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1026428556_Avatar pt2 copy.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_nama` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_hp` varchar(20) NOT NULL,
  `customer_alamat` text NOT NULL,
  `customer_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_nama`, `customer_email`, `customer_hp`, `customer_alamat`, `customer_password`) VALUES
(6, 'Rosalina', 'rosalina@gmail.com', '082827287', 'jalan meruakaja', '91ec1f9324753048c0096d036a694f86'),
(9, 'Ely', 'elysia@gmail.com', '056846482434', 'elysian realm', '9e5ddd7d8521f4a3e52ea797b7ed2a25'),
(10, 'Griseo', 'griseo123@gmail.com', '07829137', 'elysian realm', '9e5ddd7d8521f4a3e52ea797b7ed2a25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `invoice_tanggal` date NOT NULL,
  `invoice_customer` int(11) NOT NULL,
  `invoice_nama` varchar(255) NOT NULL,
  `invoice_hp` varchar(255) NOT NULL,
  `invoice_alamat` text NOT NULL,
  `invoice_provinsi` varchar(255) NOT NULL,
  `invoice_kabupaten` varchar(255) NOT NULL,
  `invoice_kurir` varchar(255) NOT NULL,
  `invoice_berat` int(11) NOT NULL,
  `invoice_ongkir` int(11) NOT NULL,
  `invoice_total_bayar` int(11) NOT NULL,
  `invoice_status` int(11) NOT NULL,
  `invoice_resi` varchar(255) NOT NULL,
  `invoice_bukti` text NOT NULL,
  `rating` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `invoice_tanggal`, `invoice_customer`, `invoice_nama`, `invoice_hp`, `invoice_alamat`, `invoice_provinsi`, `invoice_kabupaten`, `invoice_kurir`, `invoice_berat`, `invoice_ongkir`, `invoice_total_bayar`, `invoice_status`, `invoice_resi`, `invoice_bukti`, `rating`) VALUES
(12, '2022-11-12', 9, 'elysia', '056846482434', 'elysian realm', 'Bali', 'Bangli', 'JNE - OKE', 5000, 135000, 5285000, 5, '', '764928468.jpg', 4),
(13, '2022-11-12', 9, 'elysia', '0894698498', 'elysian realm', 'Jawa Tengah', 'Kendal', 'JNE - OKE', 2000, 38000, 2988000, 5, '', '', 4),
(14, '2022-12-16', 9, 'elysia', '1234', 'asd', 'DI Yogyakarta', 'Yogyakarta', 'JNE - OKE', 5000, 85000, 4035000, 5, '', '', 5),
(15, '2022-12-16', 9, 'elysia', '213123', 'qdwad', 'DKI Jakarta', 'Jakarta Pusat', 'JNE - CTC', 5000, 50000, 3150000, 5, '', '', 5),
(16, '2022-12-19', 9, 'elysia', '12312', 'ely realm', 'Bali', 'Bangli', 'TIKI - ECO', 5000, 130000, 4080000, 5, '', '1398253818.png', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`) VALUES
(10, 'Figure'),
(11, 'Acrylic'),
(12, 'Badge'),
(13, 'Key Chain');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `produk_id` int(11) NOT NULL,
  `produk_nama` varchar(255) NOT NULL,
  `produk_kategori` int(11) NOT NULL,
  `produk_harga` int(11) NOT NULL,
  `produk_keterangan` text NOT NULL,
  `produk_jumlah` int(11) NOT NULL,
  `produk_berat` int(11) NOT NULL,
  `produk_foto1` varchar(255) DEFAULT NULL,
  `produk_foto2` varchar(255) DEFAULT NULL,
  `produk_foto3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`produk_id`, `produk_nama`, `produk_kategori`, `produk_harga`, `produk_keterangan`, `produk_jumlah`, `produk_berat`, `produk_foto1`, `produk_foto2`, `produk_foto3`) VALUES
(14, 'PVC Figure 1/7 Yae Sakura - Dream Raiment Ver', 10, 3100000, '<p>Specifications Pre-painted Complete Figure<br>Scale: 1/7<br>Size: Approx. H38cm, Approx. W30cm / Character: Approx. H28cm<br>Material: PVC &amp; ABS<br>Details Sculptor: Seka<br>Paintwork: TORAMI, 180m/h, Yamahai\r\n\r\n<br></p>', 3, 5000, '995535685_88300-pvc-figure-17-yae-sakura-dream-raiment-ver.jpg', '995535685_88300-pvc-figure-17-yae-sakura-dream-raiment-ver2.jpg', '995535685_106309-pvc-figure-17-yae-sakura-dream-raiment-ver3.jpg'),
(15, 'PVC Figure 1/8 Kiana Kaslana - Herrscher of the Void Parasol Kaiserin Ver', 10, 2500000, '<p>\r\n\r\nSpecifications Scale: 1/8<br>Size: Approx. H24cm<br>Material: PVC<br><br>[Set Contents]<br>-Main figure\r\n\r\n<br></p>', 5, 700, '376823892_81070-pvc-figure-18-kiana-kaslana-herrscher-of-the-void-parasol-kaiserin-ver.jpg', '', ''),
(16, 'PVC Figure 1/8 Fu Hua Azure Empyrea : Cerulean Court Ver. - Honkai Impact 3', 10, 2780000, '<p>\r\n\r\nSpecifications Scale: 1/8<br>Size: Approx. H24cm<br>Material: PVC\r\n\r\n<br></p>', 6, 700, '265555547_153805-with-bonus-pvc-figure-18-fu-hua-azure-empyrea-cerulean-court-ver-honkai-impact-3.jpg', '265555547_153818-with-bonus-pvc-figure-18-fu-hua-azure-empyrea-cerulean-court-ver-honkai-impact-31.jpg', '265555547_153823-with-bonus-pvc-figure-18-fu-hua-azure-empyrea-cerulean-court-ver-honkai-impact-32.jpg'),
(17, 'PVC Figure 1/7 Himeko Murata - Vermillion Knight Ver', 10, 3750000, '<p>\r\n\r\nSpecifications Complete Figure<br>Size: Approx. H28cm / Great Sword: Approx. L52cm<br>Scale: 1/7<br>Material: PVC &amp; ABS<br><br>[Set Contents]<br>-Main figure<br><br>Details Sculptor: FANTESINBORM, btxwb<br>Paint: Luu, 180m/h, _Gallun<br>Sculpture Corporation: nexus<br>Copyright miHoYo All Rignts Reserved\r\n\r\n<br></p>', 3, 4000, '1960731842_66443-pvc-figure-17-himeko-murata-vermillion-knight-ver.jpg', '1960731842_116571-pvc-figure-17-himeko-murata-vermillion-knight-ver1.jpg', '1960731842_116572-pvc-figure-17-himeko-murata-vermillion-knight-ver2.jpg'),
(18, 'PVC Figure 1/8 Kiana Kaslana - Herrscher of the Void Ver', 10, 3950000, '<p>\r\n\r\nSpecifications Pre-painted Complete Figure<br>Scale: 1/8<br>Size: Approx. H290mm (Including Weapon/ Base) / Approx. L390mm (Including Weapon)<br>Material: PVC, ABS<br><br>[Set Contents]<br>-Main figure<br>-Base<br>Details Sculptor: sai<br>Paintwork: Nanami Tetsumori\r\n\r\n<br></p>', 4, 4000, '617249048_60888-pvc-figure-18-kiana-kaslana-herrscher-of-the-void-ver.jpg', '617249048_105894-flash-po-pvc-figure-18-kiana-kaslana-herrscher-of-the-void-ver1.jpg', '617249048_105896-flash-po-pvc-figure-18-kiana-kaslana-herrscher-of-the-void-ver2.jpg'),
(19, 'Seele Vollerei Hot Spring Holiday Trading Mini Figure (7cm) - Honkai Impact 3rd', 10, 310000, '<p>\r\n\r\nOriginal from miHoYo China\r\n\r\n<br></p>', 3, 200, '1861724358_98285-seele-vollerei-hot-spring-holiday-trading-mini-figure-7cm-honkai-impact-3rd.jpg', '', ''),
(20, 'Theresa Apocalypse Hot Spring Holiday Trading Mini Figure (7cm) - Honkai Impact 3rd', 10, 300000, '<p>\r\n\r\nOriginal from miHoYo China\r\n\r\n<br></p>', 3, 200, '2032204604_98286-theresa-apocalypse-hot-spring-holiday-trading-mini-figure-7cm-honkai-impact-3rd.jpg', '', ''),
(21, 'Bronya Zaychik Hot Spring Holiday Trading Mini Figure (7cm) - Honkai Impact 3rd', 10, 300000, '<p>\r\n\r\nOriginal from miHoYo China\r\n\r\n<br></p>', 3, 300, '889255598_98284-bronya-zaychik-hot-spring-holiday-trading-mini-figure-7cm-honkai-impact-3rd.jpg', '', ''),
(22, 'PVC Figure 1/7 Elysia - Miss Pink Maid Ver. Honkai Impact 3rd', 10, 2350000, '<p>\r\n\r\nsize<br>H=245mm W=165mm\r\n\r\n<br></p>', 2, 3000, '11810122_147642-pvc-figure-17-elysia-miss-pink-maid-ver-honkai-impact-3rd.jpg', '11810122_147647-pvc-figure-17-elysia-miss-pink-maid-ver-honkai-impact-3rd1.jpg', '11810122_147651-pvc-figure-17-elysia-miss-pink-maid-ver-honkai-impact-3rd2.jpg'),
(23, 'Raiden Mei Hot Spring Holiday Trading Mini Figure (6,5cm) - Honkai Impact 3rd', 10, 300000, '<p>\r\n\r\nOriginal from miHoYo China\r\n\r\n<br></p>', 1, 200, '1408379452_98283-raiden-mei-hot-spring-holiday-trading-mini-figure-65cm-honkai-impact-3rd.jpg', '', ''),
(24, 'Kiana Kaslana Hot Spring Holiday Trading Mini Figure (5,5cm) - Honkai Impact 3rd', 10, 300000, '<p>Original form mihoyo Chinna</p>', 3, 200, '1220620556_98282-kiana-kaslana-hot-spring-holiday-trading-mini-figure-55cm-honkai-impact-3rd.jpg', '', ''),
(25, 'PVC Figure 1/7 Theresa Apocalypse - Starlit Astrologos', 10, 2750000, '<p>\r\n\r\n\r\n\r\nSpecifications Pre-painted Complete Figure<br>Scale: 1/7<br>Size: Approx. H30cm (including base)<br>Material: PVC<br>Details Sculptor: Hobbymax<br>Cooperation: kiking, hiro\r\n\r\n\r\n\r\n<br></p>', 4, 4000, '1933379152_92774-pvc-figure-17-theresa-apocalypse-starlit-astrologos-orchids-night-ver.jpg', '1933379152_120345-pvc-figure-17-theresa-apocalypse-starlit-astrologos-orchids-night-ver1.jpg', '1933379152_120353-pvc-figure-17-theresa-apocalypse-starlit-astrologos-orchids-night-ver2.jpg'),
(26, 'PVC Figure 1/7 Seele - Swaying Cats Tail', 10, 2000000, '<p>\r\n\r\nMaterial:<br>PVC、ABS<br><br>size:<br>H=160mm (including base)\r\n\r\n<br></p>', 3, 2000, '524345772_146495-pvc-figure-17-seele-swaying-cats-tail-ver-honkai-gakuen-2.jpg', '524345772_97934-pvc-figure-17-seele-swaying-cats-tail-ver-honkai-gakuen-21.jpg', '524345772_146497-pvc-figure-17-seele-swaying-cats-tail-ver-honkai-gakuen-22.jpg'),
(27, 'Liliya & Rozaliya Holy Night Symphonic Poem Chibi Acrylic Keychain Stand - Honkai Impact 3rd', 13, 120000, '<p>\r\n\r\nOriginal from miHoYo China\r\n\r\n<br></p>', 5, 50, '802496065_154226-liliya-rozaliya-holy-night-symphonic-poem-chibi-acrylic-keychain-stand-honkai-impact-3rd.jpg', '', ''),
(28, 'Bronya Zaychik Holy Night Symphonic Poem Chibi Acrylic Keychain Stand - Honkai Impact 3rd', 13, 120000, '<p>Original china</p>', 4, 50, '1880006747_154220-bronya-zaychik-holy-night-symphonic-poem-chibi-acrylic-keychain-stand-honkai-impact-3rd.jpg', '', ''),
(29, 'Theresa Apocalypse Holy Night Symphonic Poem Chibi Acrylic Keychain Stand - Honkai Impact 3rd', 13, 120000, '<p>Original from klasna</p>', 5, 50, '1470815367_154223-theresa-apocalypse-holy-night-symphonic-poem-chibi-acrylic-keychain-stand-honkai-impact-3rd.jpg', '', ''),
(30, 'Kiana Kaslana Holy Night Symphonic Poem Chibi Acrylic Keychain Stand - Honkai Impact 3rd', 13, 120000, '<p>Original From Klasna</p>', 4, 50, '1683668339_154218-kiana-kaslana-holy-night-symphonic-poem-chibi-acrylic-keychain-stand-honkai-impact-3rd.jpg', '', ''),
(31, 'Raiden Mei Holy Night Symphonic Poem Chibi Acrylic Keychain Stand - Honkai Impact 3rd', 13, 120000, '<p>Original From Japan</p>', 3, 50, '674128523_154219-raiden-mei-holy-night-symphonic-poem-chibi-acrylic-keychain-stand-honkai-impact-3rd.jpg', '', ''),
(32, 'Bronya Silver Wings Stigma Series Acrylic Stand (14cm) - Honkai Impact 3rd', 11, 220000, '<p>\r\n\r\nOriginal from Japan\r\n\r\n<br></p>', 3, 100, '1544537942_147977-bronya-silver-wings-stigma-series-acrylic-stand-14cm-honkai-impact-3rd.jpg', '', ''),
(33, 'Mobius Flame-Chasers Series Acrylic Stand (16cm) - Honkai Impact 3rd', 11, 220000, '<p>\r\n\r\nOriginal from Japan\r\n\r\n<br></p>', 3, 100, '1972096201_147957-nov-2023-release-mobius-flame-chasers-series-acrylic-stand-16cm-honkai-impact-3rd.jpg', '', ''),
(34, 'Vill-V Flame-Chasers Series Acrylic Stand (16cm) - Honkai Impact 3rd', 11, 220000, '<p>Original from Japan</p>', 5, 100, '1312386518_147956-nov-2023-release-vill-v-flame-chasers-series-acrylic-stand-16cm-honkai-impact-3rd.jpg', '', ''),
(35, 'Eden Flame-Chasers Series Acrylic Stand (17cm) - Honkai Impact 3rd', 11, 220000, '<p>Original from japan</p>', 5, 100, '2122336940_147955-nov-2023-release-eden-flame-chasers-series-acrylic-stand-17cm-honkai-impact-3rd.jpg', '', ''),
(36, 'Griseo Flame-Chasers Series Acrylic Stand (16cm) - Honkai Impact 3rd', 11, 220000, '<p>Original from japan</p>', 5, 100, '1102962945_147958-nov-2023-release-griseo-flame-chasers-series-acrylic-stand-16cm-honkai-impact-3rd.jpg', '', ''),
(37, 'Pardofelis Flame-Chasers Series Acrylic Stand (13cm) - Honkai Impact 3rd', 11, 220000, '<p>Original from japan</p>', 5, 100, '1731591425_147959-nov-2023-release-pardofelis-flame-chasers-series-acrylic-stand-13cm-honkai-impact-3rd.jpg', '', ''),
(38, 'Aponia Flame-Chasers Series Acrylic Stand (17cm) - Honkai Impact 3rd', 11, 220000, '<p>Original from japan</p>', 6, 100, '85108005_147954-nov-2023-release-aponia-flame-chasers-series-acrylic-stand-17cm-honkai-impact-3rd.jpg', '', ''),
(39, 'Elysia Flame-Chasers Series Acrylic Stand (13cm) - Honkai Impact 3rd', 11, 220000, '<p>original from japan</p>', 4, 100, '1877358758_147952-nov-2023-release-elysia-flame-chasers-series-acrylic-stand-13cm-honkai-impact-3rd.jpg', '', ''),
(40, 'Herrscher of Human:EGO Stigma Series Badge Set - Honkai Impact 3rd', 12, 130000, '<p>\r\n\r\nOriginal from miHoYo China\r\n\r\n<br></p>', 5, 50, '1273185552_154794-dec-2022-release-herrscher-of-humanego-stigma-series-badge-set-honkai-impact-3rd.jpg', '', ''),
(41, 'Bronya Zaychik Ver. Can Badge (58mm) - Honkai Impact 3rd', 12, 70000, '<p>Original from china</p>', 5, 50, '743738345_133235-aug-2022-release-bronya-zaychik-ver-can-badge-58mm-honkai-impact-3rd.jpg', '', ''),
(42, 'Kiana kaslana Ver. Can Badge (58mm) - Honkai Impact 3rd', 12, 70000, '<p>Original from china</p>', 5, 50, '430553251_133234-aug-2022-release-kiana-kaslana-ver-can-badge-58mm-honkai-impact-3rd.jpg', '', ''),
(43, 'Bronya Silver Wings Stigma Series Can Badge Set (5.8cm) - Honkai Impact 3rd', 12, 130000, '<p>\r\n\r\nOriginal from Japan\r\n\r\n<br></p>', 5, 50, '1960692445_147983-oct-2023-release-bronya-silver-wings-stigma-series-can-badge-set-58cm-honkai-impact-3rd.jpg', '', ''),
(44, 'Griseo Chibi Can Badge (5,8cm) - Honkai Impact 3rd', 12, 65000, '<p>Original from china</p>', 4, 50, '1628715753_144403-griseo-chibi-can-badge-58cm-honkai-impact-3rd.jpg', '', ''),
(45, '[Set of 15] Flame Chasers Trading Can Badge - Honkai Impact 3rd', 12, 670000, '<p>Original from china</p>', 3, 50, '218353712_137328-sept-2022-release-set-of-15-flame-chasers-trading-can-badge-honkai-impact-3rd.jpg', '', ''),
(46, 'Herrscher of Human:EGO Stigma Series Acrylic Stand (14cm) - Honkai Impact 3rd', 11, 220000, '<p>Original from japan</p>', 5, 100, '1372401196_154793-dec-2022-release-herrscher-of-humanego-stigma-series-acrylic-stand-14cm-honkai-impact-3rd.jpg', '', ''),
(47, 'Kiana Kaslana Valkyrie Mid-Autumn 2022 Acrylic Stand - Honkai Impact 3rd', 11, 220000, '<p>Original from japan</p>', 4, 100, '1515102438_144360-sept-2022-release-kiana-kaslana-valkyrie-mid-autumn-2022-acrylic-stand-honkai-impact-3rd.jpg', '', ''),
(48, 'Bronya Zaychik Valkyrie Mid-Autumn 2022 Acrylic Stand - Honkai Impact 3rd', 11, 220000, '<p>Orifinal from japan</p>', 4, 100, '654202609_144362-sept-2022-release-bronya-zaychik-valkyrie-mid-autumn-2022-acrylic-stand-honkai-impact-3rd.jpg', '', ''),
(49, 'Raiden Mei Valkyrie Mid-Autumn 2022 Acrylic Stand - Honkai Impact 3rd', 11, 220000, '<p>Original from japan</p>', 4, 100, '921107347_144361-sept-2022-release-raiden-mei-valkyrie-mid-autumn-2022-acrylic-stand-honkai-impact-3rd.jpg', '', ''),
(50, 'PVC Figure 1/7 Kiana Kaslana - Herrscher of Flamescion Ver', 10, 3450000, '<p>\r\n\r\nMaterial : PVC,ABS ; Size : 33cm\r\n\r\n<br></p>', 2, 4000, '2083094141_129185-pvc-figure-17-kiana-kaslana-herrscher-of-flamescion-ver.jpg', '2083094141_129537-pvc-figure-17-kiana-kaslana-herrscher-of-flamescion-ver.jpg', '2083094141_129553-pvc-figure-17-kiana-kaslana-herrscher-of-flamescion-ver.jpg'),
(51, 'PVC Figure 1/8 Raiden Mei - Herrscher of Thunder DX Ver', 10, 3950000, '<p>\r\n\r\nSpecifications Complete Figure<br>Scale: 1/8<br>Size: Approx. H27cm<br>Material: PVC<br><br>Details<br>Sculptor: Seigi, R.C<br>Supervising Director: alive<br>Paintwork: 180m/h, Mizuoni\r\n\r\n<br></p>', 3, 5000, '1354979105_83636-pvc-figure-18-raiden-mei-herrscher-of-thunder-dx-ver.jpg', '1354979105_105892-pvc-figure-18-raiden-mei-herrscher-of-thunder-dx-ver.jpg', '1354979105_105893-pvc-figure-18-raiden-mei-herrscher-of-thunder-dx-ver.jpg'),
(52, 'PVC Figure 1/8 Theresa Apocalypse - Shallow Sunset Ver', 10, 2200000, '<p>\r\n\r\nSpecifications Complete Figure<br>Scale: 1/8<br>Size: Approx. H25cm<br>Material: PVC<br>[Set Contents]<br>-Houkai 3rd Theresa Apocalypse Sunset and Sand Bar Ver. 1/8 Complete Figure<br><br>Details Sculptor: Meow<br>Supervising Director: Seka<br>Painting: _Gallun\r\n\r\n<br></p>', 2, 3000, '705612662_73420-pvc-figure-18-theresa-apocalypse-shallow-sunset-ver.jpg', '705612662_99115-pvc-figure-18-theresa-apocalypse-shallow-sunset-ver.jpg', '705612662_99116-pvc-figure-18-theresa-apocalypse-shallow-sunset-ver.jpg'),
(53, 'PVC Figure 1/8 Yae Sakura - Chinese Dress Ver', 10, 2950000, '<p>\r\n\r\nSpecifications Complete Figure<br>Scale: 1/8<br>Size: Approx. H30cm<br>Material: PVC, ABS<br><br>[Set Contents]<br>-Main figure<br>-Optional background board x3 types<br></p>', 3, 2000, '1205971974_55408-pvc-figure-18-yae-sakura-chinese-dress-ver.jpg', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_invoice` int(11) NOT NULL,
  `transaksi_produk` int(11) NOT NULL,
  `transaksi_jumlah` int(11) NOT NULL,
  `transaksi_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `transaksi_invoice`, `transaksi_produk`, `transaksi_jumlah`, `transaksi_harga`) VALUES
(1, 0, 3, 1, 120000),
(2, 0, 1, 1, 1234),
(3, 0, 3, 1, 120000),
(4, 0, 1, 1, 1234),
(5, 1, 3, 1, 120000),
(6, 1, 1, 1, 1234),
(9, 3, 3, 1, 120000),
(10, 4, 4, 1, 123000),
(24, 12, 53, 1, 2950000),
(25, 12, 52, 1, 2200000),
(26, 13, 53, 1, 2950000),
(27, 14, 51, 1, 3950000),
(28, 15, 14, 1, 3100000),
(29, 16, 51, 1, 3950000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indeks untuk tabel `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`produk_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
