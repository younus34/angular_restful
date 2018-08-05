-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.41-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema jquery
--

CREATE DATABASE IF NOT EXISTS jquery;
USE jquery;

--
-- Definition of table `dairy`
--

DROP TABLE IF EXISTS `dairy`;
CREATE TABLE `dairy` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `pname` varchar(45) NOT NULL,
  `qty` int(10) unsigned NOT NULL,
  `pprice` double NOT NULL,
  `sprice` double NOT NULL,
  `pdate` datetime NOT NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dairy`
--

/*!40000 ALTER TABLE `dairy` DISABLE KEYS */;
/*!40000 ALTER TABLE `dairy` ENABLE KEYS */;


--
-- Definition of table `fruits`
--

DROP TABLE IF EXISTS `fruits`;
CREATE TABLE `fruits` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `pname` varchar(45) NOT NULL,
  `qty` int(10) unsigned NOT NULL,
  `pprice` double NOT NULL,
  `sprice` double NOT NULL,
  `pdate` datetime NOT NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fruits`
--

/*!40000 ALTER TABLE `fruits` DISABLE KEYS */;
/*!40000 ALTER TABLE `fruits` ENABLE KEYS */;


--
-- Definition of table `meats`
--

DROP TABLE IF EXISTS `meats`;
CREATE TABLE `meats` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `pname` varchar(45) NOT NULL,
  `qty` int(10) unsigned NOT NULL,
  `pprice` double NOT NULL,
  `sprice` double NOT NULL,
  `pdate` datetime NOT NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meats`
--

/*!40000 ALTER TABLE `meats` DISABLE KEYS */;
/*!40000 ALTER TABLE `meats` ENABLE KEYS */;


--
-- Definition of table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `pname` varchar(45) NOT NULL,
  `price` double NOT NULL,
  `qty` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`pid`,`pname`,`price`,`qty`) VALUES 
 (1,'mango',2500,10),
 (2,'Apple',2000,500),
 (4,'apples',100,10);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
