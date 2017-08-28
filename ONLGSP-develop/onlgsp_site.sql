-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Lun 28 Août 2017 à 07:25
-- Version du serveur :  10.1.21-MariaDB
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `onlgsp_site`
--

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

--
-- Contenu de la table `jeux`
--

INSERT INTO `jeux` (`idJeux`, `titre`, `image`, `fichierSh`, `actif`) VALUES
(1, 'Ark : Combat Evolved', 'Ark', '', 0),
(2, '7 days to die', '7_days_to_die', '', 0),
(3, 'Arma3', 'Arma3', '', 0),
(4, 'Ballistic', 'Ballistic', '', 0),
(5, 'Battlefield', 'Battlefield', '', 0),
(6, 'BlackMesa', 'BlackMesa', '', 0),
(7, 'BladeSymphony', 'BladeSymphony', '', 0),
(8, 'BrainBread2', 'BrainBread2', '', 0),
(9, 'Call of Duty', 'Cod', '', 0),
(10, 'Call of Duty 2', 'Cod2', '', 0),
(11, 'Call of Duty 4', 'Cod4', '', 0),
(12, 'CodeName', 'CodeName', '', 0),
(13, 'CodunitedOffensive', 'CodunitedOffensive', '', 0),
(14, 'CodWorldatWar', 'CodWorldatWar', '', 0),
(15, 'CounterStrickCondition0', 'CounterStrickCondition0', '', 0),
(16, 'counter strike 1.6', 'counter-strike-1-6', '', 0),
(17, 'counter strike global offensive', 'counter-strike-global-offensive', '', 0),
(18, 'counter-strike-source', 'counter-strike-source', '', 0),
(19, 'day of defeat', 'day-of-defeat', '', 0),
(20, 'day of defeat source', 'day-of-defeat-source', '', 0),
(21, 'day of infamy', 'day-of-infamy', '', 0),
(22, 'deathmatch classic', 'deathmatch-classic', '', 0),
(23, 'dont starve together', 'dont-starve-together', '', 0),
(24, 'double action boogaloo', 'double-action-boogaloo', '', 0),
(25, 'empires logo', 'empires-logo', '', 0),
(26, 'factorio', 'factorio', '', 0),
(27, 'fistful of frags', 'fistful-of-frags', '', 0),
(28, 'garrys mod', 'garrys-mod', '', 0),
(29, 'goldeneye source', 'goldeneye-source', '', 0),
(30, 'half life-2 deathmatch', 'half-life-2-deathmatch', '', 0),
(31, 'half life deathmatch', 'half-life-deathmatch', '', 0),
(32, 'half life deathmatch source', 'half-life-deathmatch-source', '', 0),
(33, 'hurtworld', 'hurtworld', '', 0),
(34, 'insurgency', 'insurgency', '', 0),
(35, 'just cause 2', 'just-cause-2', '', 0),
(36, 'killing floor', 'killing-floor', '', 0),
(37, 'left 4 dead', 'left-4-dead', '', 0),
(38, 'left 4 dead 2', 'left-4-dead-2', '', 0),
(39, 'minecraft', 'minecraft', '', 0),
(40, 'multi-theft-auto', 'multi-theft-auto', '', 0),
(41, 'natural selection 2', 'natural-selection-2', '', 0),
(42, 'natural selection 2 combat', 'natural-selection-2-combat', '', 0),
(43, 'no more room in hell', 'no-more-room-in-hell', '', 0),
(44, 'opposing-force', 'opposing-force', '', 0),
(45, 'pirates vikings knights', 'pirates-vikings-knights', '', 0),
(46, 'project cars', 'project-cars', '', 0),
(47, 'project zomboid', 'project-zomboid', '', 0),
(48, 'quake 2', 'quake-2', '', 0),
(49, 'mumble', 'mumble', '', 0),
(50, 'quake 3 arena', 'quake-3-arena', '', 0),
(51, 'quake live', 'quake-live', '', 0),
(52, 'quake world', 'quake-world', '', 0),
(53, 'red orchestra', 'red-orchestra', '', 0),
(54, 'ricochet', 'ricochet', '', 0),
(55, 'rust header', 'rust-header', '', 0),
(56, 'serious sam 3', 'serious-sam-3', '', 0),
(57, 'starbound', 'starbound', '', 0),
(58, 'sven co-op', 'sven-co-op', '', 0),
(59, 'team fortress 2', 'team-fortress-2', '', 0),
(60, 'team fortress classic', 'team-fortress-classic', '', 0),
(61, 'teamspeak 3', 'teamspeak-3', '', 0),
(62, 'teeworlds', 'teeworlds', '', 0),
(63, 'terraria', 'terraria', '', 0),
(64, 'tower unite', 'tower-unite', '', 0),
(65, 'unreal tournament 3', 'unreal-tournament-3', '', 0),
(66, 'unreal tournament 99', 'unreal-tournament-99', '', 0),
(67, 'unreal tournament 2004', 'unreal-tournament-2004', '', 0),
(68, 'wolfenstien enemy territory', 'wolfenstien-enemy-territory', '', 0);

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
-- Contenu de la table `licences`
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

