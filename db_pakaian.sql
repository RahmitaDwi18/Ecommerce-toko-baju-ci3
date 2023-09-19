-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2021 at 05:21 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pakaian`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `cookie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `cookie`) VALUES
(1, 'admin', '$2y$10$uaZUtDA75L0Q0d46tTiVluKF3sqQ2bV.VFiqzyKlcqiEMn8vtRwQi', 'drHSlSvMKNFe7ZvhFUwb9HoIm5mCplX5qRXEPyycj8d0PtwDDZAn6KI4OabVMJAB');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `img` varchar(30) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `img`, `url`) VALUES
(13, '1617274610132.png', '#'),
(14, '1617471515402.png', '#'),
(15, '1617471515403.png', '#');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `slug` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `slug`) VALUES
(2, 'Skirt', '1636205345391.png', 'skirt'),
(4, 'T-Shirt', '1617279792015.png', 't-shirt'),
(7, 'Pants', '1617280045062.png', 'pants'),
(8, 'Dress', '1636125150242.jpg', 'dress'),
(9, 'Hijab', '1636133689909.jpg', 'hijab');

-- --------------------------------------------------------

--
-- Table structure for table `cost_delivery`
--

CREATE TABLE `cost_delivery` (
  `id` int(11) NOT NULL,
  `destination` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cost_delivery`
--

INSERT INTO `cost_delivery` (`id`, `destination`, `price`) VALUES
(2, 65, 15000),
(4, 318, 35000),
(5, 158, 100000),
(6, 63, 15000),
(7, 64, 15000),
(8, 327, 30000),
(9, 17, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `email_send`
--

CREATE TABLE `email_send` (
  `id` int(11) NOT NULL,
  `mail_to` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_send`
--

INSERT INTO `email_send` (`id`, `mail_to`, `subject`, `message`) VALUES
(12, 26, '[Kelompok 8]', '<p>Assalamualaikum</p>'),
(13, 27, 'kel8', '<p>Tes</p>');

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(11) NOT NULL,
  `page` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `page`, `type`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 2, 2),
