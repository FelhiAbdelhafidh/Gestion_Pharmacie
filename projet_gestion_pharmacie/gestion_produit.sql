-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mar 04 Août 2015 à 23:18
-- Version du serveur: 5.5.24-log
-- Version de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `gestion_produit`
--

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_produit` varchar(20) NOT NULL,
  `reference` varchar(50) NOT NULL,
  `deseignation` varchar(52) NOT NULL,
  `rangement` varchar(50) DEFAULT NULL,
  `fournisseur` varchar(56) DEFAULT NULL,
  `remise` int(11) NOT NULL,
  `prix` int(11) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`id`, `code_produit`, `reference`, `deseignation`, `rangement`, `fournisseur`, `remise`, `prix`, `stock`) VALUES
(7, '3', 'ref3', 'panadol', 'r3', 'Fhaffa', 3, 1300, 7),
(8, '1', '11', 'med1', 'r1', 'f1', 1, 111, 0),
(11, '4', '4', 'med4', 'r4', 'f4', 40, 4000, 10),
(12, '5', '5', 'med5', 'r5', 'f5', 5, 5000, 50),
(15, '8', '8', 'm', 'r8', 'f1', 8, 82, 80),
(16, '8', '45', 'hnh', 'r3', 'f8', 1, 52, 80),
(17, '8', '45', 'hnh', 'r3', 'f8', 1, 52, 80);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `id_user`, `username`, `password`, `type`) VALUES
(2, 25, 'Felhi', '123', 'directeur'),
(3, 23, 'youssef', 'abc', 'pharmacien'),
(6, 2, 'nassima', '1234', 'pharmacien');

-- --------------------------------------------------------

--
-- Structure de la table `vente`
--

CREATE TABLE IF NOT EXISTS `vente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_facture` int(11) NOT NULL,
  `code_produit` int(11) NOT NULL,
  `reference` varchar(55) NOT NULL,
  `prix_vente` int(11) NOT NULL,
  `stock_sortie` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Contenu de la table `vente`
--

INSERT INTO `vente` (`id`, `num_facture`, `code_produit`, `reference`, `prix_vente`, `stock_sortie`, `subtotal`) VALUES
(12, 12, 568, 'REF2', 651, 4, 2604),
(13, 1, 56856, 'REF2', 651, 3, 1953),
(14, 1, 56856, 'REF2', 651, 3, 1953),
(15, 10, 56856, 'REF2', 651, 3, 1953),
(16, 1, 1, 'REF1', 1080, 2, 2160),
(24, 2, 1, '1', 110, 10, 1099),
(25, 7, 1, '1', 110, 55, 6044),
(26, 7, 1, '1', 110, 5, 549),
(27, 7, 1, '1', 110, 1, 110),
(28, 8, 2, '2', 1560, 1, 1560),
(29, 8, 2, '2', 1560, 1, 1560),
(30, 9, 3, 'ref3', 1261, 1, 1261),
(31, 6, 4, '4', 2400, 10, 24000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
