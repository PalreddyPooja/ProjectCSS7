-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema medical
--

CREATE DATABASE IF NOT EXISTS medical;
USE medical;

--
-- Definition of table `app`
--

DROP TABLE IF EXISTS `app`;
CREATE TABLE `app` (
  `id` int(50) NOT NULL auto_increment,
  `pname` varchar(100) default NULL,
  `pemail` varchar(100) default NULL,
  `doa` varchar(100) default NULL,
  `age` int(50) default NULL,
  `hospital` varchar(100) default NULL,
  `dept` varchar(100) default NULL,
  `doctor` varchar(100) default NULL,
  `message` text,
  `date` text,
  `status` varchar(100) default 'Waiting',
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app`
--

/*!40000 ALTER TABLE `app` DISABLE KEYS */;
INSERT INTO `app` (`id`,`pname`,`pemail`,`doa`,`age`,`hospital`,`dept`,`doctor`,`message`,`date`,`status`) VALUES 
 (1,'Anbu','anbu.jpinfotech@gmail.com','2017-10-06',17,'MIOT Hospital','GENERAL MEDICINE','Anbarsan','Fever','02:39 PM: 06 Oct 2017','Accept');
/*!40000 ALTER TABLE `app` ENABLE KEYS */;


--
-- Definition of table `dreg`
--

DROP TABLE IF EXISTS `dreg`;
CREATE TABLE `dreg` (
  `id` int(50) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `password` varchar(100) default NULL,
  `dob` varchar(100) default NULL,
  `age` int(50) default NULL,
  `sex` varchar(50) default NULL,
  `marital` varchar(50) default NULL,
  `special` varchar(100) default NULL,
  `hospital` varchar(100) default NULL,
  `mobile` varchar(100) default NULL,
  `address` text,
  `city` varchar(50) default NULL,
  `pin` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `regid` varchar(100) default NULL,
  `status` varchar(50) default 'Waiting',
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dreg`
--

/*!40000 ALTER TABLE `dreg` DISABLE KEYS */;
INSERT INTO `dreg` (`id`,`name`,`email`,`password`,`dob`,`age`,`sex`,`marital`,`special`,`hospital`,`mobile`,`address`,`city`,`pin`,`country`,`state`,`regid`,`status`) VALUES 
 (1,'Anbarsan','anbarasan.jpinfotech@gmail.com','anbu','1990-11-22',27,'Male','Single','GENERAL MEDICINE','MIOT Hospital','9043418902','Ashok Nagar','Chennai','6000003','India','Tamil Nadu','53323648','Waiting'),
 (2,'Lakshmi','lakshmi.jpinfotech@gmail.com','333','1993-10-19',25,'Female','Single','ENT','Vijaya Hospital','9043418902','27,Viswanathan Street , Cumbum','Theni','614203','India','Tamil Nadu','5096896','Waiting');
/*!40000 ALTER TABLE `dreg` ENABLE KEYS */;


--
-- Definition of table `enc`
--

DROP TABLE IF EXISTS `enc`;
CREATE TABLE `enc` (
  `id` int(50) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `password` varchar(100) default NULL,
  `dob` varchar(100) default NULL,
  `age` int(50) default NULL,
  `sex` varchar(50) default NULL,
  `marital` varchar(50) default NULL,
  `mobile` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `address` text,
  `country` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `city` varchar(50) default NULL,
  `pin` varchar(100) default NULL,
  `answer` varchar(100) default NULL,
  `ipa` varchar(100) default NULL,
  `status` varchar(50) default 'Waiting',
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enc`
--

/*!40000 ALTER TABLE `enc` DISABLE KEYS */;
INSERT INTO `enc` (`id`,`name`,`password`,`dob`,`age`,`sex`,`marital`,`mobile`,`email`,`address`,`country`,`state`,`city`,`pin`,`answer`,`ipa`,`status`) VALUES 
 (1,'Anbu','163215215','160154154154145207211191211203',157231,'241301443415','259325340423443415','181154166163166207235239203211','anbu.jpinfotech@gmail.com','160175142268325355367301340301358322301340106343475467415415475139187139279479447403479447','229340411431399','262301337325334139323399411479','262322415451431','172160154203203223227','10','192.168.1.106','Accept');
/*!40000 ALTER TABLE `enc` ENABLE KEYS */;


--
-- Definition of table `preg`
--

DROP TABLE IF EXISTS `preg`;
CREATE TABLE `preg` (
  `id` int(50) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `password` varchar(100) default NULL,
  `dob` varchar(100) default NULL,
  `age` int(50) default NULL,
  `sex` varchar(50) default NULL,
  `marital` varchar(50) default NULL,
  `mobile` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `address` text,
  `country` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `city` varchar(50) default NULL,
  `pin` varchar(100) default NULL,
  `answer` varchar(100) default NULL,
  `status` varchar(50) default 'Waiting',
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preg`
--

/*!40000 ALTER TABLE `preg` DISABLE KEYS */;
INSERT INTO `preg` (`id`,`name`,`password`,`dob`,`age`,`sex`,`marital`,`mobile`,`email`,`address`,`country`,`state`,`city`,`pin`,`answer`,`status`) VALUES 
 (1,'Anbu','333','2000-12-20',17,'Male','Single','9043418902','anbu.jpinfotech@gmail.com','27,Viswanathan Street , Cumbum','India','Tamil Nadu','Theni','6200056','10','Waiting');
/*!40000 ALTER TABLE `preg` ENABLE KEYS */;


--
-- Definition of table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
CREATE TABLE `prescription` (
  `pname` varchar(100) default NULL,
  `pemail` varchar(100) default NULL,
  `problem` varchar(100) default NULL,
  `hospital` varchar(100) default NULL,
  `special` varchar(100) default NULL,
  `dname` varchar(100) default NULL,
  `medicine` varchar(100) default NULL,
  `bp` int(50) default NULL,
  `des` text,
  `date` text,
  `status` varchar(100) default 'Waiting'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
INSERT INTO `prescription` (`pname`,`pemail`,`problem`,`hospital`,`special`,`dname`,`medicine`,`bp`,`des`,`date`,`status`) VALUES 
 ('Anbu','anbu.jpinfotech@gmail.com','Fever','MIOT Hospital','GENERAL MEDICINE','Anbarsan','Paracetamol',100,'Daily Drink Hot Water','02:44 PM: 06 Oct 2017','Accept');
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