(4, 1, 1),
(5, 4, 1),
(6, 5, 1),
(7, 6, 2),
(8, 7, 2),
(9, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `invoice_code` varchar(10) NOT NULL,
  `label` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `province` int(11) NOT NULL,
  `regency` int(11) NOT NULL,
  `district` varchar(50) NOT NULL,
  `village` varchar(50) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `address` text NOT NULL,
  `courier` varchar(5) NOT NULL,
  `courier_service` varchar(70) NOT NULL,
  `ongkir` varchar(10) NOT NULL,
  `total_price` int(11) NOT NULL,
  `total_all` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_limit` datetime NOT NULL,
  `process` int(11) NOT NULL,
  `send` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `invoice_code`, `label`, `name`, `email`, `telp`, `province`, `regency`, `district`, `village`, `zipcode`, `address`, `courier`, `courier_service`, `ongkir`, `total_price`, `total_all`, `date_input`, `date_limit`, `process`, `send`) VALUES
(52, '963392', 'asd', '12', '312@gmail.com', '12', 5, 419, 'ads', 'asd', 6656, 'adsa', 'jne', 'REG', '37000', 90000, 127000, '2021-04-01 20:32:43', '2021-04-03 20:32:43', 1, 1),
(62, '402245', 'Rumah', 'Rahmita', 'dwikurniarahmita@gmail.com', '085267257475', 4, 62, 'Sungai Serut', 'Surabaya', 38119, 'Jl. Halmahera', 'jne', 'OKE', '20000', 358000, 378000, '2021-11-06 17:43:22', '2021-11-08 17:43:22', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `slug` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `slug`) VALUES
(1, 'Tentang Kami', '<p>MINIMSLM membantu Anda untuk tampil Percaya Diri dan Elegant.</p><p>Why MINIMSLM ?&nbsp;</p><p>1, &nbsp;<strong>Minimalist Look</strong></p><p>Get your minimal look with our neutral<br>colours and straight cutting line products.</p><p>2. <strong>Best Price Guarantee</strong></p><p>Get your favorite products<br>with affordable price.</p><p>3. <strong>Syar\'i</strong></p><p>Embracing taqwa, we got you<br>covered with our syar\'i wear.</p>', 'about'),
(2, 'Kontak Kami', '<p>Hubungi Tim Penjualan Kami</p><p><strong>Konsultan Penjualan</strong></p><p>Melayani kebutuhan Anda untuk seluruh kategori produk. Silakan hubungi 085764468881</p><p><strong>Kantor Pusat</strong><br><strong>Jl. W.R Supratman, Kota Bengkulu</strong></p><p><strong>Layanan Klaim Garansi</strong></p><p>Untuk bantuan teknisi dan klaim garansi produk, silakan telepon ke 085764468881</p><p><strong>Layanan Pengembalian Barang &amp; Refund</strong><br>Jika produk yang diterima salah/cacat/rusak &amp; ingin mengurus pengembalian dana, untuk laporan dan bantuan dapat menghubungi kami di kelompok8basda@gmail.com</p><p><strong>Layanan Pelanggan</strong></p><p>Silakan berikan feedback atas pelayanan yang kurang berkenan dari tim kami. Tuliskan masukan Anda&nbsp;</p><p><strong>Status Pengiriman</strong></p><p>Bisa hubungi Rahmita (+6285267257475)</p><p><strong>Merchant MINIMSLM Marketplace</strong></p><p>Ingin memulai jualan di MINIMSLM? Anda bisa mendaftar menjadi merchant &amp; bertanya seputar MINIMSLM Marketplace&nbsp;</p><p><strong>Tidak Dapat Menemukan Tim yang Anda Cari?</strong></p><p>Anda dapat menghubungi kami di kelompok8basda@gmail.com</p>', 'contact'),
(3, 'Testimoni', '<p>redirect page</p>', 'testimoni'),
(4, 'Kebijakan Privasi', '<h2><strong>KEBIJAKAN PRIVASI SITUS DAN APLIKASI MINIMSLM</strong></h2><p>Berkualitas</p><h2><strong>Informasi yang kami kumpulkan</strong></h2><p>Berkualitas</p><h2><strong>BAGAIMANA MINIMSLM MENGGUNAKAN INFORMASI</strong></h2><p>Berkualitas</p><h2><strong>UPDATE KEBIJAKAN PRIVASI INI</strong></h2><p>Berkualitas</p>', 'privacy-policy'),
(6, 'Cara Berbelanja', '<p>Anda bisa mengklik “Blanja sekarang” di blanja.com untuk membeli produk, atau Anda bisa menambahkan produk ke Favorit dahulu lalu menempatkan pesanan.</p><p><strong>1. Belanja sekarang</strong></p><p>1.1 Jika Anda ingin membeli produk langsung ketika Anda melihatnya di Product Detail Page (gambar di bawah), Anda bisa mengklik “Blanja sekarang” setelah Anda memilih atribut, jumlah, dll. dari produk tersebut.</p><p>1.2 Setelah Anda mengkonfirmasi alamat pengiriman, informasi pesanan dan informasi lainnya, klik “Selanjutnya”.</p><p>1.3 Anda bisa masuk ke “My blanja”-“Pesanan Saya” dan melihat pesanan yang telah ditempatkan. Jika Anda sudah mengkonfirmasi jumlah dari pesanan tersebut, klik “Bayar”.</p><p>1.4 Masuk ke halaman pembayaran dan bayarkan pesanan. Status pemesanan akan berubah menjadi “Telah dibayar”, yang artinya barang sedang menunggu dikirim oleh penjual.</p><p>1.5 Setelah penjual berhasil mengirimkan barang, status pemesanan akan berubah menjadi “Telah dikirim”. Ketika anda menerima barang dan mengkonfirmasi, mohon klik “Konfirmasi”.Anda harus memasukkan password Dompet Blanja sebelum mengklik “Konfirmasi”.</p><p>1.6 Ketika status berubah ke \"Selesai\", maka berarti transaksi telah selesai<strong>Checkout beberapa produk yang telah ditambahkan ke Troli blanja secara bersamaan</strong></p><p>Anda bisa menambahkan beberapa produk ke Troli blanja dan membelinya secara bersamaan, lalu menempatkan pesanan dan membayar sekali sekaligus. Prosesnya sama seperti proses “Blanja sekarang”.</p>', 'shopping-help'),
(7, 'Pengiriman Barang', '<ol><li>Pengiriman barang untuk setiap transaksi yang terjadi melalui Platform Bukalapak menggunakan layanan pengiriman barang yang disediakan Bukalapak atas kerjasama Bukalapak dengan pihak jasa ekspedisi pengiriman barang resmi.</li><li>Pengguna memahami dan menyetujui bahwa segala bentuk peraturan terkait dengan syarat dan ketentuan pengiriman barang sepenuhnya ditentukan oleh pihak jasa ekspedisi pengiriman barang dan sepenuhnya menjadi tanggung jawab pihak jasa ekspedisi pengiriman barang.</li><li>Bukalapak hanya berperan sebagai media perantara antara Pengguna dengan pihak jasa ekspedisi pengiriman barang.</li><li>Pengguna wajib memahami, menyetujui, serta mengikuti ketentuan-ketentuan pengiriman barang yang telah dibuat oleh pihak jasa ekspedisi pengiriman barang.</li><li>Pengiriman barang atas transaksi melalui sistem Bukalapak menggunakan jasa ekspedisi pengiriman barang dilakukan dengan tujuan agar barang dapat dipantau melalui sistem Bukalapak.</li><li>Pelapak (Penjual) wajib bertanggung jawab penuh atas barang yang dikirimnya.</li><li>Pengguna memahami dan menyetujui bahwa segala bentuk kerugian yang dapat timbul akibat kerusakan ataupun kehilangan pada barang, baik pada saat pengiriman barang tengah berlangsung maupun pada saat pengiriman barang telah selesai, adalah sepenuhnya tanggung jawab pihak jasa ekspedisi pengiriman barang.</li><li>Dalam hal diperlukan untuk dilakukan proses pengembalian barang, maka Pengguna, baik Pelapak (Penjual) maupun Pembeli, diwajibkan untuk melakukan pengiriman barang langsung ke masing-masing Pembeli maupun Pelapak (Penjual). Bukalapak tidak menerima pengembalian atau pengiriman barang atas transaksi yang dilakukan oleh Pengguna dalam kondisi apa pun.</li></ol>', 'pengiriman-barang'),
(10, 'Historical ', '<figure class=\"media\"><oembed url=\"https://www.youtube.com/watch?v=zAS7-XWWC-g\"></oembed></figure><p><strong>Peradaban</strong><br>Setelah Inggris secara resmi menyerahkan pemerintahan di Bengkulu kepada Belanda pada 6 April 1825, nasib masyarakat Bengkulu dan daerah pesisir tetap menderita di bawah belenggu kolonial. Kondisi itu berbeda dengan masyarakat Rejang di daerah pedalaman atau pegunungan yang tidak pernah mengalami penjajahan hingga tahun 1860. Keberuntungan itu dikarenakan letak daerah Rejang yang jauh di pedalaman dan dikelilingi bukit barisan serta hutan rimba yang masih sangat belantara. Sebelum Belanda menyambangi Tanah Pat Petulai, peradaban masyarakat Rejang sudah lebih maju dibandingkan dengan masyarakat lainnya. Hal ini dibuktikan dalam masyarakat Rejang telah memiliki pemerintahan masyarakatnya sendiri yang terdiri dari 5 orang tuwi kutei. Kutei merupakan suatu masyarakat hukum adat asli yang berdiri dan geneologis terdiri dari sekurang-kurangnya 10 hingga 15 keluarga atau rumah, sedangkan tuwi kutei merupakan kepala kutei yang dipilih berdasarkan garis keturunan pendiri petulai (kesatuan kekeluargaan masyarakat Rejang yang asli).</p><p>Dengan adanya sistem petulai tersebut, menandakan masyarakat Rejang sudah memiliki hukum adat yang dipatuhi oleh pendukungnya. Peradaban yang maju pada masyarakat Rejang juga ditandai bahwa suku Rejang telah memiliki aksara sendiri sebagai alat penyampai informasi, yakni aksara kaganga. Hingga saat ini, masyarakat Rejang yang asli masih memiliki peradaban yang menjunjung harga diri. Sering terjadinya kerusakan peradaban dalam masyarakat Rejang karena banyak penduduk di daerah Rejang yang mampu berbahasa Rejang, namun secara silsilah keturunan mereka bukanlah masyarakat Rejang yang asli (garis keturunan bukan patrilineal). Hal ini menjadi fenomena yang mencoreng citra suku Rejang.</p><p><strong>Bahasa</strong><br>Suku Rejang memiliki perbedaan yang mencolok dalam dialek penuturan bahasa. Dialek Rejang Kepahiang memiliki perbedaan dengan dialek Rejang di Kabupaten Rejang Lebong yang dikenal dengan dialek Rejang Curup, dialek Rejang Bengkulu Utara, dialek Rejang Bengkulu Tengah, dan dialek Rejang yang penduduknya di wilayah kabupaten Lebong. Secara kenyataan yang ada, dialek dominan Rejang terdiri tiga macam. Dialek tersebut adalah sebagai berikut:<br>Dialek Rejang Kepahiang (mencakup wilayah Kabupaten Kepahiang)<br>Dialek Rejang Curup (mencakup wilayah Kabupaten Rejang Lebong, Kabupaten Bengkulu Tengah, dan Kabupaten Bengkulu Utara)<br>Dialek Rejang Lebong (mencakup wilayah Kabupaten Lebong dan wilayah Kabupaten Bengkulu Utara yang berdekatan dengan wilayah Kabupaten Lebong)</p><p>Dari tiga pengelompokan dialek Rejang tersebut, saat ini Rejang terbagi menjadi Rejang Kepahiang, Rejang Curup, dan Rejang Lebong. Namun, meskipun dialek dari ketiga bahasa Rejang tersebut relatif berbeda, tetapi setiap penutur asli bahasa Rejang dapat memahami perbedaan kosakata pada saat komunikasi berlangsung. Karena perbedaan tersebut seperti perbedaan dialek pada bahasa Inggris Amerika, bahasa Inggris Britania, dan bahasa Inggris Australia. Secara filosofis, perbedaan dialek bahasa Rejang terjadi karena faktor geografis, faktor sosial, dan faktor psikologis dari suku Rejang itu sendiri.</p><p>&nbsp;</p>', 'historical'),
(11, 'halo', '<p>Selamat Berbelanja!</p>', 'halo');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `condit` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `img` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `date_submit` datetime NOT NULL,
  `publish` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `transaction` int(11) NOT NULL,
  `promo_price` int(11) NOT NULL,
  `viewer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `stock`, `category`, `condit`, `weight`, `img`, `description`, `date_submit`, `publish`, `slug`, `transaction`, `promo_price`, `viewer`) VALUES
