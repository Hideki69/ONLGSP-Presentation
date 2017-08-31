-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 30 août 2017 à 16:58
-- Version du serveur :  10.1.25-MariaDB
-- Version de PHP :  7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `onlgsp`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `idAdmin` int(11) NOT NULL,
  `email` varchar(190) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Ip` varchar(15) NOT NULL,
  `session` varchar(250) DEFAULT NULL,
  `finSession` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `actif` char(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`idAdmin`, `email`, `password`, `Ip`, `session`, `finSession`, `actif`) VALUES
(1, 'contacts@cbsecurite.com', 'cc5fe339b3a54fb40b4a7171616c81e0507cc2fa1d2e9fadba4e9554ffce8d9d', '::1', '2ccbcd281f989b07192ff8bc0fa6eb4c2d757a8e4d983683f4f1dffd499970b2', '2017-08-28 08:36:02', '1'),
(8, 'mohamedkermiche@hotmail.fr', '21ea1f70e1e728c348b19ee7e6d1ee235920f892cc1d32284809b6cb8c010f8e', '::1', 'ba3c7e4e67609303da821819cf69b842bc5f07299d7acb0230cb8fc076f8c31c', '2017-08-28 15:50:19', '1');

-- --------------------------------------------------------

--
-- Structure de la table `adminDetails`
--

CREATE TABLE `adminDetails` (
  `idAdminDetails` int(11) NOT NULL,
  `idAdmin` int(11) NOT NULL,
  `raisonSociale` varchar(250) NOT NULL,
  `tvaIntra` varchar(20) NOT NULL,
  `ape` varchar(10) NOT NULL,
  `siret` varchar(20) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `adresse` text NOT NULL,
  `cp` decimal(5,0) UNSIGNED ZEROFILL NOT NULL,
  `ville` varchar(100) NOT NULL,
  `pays` varchar(100) NOT NULL,
  `telephone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `adminLicences`
--

CREATE TABLE `adminLicences` (
  `idAdminLicences` int(11) NOT NULL,
  `idAdmin` int(11) NOT NULL,
  `idLicences` int(11) NOT NULL,
  `ipServer` varchar(20) NOT NULL,
  `clePublic` text NOT NULL,
  `dateCreation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dateExpiration` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `actif` char(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `jeux`
--

CREATE TABLE `jeux` (
  `idJeux` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `fichierSh` varchar(100) NOT NULL,
  `actif` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `licences`
--

CREATE TABLE `licences` (
  `idLicences` int(11) NOT NULL,
  `titre` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `prix` decimal(5,2) NOT NULL,
  `actif` char(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `licences`
--

INSERT INTO `licences` (`idLicences`, `titre`, `description`, `prix`, `actif`) VALUES
(1, 'Free', '', '0.00', '1'),
(2, 'Prémium ', '', '20.00', '1'),
(3, 'Premium Lifetime', '', '60.00', '1'),
(4, 'Full', '', '50.00', '1'),
(5, 'Full Lifetime', '', '150.00', '1');

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `idMenus` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `icone` varchar(255) NOT NULL,
  `role` int(1) NOT NULL DEFAULT '0',
  `actif` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`idMenus`, `nom`, `icone`, `role`, `actif`) VALUES
(1, 'Accueil', '', 0, 0),
(2, 'Furom', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `idUsers` int(11) NOT NULL,
  `idAmin` int(11) NOT NULL,
  `email` varchar(190) NOT NULL,
  `passwd` varchar(100) NOT NULL,
  `role` int(1) DEFAULT '0',
  `Ip` varchar(15) NOT NULL,
  `session` int(250) NOT NULL,
  `finSession` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `actif` char(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `usersDetails`
--

CREATE TABLE `usersDetails` (
  `idUsersDetails` int(11) NOT NULL,
  `idUsers` int(11) NOT NULL,
  `raisonSociale` varchar(250) NOT NULL,
  `tvaIntra` varchar(20) NOT NULL,
  `ape` varchar(10) NOT NULL,
  `siret` varchar(20) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `adresse` text NOT NULL,
  `cp` decimal(5,0) UNSIGNED ZEROFILL NOT NULL,
  `ville` varchar(100) NOT NULL,
  `pays` varchar(100) NOT NULL,
  `telephone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `usersJeux`
--

CREATE TABLE `usersJeux` (
  `idUsersJeux` int(11) NOT NULL,
  `idUsers` int(11) NOT NULL,
  `idJeux` int(11) NOT NULL,
  `dateDebut` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dateFin` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `actif` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Index pour la table `adminDetails`
--
ALTER TABLE `adminDetails`
  ADD PRIMARY KEY (`idAdminDetails`),
  ADD KEY `idAdmin` (`idAdmin`);

--
-- Index pour la table `adminLicences`
--
ALTER TABLE `adminLicences`
  ADD PRIMARY KEY (`idAdminLicences`),
  ADD KEY `idAdmin` (`idAdmin`);

--
-- Index pour la table `jeux`
--
ALTER TABLE `jeux`
  ADD PRIMARY KEY (`idJeux`);

--
-- Index pour la table `licences`
--
ALTER TABLE `licences`
  ADD PRIMARY KEY (`idLicences`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`idMenus`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUsers`),
  ADD KEY `idAmin` (`idAmin`);

--
-- Index pour la table `usersDetails`
--
ALTER TABLE `usersDetails`
  ADD PRIMARY KEY (`idUsersDetails`),
  ADD KEY `idUser` (`idUsers`);

--
-- Index pour la table `usersJeux`
--
ALTER TABLE `usersJeux`
  ADD PRIMARY KEY (`idUsersJeux`),
  ADD KEY `idUsers` (`idUsers`),
  ADD KEY `idJeux` (`idJeux`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `jeux`
--
ALTER TABLE `jeux`
  MODIFY `idJeux` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `idMenus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `idUsers` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `adminDetails`
--
ALTER TABLE `adminDetails`
  ADD CONSTRAINT `admindetails_ibfk_1` FOREIGN KEY (`idAdmin`) REFERENCES `admin` (`idAdmin`);

--
-- Contraintes pour la table `adminLicences`
--
ALTER TABLE `adminLicences`
  ADD CONSTRAINT `adminlicences_ibfk_1` FOREIGN KEY (`idAdmin`) REFERENCES `admin` (`idAdmin`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`idAmin`) REFERENCES `admin` (`idAdmin`);

--
-- Contraintes pour la table `usersDetails`
--
ALTER TABLE `usersDetails`
  ADD CONSTRAINT `usersdetails_ibfk_1` FOREIGN KEY (`idUsers`) REFERENCES `users` (`idUsers`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `usersJeux`
--
ALTER TABLE `usersJeux`
  ADD CONSTRAINT `usersjeux_ibfk_1` FOREIGN KEY (`idUsers`) REFERENCES `users` (`idUsers`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usersjeux_ibfk_2` FOREIGN KEY (`idJeux`) REFERENCES `jeux` (`idJeux`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
