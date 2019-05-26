-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12 Mei 2019 pada 07.44
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengiriman`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(7) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `del_no` varchar(15) NOT NULL,
  `id_kategori` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama`, `satuan`, `del_no`, `id_kategori`) VALUES
('BRG0001', 'BRAKE SHOE HONDA ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0009', 'PAD SET VIXION ASP', 'SATUAN 1', 'Box', 'KTG01'),
('BRG0034', 'BOTOL AHM OIL 1.0L MPX-1 10W-3', 'SATUAN 3', 'PALLET', 'KTG03'),
('BRG0035', 'BOTOL MPX1 AHM 2014 1.0L', 'SATUAN 3', 'PALLET', 'KTG03'),
('BRG0036', 'Kartu Parkir', 'SATUAN 1', 'Bijian', 'KTG01'),
('BRG0037', 'Kartu Identitas / ID Card', 'SATUAN 2', 'Bijian', 'KTG01'),
('BRG0038', 'Kartu pasien', 'SATUAN 1', 'Bijian', 'KTG02'),
('BRG0039', 'Kartu Polis Asuransi', 'SATUAN 1', 'Bijian', 'KTG03'),
('BRG0040', 'Kartu ATM', 'SATUAN 1', 'Bijian', 'KTG01'),
('BRG0041', 'Kartu Mahasiswa / Pelajar', 'SATUAN 1', 'Bijian', 'KTG01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pengiriman`
--

CREATE TABLE `detail_pengiriman` (
  `id_detail` int(4) NOT NULL,
  `id_pengiriman` varchar(14) NOT NULL,
  `id_barang` varchar(7) NOT NULL,
  `qty` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_pengiriman`
--

INSERT INTO `detail_pengiriman` (`id_detail`, `id_pengiriman`, `id_barang`, `qty`) VALUES
(1, 'KRM20160820001', 'BRG0001', 1),
(2, 'KRM20160820001', 'BRG0002', 3),
(8, 'KRM20161015001', 'BRG0035', 1),
(9, 'KRM20161015001', 'BRG0001', 1),
(10, 'KRM20161015001', 'BRG0001', 1),
(11, 'KRM20161015001', 'BRG0002', 3),
(12, 'KRM20161015001', 'BRG0002', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `keterangan` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama`, `keterangan`) VALUES
('KTG01', 'KATEGORI 1', 'KATEGORI 1'),
('KTG02', 'KATEGORI 2', 'KATEGORI 2'),
('KTG03', 'KATEGORI 3', 'KATEGORI 3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurir`
--

CREATE TABLE `kurir` (
  `id_kurir` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kurir`
--

INSERT INTO `kurir` (`id_kurir`, `nama`, `jenis_kelamin`, `telepon`, `alamat`, `password`) VALUES
('KRR02', 'ERIK', 'Laki-Laki', '081284959589', 'Jl. Nginden Baru 3 No 5 Sukolilo Surabaya', '6faae43d506a230beedcdbff231b478e'),
('KRR03', 'TRIBUDI', 'Laki-Laki', '081219900381', 'SURABAYA', 'b4ae1f68447e3df8a1ce6c4dc3660c5b'),
('KRR08', 'SUJONO', 'Laki-Laki', '0812345678', 'Jonggol, West Java', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(7) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `alamat` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `telepon`, `alamat`) VALUES
('CST0001', 'Ubaya Surabaya', '(031) 2981000', 'Jl. Raya Kali Rungkut, Kali Rungkut, Rungkut, Kota SBY, Jawa Timur 60293\r\n'),
('CST0002', 'Universitas Muslim Indonesia M', '(0411) 455696', 'Jl. Urip Sumoharjo KM.5, Panaikang, Panakkukang, Kota Makassar, Sulawesi Selatan 90231\r\n'),
('CST0003', 'Universitas Islam Malang (Unis', '(0341) 551932', 'Jl. Mayjen Haryono Gg. 10 Kelurahan No.193, Dinoyo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65144\r\n'),
('CST0004', 'UNIJA Sumenep', '0859-3000-0092', 'Jl. Raya Sumenep-Pamekasan KM. 05 Patean, Panitian Utara, Patean, Batuan, Kabupaten Sumenep, Jawa Timur 69451\r\n'),
('CST0005', 'SMAN 2 Surabaya', '(031) 5345972', 'Jl. Wijaya Kusuma No.48, Ketabang, Genteng, Kota SBY, Jawa Timur 60272\r\n'),
('CST0006', 'SMA Petra 1 Surabaya ', '(031) 7342191', 'Perum Graha Famili, Jl. Lingkar Dalam, Pradahkalikendal, Dukuh Pakis, Kota SBY, Jawa Timur 60226\r\n'),
('CST0007', 'SMP Gloria 1 Surabaya', '(031) 7314599', 'Jl. Kupang Indah I No.3, Sonokwijenan, Suko Manunggal, Kota SBY, Jawa Timur 60225\r\n'),
('CST0008', 'Singapore Academy', '(031)8531920', 'Jl. Telaga Utama Blok D1/31-32 Bukit Golf Citraraya Surabaya 60219\r\n'),
('CST0009', 'SMAN 2 Sumenep', '(0328) 661196', 'Jl. KH.Wahid Hasyim III / 11 Kolor Sumenep\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengiriman`
--

CREATE TABLE `pengiriman` (
  `id_pengiriman` varchar(14) NOT NULL,
  `tanggal` date NOT NULL,
  `id_pelanggan` varchar(7) NOT NULL,
  `id_kurir` varchar(5) NOT NULL,
  `no_kendaraan` varchar(8) NOT NULL,
  `no_po` varchar(15) NOT NULL,
  `keterangan` varchar(150) DEFAULT NULL,
  `penerima` varchar(50) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengiriman`
--

INSERT INTO `pengiriman` (`id_pengiriman`, `tanggal`, `id_pelanggan`, `id_kurir`, `no_kendaraan`, `no_po`, `keterangan`, `penerima`, `photo`, `status`) VALUES
('KRM20160820001', '2016-08-20', 'CST0001', 'KRR01', 'B021ZIG', '8732984732984', '', '', '', 1),
('KRM20161015001', '2016-10-15', 'CST0003', 'KRR08', 'B03L', 'km1230jg', '', '', '', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` varchar(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
('USR01', 'admin', '1a1dc91c907325c69271ddf0c944bc72', 1),
('USR02', 'finance', '1a1dc91c907325c69271ddf0c944bc72', 2),
('USR03', 'gudang', '1a1dc91c907325c69271ddf0c944bc72', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `detail_pengiriman`
--
ALTER TABLE `detail_pengiriman`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kurir`
--
ALTER TABLE `kurir`
  ADD PRIMARY KEY (`id_kurir`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`id_pengiriman`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_pengiriman`
--
ALTER TABLE `detail_pengiriman`
  MODIFY `id_detail` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
