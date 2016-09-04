-- phpMyAdmin SQL Dump
-- version 4.1.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 16, 2015 at 04:11 PM
-- Server version: 5.5.8-log
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `AGENDA`
--

-- --------------------------------------------------------

--
-- Table structure for table `CONTACTOS`
--

CREATE TABLE IF NOT EXISTS `CONTACTOS` (
  `CONTACTO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USUARIO_ID` int(11) NOT NULL,
  `NOMBRE` varchar(64) NOT NULL,
  `SEXO` tinyint(4) NOT NULL DEFAULT '1',
  `TELEFONO` varchar(64) NOT NULL,
  `COLOR_FAVORITO` tinyint(16) DEFAULT '1',
  `HOBBIES` varchar(32) NOT NULL,
  `OTROS_DATOS` text NOT NULL,
  PRIMARY KEY (`CONTACTO_ID`),
  KEY `USER_NAME` (`NOMBRE`,`TELEFONO`),
  KEY `USUARIO_ID` (`USUARIO_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `CONTACTOS`
--

INSERT INTO `CONTACTOS` (`CONTACTO_ID`, `USUARIO_ID`, `NOMBRE`, `SEXO`, `TELEFONO`, `COLOR_FAVORITO`, `HOBBIES`, `OTROS_DATOS`) VALUES
(2, 2, 'Mac', 1, '983984938493', 0, '', 'Wow!!!'),
(4, 1, 'Richard2', 1, '22222', 1, '1,2', 'Nice ok'),
(5, 1, 'jose carlos', 1, '9809809809', 0, '', 'ok bien'),
(6, 1, 'Josefina', 1, '8798789', 0, '', 'kjkjkj'),
(7, 1, 'CARLOS', 1, '1234', 1, '1', 'OK');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