-- --------------------------------------------------------

--
-- Structure de la table `newsletter`
--

CREATE TABLE `newsletter` (
  `idNewsletter` int(11) NOT NULL,
  `email` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `idUsers` int(11) NOT NULL,
  `idUsersDetails` int(11) NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8 NOT NULL,
  `prenom` varchar(50) CHARACTER SET utf8 NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `adresse` text CHARACTER SET utf8 NOT NULL,
  `cp` decimal(10,0) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `pays` varchar(50) NOT NULL,
  `email` varchar(190) NOT NULL,
  `passwd` varchar(100) CHARACTER SET utf8 NOT NULL,
  `role` int(1) DEFAULT '0',
  `Ip` varchar(15) NOT NULL,
  `session` int(250) NOT NULL,
  `finSession` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateCrea` datetime NOT NULL,
  `dateModif` datetime NOT NULL,
  `actif` char(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`idUsers`, `idUsersDetails`, `nom`, `prenom`, `pseudo`, `adresse`, `cp`, `ville`, `pays`, `email`, `passwd`, `role`, `Ip`, `session`, `finSession`, `dateCrea`, `dateModif`, `actif`) VALUES
(12, 0, 'KERMICHE', 'mohamed', 'MLK69400', '286 CHEMIN DES CLOS', '69640', 'saint-Julien', 'France', 'mohamedkermiche@hotmail.fr', '$2y$10$9TeSe5L/KNtmCZfTZno0q.sdgltayL6.ebzRmXhwu8Cs4t.eI8QvK', 0, '', 0, '2017-08-27 19:51:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');

-- --------------------------------------------------------

--
-- Structure de la table `usersdetails`
--

CREATE TABLE `usersdetails` (
  `idUsersDetails` int(11) NOT NULL,
  `idUsers` int(11) NOT NULL,
  `raisonSociale` varchar(250) NOT NULL,
  `tvaIntra` varchar(20) NOT NULL,
  `ape` varchar(10) NOT NULL,
  `siret` varchar(20) NOT NULL,
  `telephone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `userslicences`
--

CREATE TABLE `userslicences` (
  `idUsersLicences` int(11) NOT NULL,
  `idUsers` int(11) NOT NULL,
  `idLicences` int(11) NOT NULL,
  `ipServer` varchar(20) NOT NULL,
  `clePrivate` text NOT NULL,
  `clePublic` text NOT NULL,
  `dateCreation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dateExpiration` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `actif` char(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables exportées
--

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
-- Index pour la table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`idNewsletter`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUsers`),
  ADD KEY `idUsersDetails` (`idUsersDetails`);

--
-- Index pour la table `usersdetails`
--
ALTER TABLE `usersdetails`
  ADD PRIMARY KEY (`idUsersDetails`),
  ADD KEY `idUser` (`idUsers`);

--
-- Index pour la table `userslicences`
--
ALTER TABLE `userslicences`
  ADD PRIMARY KEY (`idUsersLicences`),
  ADD KEY `idUsers` (`idUsers`),
  ADD KEY `idLicences` (`idLicences`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `jeux`
--
ALTER TABLE `jeux`
  MODIFY `idJeux` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT pour la table `licences`
--
ALTER TABLE `licences`
  MODIFY `idLicences` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `idMenus` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `idNewsletter` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `idUsers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