(33, 'Dress Raya set', 210000, 100, 8, 1, 300, '1636125252709.jpg', '', '2021-11-05 22:14:12', 1, 'dress-raya-set', 0, 0, 5),
(34, 'Asoka Dress', 215000, 50, 8, 1, 300, '1636126384247.jpg', '<p>Bahan Dress : Sahara Platinum</p><p>Detail bahan : Lembut, tidak terawang, adem, tidak mudah kusut, dan bahan jatuh</p><p>Ukuran fit to L&nbsp;</p><p>Lingkar dada : 98</p><p>Panjang tangan : 58</p><p>Panjang dress : 140</p><p>Detail Produk :&nbsp;</p><ul><li>Terdapat kantong dibagian kiri dan kanan dress</li><li>Terdapat kancing pada bagian depan dress</li><li>Terdapat kancing pada bagian lengan (wudhu friendly)</li></ul>', '2021-11-05 22:33:04', 1, 'asoka-dress', 0, 0, 0),
(35, 'Savana Dress', 189000, 100, 8, 1, 250, '1636126751032.jpg', '<p>Bahan : Kaos HQ&nbsp;</p><p>Detail Bahan : Berserat padat, adem, tidak terawang dan tidak mudah kusut</p><p>Lingkar dada : Fit to 140+</p><p>Panjang Dress : +/- 140 cm</p>', '2021-11-05 22:39:11', 1, 'savana-dress', 0, 0, 2),
(36, 'Camellia Dress', 200000, 10, 8, 1, 210, '1636127413909.jpg', '<p>Bahan Dress : Airflow</p><p>Detail Bahan : empuk, lembut, flowy, ringan, dan tidak terawang</p><p>Lingkar dada : 95</p><p>Panjang tangan : 58</p><p>Panjang Dress : 135</p><p>lingkar Lengan : 20</p><p>Detail Produk :&nbsp;</p><ul><li>Dilengkapi kantong di sisi kanan dan kiri dress</li><li>Dress dengan model lengan balon</li><li>Wudhu friendly</li></ul>', '2021-11-05 22:50:13', 1, 'camellia-dress', 0, 130000, 2),
(37, 'Azalea Army Set Dress', 169000, 55, 8, 1, 150, '1636127854365.jpg', '<p>Bahan Dress : Cerutty Babydoll flowly&nbsp;</p><p>Bahan furing : Hyget</p><p>Lingkar dada : 103</p><p>Panjang Dress : 135&nbsp;</p><p>Panjang Lengan 58</p><p>Warna : Army</p><p>Detail Produk :&nbsp;</p><ul><li>Dilengkapi handsock&nbsp;</li><li>Tali bagian samping bisa di adjust sesuai selera&nbsp;</li><li>Dilengkasi resleting pada bagian depan</li></ul>', '2021-11-05 22:57:34', 1, 'azalea-army-set-dress', 0, 0, 1),
(38, 'Azalea Navy set Dress', 169000, 45, 8, 1, 150, '1636127969819.jpg', '<p>Bahan Dress : Cerutty Babydoll flowly&nbsp;</p><p>Bahan furing : Hyget</p><p>Lingkar dada : 103</p><p>Panjang Dress : 135&nbsp;</p><p>Panjang Lengan 58</p><p>Warna : Navy</p><p>Detail Produk :&nbsp;</p><ul><li>Dilengkapi handsock</li><li>Tali bagian samping bisa di adjust sesuai selera</li><li>Dilengkasi resleting pada bagian depan</li></ul>', '2021-11-05 22:59:29', 1, 'azalea-navy-set-dress', 0, 0, 0),
(39, 'Amaryllis Set Dress', 189000, 100, 8, 1, 300, '1636132030763.jpg', '<p>Bahan Dress : Toryburch</p><p>Detail Bahan : Tekstur garis, flowly ringan, nyaman</p><p>Panjang Dress : 135&nbsp;</p><p>Panjang Lengan 55</p><p>Lingkar dada : 98</p><p>Warna : Grey</p><p>Detail Produk :&nbsp;</p><ul><li>Dilengkapi handsock</li><li>Tali bagian samping bisa di adjust sesuai selera</li><li>Dilengkasi resleting pada bagian depan</li></ul>', '2021-11-06 00:07:10', 1, 'amaryllis-set-dress', 0, 0, 0),
(40, 'Taluna Set Dress', 179000, 80, 8, 1, 280, '1636132214618.jpg', '<p>Bahan Dress : Ladyzara</p><p>Detail Bahan : Adem, jatuh, ringan, tidak menerawang dan memiliki tekstur pasir namun halus</p><p>Lingkar dada : 103</p><p>Panjang Dress : 138</p><p>Panjang Lengan 58</p><p>Warna : Pistacio</p><p>Detail Produk :&nbsp;</p><ul><li>Dilengkapi handsock</li><li>Tali bagian samping bisa di adjust sesuai selera</li><li>Dilengkasi resleting pada bagian depan</li></ul>', '2021-11-06 00:10:14', 1, 'taluna-set-dress', 0, 0, 0),
(41, 'Celosia Set Dress', 179000, 80, 8, 1, 280, '1636132443594.jpg', '<p>Bahan Dress : Ladyzara&nbsp;</p><p>Detail Bahan : serat rapat, ringan, tidak menerawang dan memiliki tekstur yang sangat lembut</p><p>Lingkar dada : 103</p><p>Panjang Dress : 138</p><p>Panjang Lengan 58</p><p>Warna : Maroon</p><p>Detail Produk :&nbsp;</p><ul><li>Dilengkapi Resleting bagian depan</li><li>Wudhu friendly</li></ul>', '2021-11-06 00:14:03', 1, 'celosia-set-dress', 0, 0, 0),
(42, 'Clover Dress', 200000, 50, 8, 1, 200, '1636132983187.jpg', '<p>Bahan Dress : Wollycrepe Premium</p><p>Detail Bahan : Lembut, adem, tidak menerawang, tidak mudah kusut, dan nyaman</p><p>Lingkar dada : 103</p><p>Panjang Dress : 140</p><p>Panjang Lengan 59</p><p>Warna : Choco</p><p>Detail Produk :&nbsp;</p><ul><li>Dilengkapi kancing hidup dari atas sampai bawah&nbsp;</li><li>Wudhu friendly karena ada kancing di bagian lengan</li><li>Terdapat kantong pada bagian sisi kanan dan kiri dress</li><li>Free tali pinggang yang bisa dilepas pasang</li></ul>', '2021-11-06 00:23:03', 1, 'clover-dress', 0, 0, 0),
(43, 'Gardenia Dress', 199000, 55, 8, 1, 300, '1636133266585.jpg', '<p>Bahan Dress : Woolpeachsilk</p><p>Lingkar dada : 103</p><p>Panjang Dress : 140&nbsp;</p><p>Panjang Lengan 58</p><p>Warna : Milo</p><p>&nbsp;</p>', '2021-11-06 00:27:46', 1, 'gardenia-dress', 0, 0, 0),
(44, 'Edelweis Set Dress', 189000, 30, 8, 1, 230, '1636133584194.jpg', '<p>Bahan Dress : Torryburch<br>Lingkar dada : 100</p><p>Panjang Tunik : 110 cm</p><p>Panjang Rok : 95 cm</p><p>Warna : Brown</p><p>Detail Produk :&nbsp;</p><ul><li>Tali bagian samping rok terdapat kantong</li><li>Dilengkapi resleting pada bagian depan</li></ul>', '2021-11-06 00:33:04', 1, 'edelweis-set-dress', 0, 150000, 0),
(45, 'Cotton Cargo Pants', 150000, 10, 7, 1, 100, '1636943181986.png', '<p>Warna : Olive Green</p><p>Size : 30,32, 34, 36, 38</p><p>Fully Strechable &amp; Comfortable</p>', '2021-11-15 09:26:22', 1, 'cotton-cargo-pants', 0, 0, 0),
(46, 'Jeans pants', 180000, 5, 7, 1, 100, '1636943627125.jpg', '<p>Bahan : denim</p>', '2021-11-15 09:33:47', 1, 'jeans-pants', 0, 0, 0),
(47, 'Aurora Skirt', 90000, 50, 2, 1, 59, '1636944060246.jpg', '<p>Bahan : Sifon&nbsp;</p><p>Warna : Dusty pink</p><p>Panjang Skirt : 92&nbsp;</p><p>Lingkar Pinggang 64</p><p>Max stretch : 97</p>', '2021-11-15 09:41:00', 1, 'aurora-skirt', 0, 0, 4),
(48, 'Belle Skirt', 89000, 40, 2, 1, 50, '1636944746087.jpg', '<p>Bahan : Rayon&nbsp;</p><p>Warna : Olive Green</p><p>Panjang Skirt : 92&nbsp;</p><p>Lingkar Pinggang 64</p><p>Max stretch : 97</p>', '2021-11-15 09:52:26', 1, 'belle-skirt', 0, 0, 1),
(49, 'Rapunzel Skirt', 110000, 5, 2, 1, 80, '1636944907135.jpg', '<p>Bahan : Sifon</p><p>Warna : Dusty Pink</p><p>Panjang Skirt : 92&nbsp;</p><p>Lingkar Pinggang 64</p><p>Max stretch : 97</p><p>&nbsp;</p>', '2021-11-15 09:55:07', 1, 'rapunzel-skirt', 0, 0, 0),
(50, 'Giselle Skirt ', 99000, 10, 2, 1, 110, '1636945224549.jpg', '<p>Bahan : Rayon&nbsp;</p><p>Warna : Navy</p><p>Panjang Skirt : 92&nbsp;</p><p>Lingkar Pinggang 64</p><p>Max stretch : 97</p>', '2021-11-15 10:00:24', 1, 'giselle-skirt', 0, 0, 0),
(51, 'Megara Skirt', 110000, 20, 2, 1, 90, '1636945816654.jpg', '<p>Bahan : Rayon&nbsp;</p><p>Warna : Maroon</p><p>Panjang Skirt : 92&nbsp;</p><p>Lingkar Pinggang 64</p><p>Max stretch : 97</p>', '2021-11-15 10:10:16', 1, 'megara-skirt', 0, 0, 0),
(52, 'Jane Skirt ', 105000, 15, 2, 1, 90, '1636945906802.jpg', '<p>Bahan : Rayon&nbsp;</p><p>Warna : Olive Green</p><p>Panjang Skirt : 92&nbsp;</p><p>Lingkar Pinggang 64</p><p>Max stretch : 97</p>', '2021-11-15 10:11:46', 1, 'jane-skirt', 0, 0, 0),
(53, 'Melody Skirt', 60000, 100, 2, 1, 58, '1636946015852.jpg', '<p>Bahan : Sifon&nbsp;</p><p>Warna : Olive Green</p><p>Panjang Skirt : 92&nbsp;</p><p>Lingkar Pinggang 64</p><p>Max stretch : 97</p>', '2021-11-15 10:13:35', 1, 'melody-skirt', 0, 0, 0),
(54, 'Alice Skirt', 120000, 10, 2, 1, 80, '1636946106038.jpg', '<p>Bahan : Alice&nbsp;</p><p>Warna : Khaki</p><p>Panjang Skirt : 92&nbsp;</p><p>Lingkar Pinggang 64</p><p>Max stretch : 97</p>', '2021-11-15 10:15:06', 1, 'alice-skirt', 0, 0, 0),
(55, 'Kairi Skirt', 150000, 30, 2, 1, 100, '1636946291299.jpg', '<p>Bahan : Rayon&nbsp;</p><p>Warna : Taupe</p><p>Panjang Skirt : 92&nbsp;</p><p>Lingkar Pinggang 64</p><p>Max stretch : 97</p>', '2021-11-15 10:18:11', 1, 'kairi-skirt', 0, 0, 1),
(56, 'Girly Skirt', 90000, 5, 2, 1, 100, '1636946487431.jpg', '<p>Bahan : Girly&nbsp;</p><p>Warna : Abu-abu</p><p>Panjang Skirt : 92&nbsp;</p><p>Lingkar Pinggang 64</p><p>Max stretch : 97</p>', '2021-11-15 10:21:27', 1, 'girly-skirt', 0, 0, 0),
(57, 'Instant Rue ', 135000, 50, 9, 1, 30, '1636947534473.jpg', '<p>Bahan : Airflow Crinckle&nbsp;</p><p>Warna : Black coal</p><p>Size chart :&nbsp;</p><p>Panjang depan/Panjang belakang/Lingkar wajah : 80/100/27</p><p>Details :&nbsp;</p><ul><li>Ironless dan Flowy&nbsp;</li><li>Tidak terawang meski tanpa inner</li><li>Made from finest crinckle cotton&nbsp;</li><li>Tidak gerah dan gatal ketka digunakan</li></ul>', '2021-11-15 10:38:54', 1, 'instant-rue', 0, 0, 0),
(58, 'Instant Rue ', 135000, 50, 9, 1, 50, '1636947599552.jpg', '<p>Bahan : Airflow Crinckle&nbsp;</p><p>Warna : Coral</p><p>Size chart :&nbsp;</p><p>Panjang depan/Panjang belakang/Lingkar wajah : 80/100/27</p><p>Details :&nbsp;</p><ul><li>Ironless dan Flowy</li><li>Tidak terawang meski tanpa inner</li><li>Made from finest crinckle cotton</li><li>Tidak gerah dan gatal ketka digunakan</li></ul>', '2021-11-15 10:39:59', 1, 'instant-rue', 0, 0, 0),
(59, 'Instant Rue ', 135000, 50, 9, 1, 50, '1636947639021.jpg', '<p>Bahan : Airflow Crinckle&nbsp;</p><p>Warna : pinkish gray</p><p>Size chart :&nbsp;</p><p>Panjang depan/Panjang belakang/Lingkar wajah : 80/100/27</p><p>Details :&nbsp;</p><ul><li>Ironless dan Flowy</li><li>Tidak terawang meski tanpa inner</li><li>Made from finest crinckle cotton</li><li>Tidak gerah dan gatal ketka digunakan</li></ul>', '2021-11-15 10:40:39', 1, 'instant-rue', 0, 0, 0),
(60, 'Aqsha Voal', 30000, 1000, 9, 1, 40, '1636947877238.jpg', '<p>Bahan : Polycotton&nbsp;</p><p>Warna : Frappucino</p><p>Size chart :&nbsp;</p><p>M : 120 x 120 cm&nbsp;</p><p>L : 130 x 130 cm</p><p>XL : 140 x 140 cm</p><p>Details :&nbsp;</p><ul><li>Ironless dan Flowy</li><li>Tidak terawang meski tanpa inner</li><li>Made from finest crinckle cotton</li><li>Tidak gerah dan gatal ketka digunakan</li></ul>', '2021-11-15 10:44:37', 1, 'aqsha-voal', 0, 0, 0),
(61, 'Sunset Hijab', 20000, 100, 9, 1, 30, '1636948009190.jpg', '<p>Bahan : Polycotton&nbsp;</p><p>Size chart : 120 x120 cm</p><p>Details :&nbsp;</p><ul><li>Ironless dan Flowy</li><li>Tidak terawang meski tanpa inner</li><li>Made from finest crinckle cotton</li><li>Tidak gerah dan gatal ketka digunakan</li></ul>', '2021-11-15 10:46:49', 1, 'sunset-hijab', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id` int(11) NOT NULL,
  `rekening` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id`, `rekening`, `name`, `number`) VALUES
