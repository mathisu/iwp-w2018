-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 12, 2018 at 05:21 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `llx_product`
--

CREATE TABLE `llx_product` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(50) NOT NULL,
  `label` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `datec` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `price` int(11) NOT NULL,
  `tva_tx` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `categorie` int(11) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_product`
--

INSERT INTO `llx_product` (`rowid`, `ref`, `label`, `description`, `datec`, `tms`, `price`, `tva_tx`, `stock`, `categorie`, `note`) VALUES
(1, 'ref', 'test_product', 'fes', '2018-04-10 00:00:00', '2018-04-10 13:36:03', 30, 19, 30, 1, 'tejsqitm'),
(2, 'test1', 'label', 'fsjeijligsrj', '2018-04-12 04:04:00', '2018-04-12 14:04:58', 20, 19, 10, 0, 'note1');

-- --------------------------------------------------------

--
-- Table structure for table `llx_user`
--

CREATE TABLE `llx_user` (
  `rowid` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `pass_crypted2` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `admin` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `llx_user`
--

INSERT INTO `llx_user` (`rowid`, `login`, `pass_crypted2`, `lastname`, `admin`) VALUES
(1, 'az5284', '', 'zherui', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `llx_product`
--
ALTER TABLE `llx_product`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `llx_user`
--
ALTER TABLE `llx_user`
  ADD PRIMARY KEY (`rowid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `llx_product`
--
ALTER TABLE `llx_product`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `llx_user`
--
ALTER TABLE `llx_user`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
