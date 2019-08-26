-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 17, 2018 at 11:17 PM
-- Server version: 5.6.20-log
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `entrepot`
--

-- --------------------------------------------------------

--
-- Table structure for table `cours`
--

CREATE TABLE IF NOT EXISTS `cours` (
  `id_cours` int(11) NOT NULL,
  `libelle` text,
  `niveau` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cours`
--

INSERT INTO `cours` (`id_cours`, `libelle`, `niveau`) VALUES
(1, 'SGBD', 'M1'),
(2, 'SGBDA', 'M2'),
(3, 'SGBD', 'M1'),
(4, 'SGBDA', 'M2'),
(5, 'ID', 'M2'),
(6, 'ID', 'M2');

-- --------------------------------------------------------

--
-- Table structure for table `enseignant`
--

CREATE TABLE IF NOT EXISTS `enseignant` (
  `id_enseignant` int(11) NOT NULL,
  `nom` text,
  `prenom` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enseignant`
--

INSERT INTO `enseignant` (`id_enseignant`, `nom`, `prenom`) VALUES
(1, 'Dubois', 'Jean'),
(2, 'LEGRAND', 'EMILIE'),
(3, 'MARTIN', 'ERIC'),
(10, 'Nom10', 'Prenom10'),
(11, 'Nom10', 'Prenom11');

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

CREATE TABLE IF NOT EXISTS `etudiant` (
  `id_etudiant` int(11) NOT NULL,
  `nom` text,
  `prenom` text,
  `niveau` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`id_etudiant`, `nom`, `prenom`, `niveau`) VALUES
(1, 'HOMMS', 'CECILE', 'M1'),
(2, 'MURIEL', 'RICHARD', 'M2'),
(3, 'DUBAIN', 'HELENE', 'M1'),
(4, 'HANZ', 'SOPHIE', 'M1'),
(10, 'Nom10', 'Prenom10', 'M1'),
(11, 'Nom11', 'Prenom11', 'M2'),
(12, 'Nom12', 'Prenom12', 'M1'),
(21, 'Richard', NULL, 'M1'),
(22, 'JEAN', NULL, 'M2'),
(23, 'DUJARDIN', NULL, 'M2'),
(24, 'NOUR', NULL, 'M1'),
(25, 'LILIANE', NULL, 'M1');

-- --------------------------------------------------------

--
-- Table structure for table `fait`
--

CREATE TABLE IF NOT EXISTS `fait` (
  `id_etudiant` int(11) NOT NULL,
  `id_cours` int(11) NOT NULL,
  `id_enseignant` int(11) NOT NULL,
  `id_date` int(11) NOT NULL,
  `note` float NOT NULL,
  `mention` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fait`
--

INSERT INTO `fait` (`id_etudiant`, `id_cours`, `id_enseignant`, `id_date`, `note`, `mention`) VALUES
(1, 5, 2, 1, 10, 'admis'),
(1, 6, 2, 1, 12, 'Assez bien'),
(2, 5, 2, 1, 13, 'Assez bien'),
(2, 6, 2, 1, 14, 'Bien'),
(3, 5, 2, 2, 12, 'Assez bien'),
(3, 6, 2, 2, 11, 'admis'),
(4, 5, 2, 2, 14, 'Bien'),
(4, 6, 2, 2, 16, 'Très bien'),
(10, 3, 10, 3, 16, 'Très bien'),
(10, 1, 1, 3, 10, 'admis'),
(11, 6, 11, 4, 16, 'Très bien'),
(11, 4, 11, 4, 10, 'admis'),
(11, 2, 2, 4, 12, 'Assez bien'),
(11, 5, 10, 4, 14, 'Bien'),
(12, 1, 1, 3, 14, 'Bien'),
(12, 3, 10, 3, 12, 'Assez bien'),
(21, 1, 1, 5, 10, 'admis'),
(21, 2, 1, 5, 12, 'Assez bien'),
(21, 2, 2, 5, 12, 'Assez bien'),
(22, 3, 1, 5, 13, 'Assez bien'),
(22, 4, 1, 5, 10, 'admis');

-- --------------------------------------------------------

--
-- Table structure for table `temps`
--

CREATE TABLE IF NOT EXISTS `temps` (
  `id_date` int(11) NOT NULL,
  `annee` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temps`
--

INSERT INTO `temps` (`id_date`, `annee`) VALUES
(1, '2006'),
(2, '2007'),
(3, '2008'),
(4, '2009'),
(5, '2014');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cours`
--
ALTER TABLE `cours`
 ADD PRIMARY KEY (`id_cours`);

--
-- Indexes for table `enseignant`
--
ALTER TABLE `enseignant`
 ADD PRIMARY KEY (`id_enseignant`);

--
-- Indexes for table `etudiant`
--
ALTER TABLE `etudiant`
 ADD PRIMARY KEY (`id_etudiant`);

--
-- Indexes for table `temps`
--
ALTER TABLE `temps`
 ADD PRIMARY KEY (`id_date`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
