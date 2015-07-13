-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 13, 2015 at 04:02 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kp`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE IF NOT EXISTS `assignment` (
  `kode_assignment` varchar(50) DEFAULT NULL,
  `no_pekerja` varchar(6) DEFAULT NULL,
  `kode_tugas` varchar(10) DEFAULT NULL,
  `judul_tugas` varchar(200) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(254) DEFAULT NULL,
  `lastest_update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastest_update_by` varchar(200) DEFAULT NULL,
  `divisi_tujuan` varchar(10) DEFAULT NULL,
  `komentar_divisi` varchar(2000) DEFAULT NULL,
  `status_approve_div` int(11) DEFAULT NULL,
  `komen_div_pengirim` varchar(1024) DEFAULT NULL,
  KEY `assignment_i1` (`no_pekerja`),
  KEY `assignment_i2` (`kode_tugas`),
  KEY `assignment_i3` (`judul_tugas`),
  KEY `assignment_i4` (`creation_date`),
  KEY `assignment_i5` (`created_by`),
  KEY `assignment_i6` (`divisi_tujuan`),
  KEY `assignment_i7` (`status_approve_div`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE IF NOT EXISTS `departemen` (
  `id_dep` varchar(100) NOT NULL,
  `nama_deputi` varchar(100) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `last_update_date` datetime DEFAULT NULL,
  `last_update_by` varchar(100) DEFAULT NULL,
  `start_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_dep`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`id_dep`, `nama_deputi`, `creation_date`, `created_by`, `last_update_date`, `last_update_by`, `start_date`, `end_date`, `status`) VALUES
('A001', 'Pengendalian dan Dukungan Bisnis', '2015-07-13 00:00:00', '-1', '2015-07-13 00:00:00', '-1', '2015-07-13', NULL, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `dinas`
--

CREATE TABLE IF NOT EXISTS `dinas` (
  `id_dinas` varchar(100) NOT NULL,
  `nama_dinas` varchar(254) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `last_update_date` datetime DEFAULT NULL,
  `last_update_by` varchar(100) DEFAULT NULL,
  `id_divisi` varchar(100) NOT NULL,
  `start_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_dinas`),
  KEY `dinas_i1` (`id_divisi`),
  KEY `dinas_i2` (`start_date`),
  KEY `dinas_i3` (`end_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dinas`
--

INSERT INTO `dinas` (`id_dinas`, `nama_dinas`, `created_date`, `created_by`, `last_update_date`, `last_update_by`, `id_divisi`, `start_date`, `end_date`, `status`) VALUES
('AA0000', 'ALL', '2015-07-13 00:00:00', '-1', '2015-07-13 00:00:00', '-1', 'AA0001', '2015-07-13', NULL, 'Y'),
('AAA0001', 'Kelompok Kerja Pengelolaan Proyek', '2015-07-13 00:00:00', '-1', '2015-07-13 00:00:00', '-1', 'AA0001', '2015-07-13', NULL, 'Y'),
('AAB002', 'Kelompok Kerja Operasi Teknologi Informasi', '2015-07-13 00:00:00', '-1', '2015-07-13 00:00:00', '-1', 'AA0001', '2015-07-13', NULL, 'Y'),
('AAC003', 'Kelompok Kerja Pengolahan Data dan Informasi', '2015-07-13 00:00:00', '-1', '2015-07-13 00:00:00', '-1', 'AA0001', '2015-07-13', NULL, 'Y'),
('BA0000', 'ALL', '2015-07-13 00:00:00', '-1', '2015-07-13 00:00:00', '-1', 'AB0002', '2015-07-13', NULL, 'Y'),
('BAA001', 'DInas SDM Internal', '2015-07-13 00:00:00', '-1', '2015-07-13 00:00:00', '-1', 'AB0002', '2015-07-13', NULL, 'Y'),
('BAB002', 'Dinas Organisasi dan Sistem Manajemen', '2015-07-13 00:00:00', '-1', '2015-07-13 00:00:00', '-1', 'AB0002', '2015-07-13', NULL, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE IF NOT EXISTS `divisi` (
  `id_divisi` varchar(100) NOT NULL,
  `nama_divisi` varchar(100) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `last_update_date` datetime DEFAULT NULL,
  `last_update_by` varchar(6) DEFAULT NULL,
  `id_dep` varchar(100) NOT NULL,
  `start_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_divisi`),
  KEY `divisi_i1` (`id_dep`),
  KEY `divisi_i2` (`start_date`),
  KEY `divisi_i3` (`end_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id_divisi`, `nama_divisi`, `creation_date`, `created_by`, `last_update_date`, `last_update_by`, `id_dep`, `start_date`, `end_date`, `status`) VALUES
('A00000', 'ALL', '2015-07-13 00:00:00', '-1', '2015-07-13 00:00:00', '-1', 'A001', '2015-07-13', NULL, 'Y'),
('AA0001', 'Manajemen Sistem Informasi', '2015-07-13 00:00:00', '-1', '2015-07-13 00:00:00', '-1', 'A001', '2015-07-13', NULL, 'Y'),
('AB0002', 'Sumber Daya Manusia', '2015-07-13 00:00:00', '-1', '2015-07-13 00:00:00', '-1', 'A001', '2015-07-13', NULL, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kode_kategori` varchar(2) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kode_kategori`, `keterangan`) VALUES
(1, 'A', 'Rutin'),
(2, 'B', 'Non Rutin'),
(3, 'C', 'Personal');

-- --------------------------------------------------------

--
-- Table structure for table `libur`
--

CREATE TABLE IF NOT EXISTS `libur` (
  `id_libur` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_libur` date DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_libur`),
  KEY `libur_i1` (`tgl_libur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id_login` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` varchar(100) NOT NULL,
  `no_pekerja` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id_login`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `username`, `password`, `role`, `no_pekerja`) VALUES
(1, 'bdpermana', 'berry', 'staff', '031161'),
(2, 'barman', 'barman', 'kadiv', '122576'),
(3, 'hpermana', 'hpermana', 'kadiv', '122746'),
(4, 'hasari', 'hasari', 'staff', '308829'),
(5, 'ybparmanto', 'ybparmanto', 'staff', '333769'),
(6, 'rningsih', 'rningsih', 'staff', '354820'),
(7, 'dpujiastuti', 'dpujiastuti', 'staff', '375129'),
(8, 'abprasaja', 'abprasaja', 'staff', '397352'),
(9, 'rrimbono', 'rrimbono', 'deputi', '800028');

-- --------------------------------------------------------

--
-- Table structure for table `pekerja`
--

CREATE TABLE IF NOT EXISTS `pekerja` (
  `no_pekerja` varchar(10) NOT NULL DEFAULT '',
  `nama` varchar(200) DEFAULT NULL,
  `initial` varchar(5) DEFAULT NULL,
  `id_dinas` varchar(100) NOT NULL,
  `id_dep` varchar(100) NOT NULL,
  `id_divisi` varchar(100) NOT NULL,
  PRIMARY KEY (`no_pekerja`),
  KEY `pekerja_i1` (`nama`),
  KEY `pekerja_i3` (`id_dinas`),
  KEY `pekerja_i4` (`id_dep`),
  KEY `pekerja_i5` (`id_divisi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pekerja`
--

INSERT INTO `pekerja` (`no_pekerja`, `nama`, `initial`, `id_dinas`, `id_dep`, `id_divisi`) VALUES
('031161', 'Berry Permana', 'BDP', 'AAA0001', 'A001', 'AA0001'),
('122576', 'Budi Arman', 'BA', 'BA0000', 'A001', 'AB0002'),
('122746', 'Hadi Permana', 'HP', 'AA0000', 'A001', 'AA0001'),
('308829', 'Hufadhil As''ari', 'HFA', 'AAA0001', 'A001', 'AA0001'),
('333769', 'Yuliscar Parmato', 'YBP', 'AAA0001', 'A001', 'AA0001'),
('354820', 'Retno Ningsih', 'RN', 'BAA001', 'A001', 'AB0002'),
('375129', 'Dewi Pujiastuti', 'DP', 'BAA001', 'A001', 'AB0002'),
('397352', 'Adji Bayu Prasaja', 'ABP', 'AAA0001', 'A001', 'AA0001'),
('800028', 'Rudianto Rimbono', 'RR', 'AA0000', 'A001', 'A00000');

-- --------------------------------------------------------

--
-- Table structure for table `timesheet`
--

CREATE TABLE IF NOT EXISTS `timesheet` (
  `id_timesheet` int(11) NOT NULL,
  `kode_assignment` varchar(50) NOT NULL,
  `kode_tugas` varchar(10) DEFAULT NULL,
  `judul_tugas` varchar(200) DEFAULT NULL,
  `tgl` varchar(10) DEFAULT NULL,
  `nilai` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id_timesheet`),
  KEY `timesheet_i1` (`kode_assignment`),
  KEY `timesheet_i2` (`kode_tugas`),
  KEY `timesheet_i3` (`judul_tugas`),
  KEY `timesheet_i4` (`tgl`),
  KEY `timesheet_i5` (`nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE IF NOT EXISTS `tugas` (
  `kode_tugas` varchar(10) NOT NULL,
  `judul_tugas` varchar(200) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `status_tugas` int(11) DEFAULT NULL,
  `komentar_deputi` varchar(1024) DEFAULT NULL,
  `tahun` varchar(4) DEFAULT NULL,
  `created_by` varchar(254) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastest_update_by` varchar(200) DEFAULT NULL,
  `lastest_update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`kode_tugas`),
  UNIQUE KEY `judul_tugas` (`judul_tugas`),
  KEY `tugas_i1` (`judul_tugas`),
  KEY `tugas_i2` (`id_kategori`),
  KEY `tugas_i3` (`status_tugas`),
  KEY `tugas_i4` (`tahun`),
  KEY `tugas_i5` (`created_by`),
  KEY `tugas_i6` (`creation_date`),
  KEY `tugas_i7` (`lastest_update_by`),
  KEY `tugas_i8` (`lastest_update_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `assignment_ibfk_1` FOREIGN KEY (`no_pekerja`) REFERENCES `pekerja` (`no_pekerja`),
  ADD CONSTRAINT `assignment_ibfk_2` FOREIGN KEY (`kode_tugas`) REFERENCES `tugas` (`kode_tugas`);

--
-- Constraints for table `dinas`
--
ALTER TABLE `dinas`
  ADD CONSTRAINT `dinas_ibfk_1` FOREIGN KEY (`id_divisi`) REFERENCES `divisi` (`id_divisi`);

--
-- Constraints for table `divisi`
--
ALTER TABLE `divisi`
  ADD CONSTRAINT `divisi_ibfk_1` FOREIGN KEY (`id_dep`) REFERENCES `departemen` (`id_dep`);

--
-- Constraints for table `pekerja`
--
ALTER TABLE `pekerja`
  ADD CONSTRAINT `pekerja_ibfk_1` FOREIGN KEY (`id_divisi`) REFERENCES `divisi` (`id_divisi`),
  ADD CONSTRAINT `pekerja_ibfk_2` FOREIGN KEY (`id_dinas`) REFERENCES `dinas` (`id_dinas`),
  ADD CONSTRAINT `pekerja_ibfk_3` FOREIGN KEY (`id_dep`) REFERENCES `departemen` (`id_dep`);

--
-- Constraints for table `timesheet`
--
ALTER TABLE `timesheet`
  ADD CONSTRAINT `timesheet_ibfk_1` FOREIGN KEY (`kode_tugas`) REFERENCES `tugas` (`kode_tugas`);

--
-- Constraints for table `tugas`
--
ALTER TABLE `tugas`
  ADD CONSTRAINT `tugas_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