(1, 'DANA', 'DEDE REVANZA', '085764468881'),
(3, 'GOPAY', 'RAHMITA DWI KURNIA', '085267257475'),
(7, 'OVO', 'FRISCA DINI', '081262554730');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `promo` int(11) NOT NULL,
  `promo_time` varchar(40) NOT NULL,
  `short_desc` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `regency_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `promo`, `promo_time`, `short_desc`, `address`, `regency_id`) VALUES
(1, 0, '2021-11-10T23:59', 'MINIMSLM merupakan sebuah platform yang menjual seklaigus membuat tampilanmu menjadi minimalis, simply tetapi elegant.( Our Best Seller Products )', 'Jl. W.R Supratman', 62);

-- --------------------------------------------------------

--
-- Table structure for table `sosmed`
--

CREATE TABLE `sosmed` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `icon` varchar(20) NOT NULL,
  `link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sosmed`
--

INSERT INTO `sosmed` (`id`, `name`, `icon`, `link`) VALUES
(1, 'Facebook', 'facebook-f', 'https://facebook.com/davaalfajri'),
(3, 'Twitter', 'twitter', 'https://twitter.com/zaynmalik'),
(4, 'Linkedin', 'linkedin-in', '\nwww.linkedin.com/in/rahmita-dwi'),
(5, 'Instagram', 'instagram', 'https://instagram.com/rahmitadwikurnia'),
(6, 'Youtube', 'youtube', 'https://youtube.com/Kelompok8');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date_subs` datetime NOT NULL,
  `code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`id`, `email`, `date_subs`, `code`) VALUES
(27, 'dwikurniarahmita@gmail.com', '2021-11-10 23:01:21', '16365600811996655412');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `photo` varchar(30) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `name`, `photo`, `content`) VALUES
(10, 'Solitairee', '', 'Sangat Berkualitasss!!');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `id_invoice`, `product_name`, `price`, `qty`, `slug`) VALUES
(57, 402245, 'Azalea Army Set Dress', 169000, 1, 'azalea-army-set-dress'),
(58, 402245, 'Savana Dress', 189000, 1, 'savana-dress');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cost_delivery`
--
ALTER TABLE `cost_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_send`
--
ALTER TABLE `email_send`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sosmed`
--
ALTER TABLE `sosmed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cost_delivery`
--
ALTER TABLE `cost_delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `email_send`
--
ALTER TABLE `email_send`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sosmed`
--
ALTER TABLE `sosmed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
