-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 30 août 2017 à 16:59
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
-- Déchargement des données de la table `jeux`
--

INSERT INTO `jeux` (`idJeux`, `titre`, `image`, `fichierSh`, `actif`) VALUES
(1, 'Ark : Combat Evolved', 'Ark', '', 1),
(2, '7 Days to Die', '7_days_to_die', '', 1),
(3, 'ARMA 3', 'Arma3', '', 1),
(4, 'Ballistic Overkill', 'Ballistic', '', 1),
(5, 'Battlefield 1942', 'Battlefield', '', 1),
(6, 'Black Mesa : Deathmatch', 'BlackMesa', '', 1),
(7, 'Blade Symphony', 'BladeSymphony', '', 1),
(8, 'BrainBread 2', 'BrainBread2', '', 1),
(9, 'Call of Duty', 'Cod', '', 1),
(10, 'Call of Duty 2', 'Cod2', '', 1),
(11, 'Call of Duty 4', 'Cod4', '', 1),
(12, 'CodeName CURE', 'CodeName', '', 1),
(13, 'Call of Duty - United Offensive', 'CodunitedOffensive', '', 1),
(14, 'Call of Duty 5 - World at War', 'CodWorldatWar', '', 1),
(15, 'Counter Strick Condition Zéro', 'CounterStrickCondition0', '', 1),
(16, 'Counter Strike 1.6', 'counter-strike-1-6', '', 1),
(17, 'Counter Strike Global Offensive', 'counter-strike-global-offensive', '', 1),
(18, 'Counter Strike : Source', 'counter-strike-source', '', 1),
(19, 'Day of Defeat', 'day-of-defeat', '', 1),
(20, 'Day of Defeat : Source', 'day-of-defeat-source', '', 1),
(21, 'Day of Infamy', 'day-of-infamy', '', 1),
(22, 'Deathmatch Classic', 'deathmatch-classic', '', 1),
(23, 'Don\'t Starve Together', 'dont-starve-together', '', 1),
(24, 'Double Action : Boogaloo', 'double-action-boogaloo', '', 1),
(25, 'Empires Mod', 'empires-logo', '', 1),
(26, 'Factorio', 'factorio', '', 1),
(27, 'Fistful of Frags', 'fistful-of-frags', '', 1),
(28, 'Garry\'s Mod', 'garrys-mod', '', 1),
(29, 'Goldeneye : Source', 'goldeneye-source', '', 1),
(30, 'Half Life 2 : Deathmatch', 'half-life-2-deathmatch', '', 1),
(31, 'Half Life : Deathmatch', 'half-life-deathmatch', '', 1),
(32, 'Half Life Deathmatch : Source', 'half-life-deathmatch-source', '', 1),
(33, 'Hurtworld', 'hurtworld', '', 1),
(34, 'Insurgency', 'insurgency', '', 1),
(35, 'Just Cause 2', 'just-cause-2', '', 1),
(36, 'Killing Floor', 'killing-floor', '', 1),
(37, 'Left 4 Dead', 'left-4-dead', '', 1),
(38, 'Left 4 Dead 2', 'left-4-dead-2', '', 1),
(39, 'Minecraft', 'minecraft', '', 1),
(40, 'Multi Theft Auto', 'multi-theft-auto', '', 1),
(41, 'Natural Selection 2', 'natural-selection-2', '', 1),
(42, 'Natural Selection 2 : Combat', 'natural-selection-2-combat', '', 1),
(43, 'No More Room in Hell', 'no-more-room-in-hell', '', 1),
(44, 'Opposing Force', 'opposing-force', '', 1),
(45, 'Pirates, Vikings & Knights II', 'pirates-vikings-knights', '', 1),
(46, 'Project Cars', 'project-cars', '', 1),
(47, 'Project Zomboid', 'project-zomboid', '', 1),
(48, 'Quake 2', 'quake-2', '', 1),
(49, 'Mumble', 'mumble', '', 1),
(50, 'Quake 3 : Arena', 'quake-3-arena', '', 1),
(51, 'Quake Live', 'quake-live', '', 1),
(52, 'Quake World', 'quake-world', '', 1),
(53, 'Red Orchestra : Ostfront 41-45', 'red-orchestra', '', 1),
(54, 'Ricochet', 'ricochet', '', 1),
(55, 'Rust', 'rust-header', '', 1),
(56, 'Serious Sam 3 : BFE', 'serious-sam-3', '', 1),
(57, 'Starbound', 'starbound', '', 1),
(58, 'Sven Co-op', 'sven-co-op', '', 1),
(59, 'Team Fortress 2', 'team-fortress-2', '', 1),
(60, 'Team Fortress Classic', 'team-fortress-classic', '', 1),
(61, 'Teamspeak 3', 'teamspeak-3', '', 1),
(62, 'Teeworlds', 'teeworlds', '', 1),
(63, 'Terraria', 'terraria', '', 1),
(64, 'Tower Unite', 'tower-unite', '', 1),
(65, 'Unreal Tournament 3', 'unreal-tournament-3', '', 1),
(66, 'Unreal Tournament 99', 'unreal-tournament-99', '', 1),
(67, 'Unreal Tournament 2004', 'unreal-tournament-2004', '', 1),
(68, 'Wolfenstien : Enemy Territory', 'wolfenstien-enemy-territory', '', 1);

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
(3, 'Lifetime', '', '60.00', '1'),
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
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `idUsers` int(11) NOT NULL,
  `pseudo` varchar(500) NOT NULL,
  `email` varchar(190) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` int(1) DEFAULT '0',
  `Ip` varchar(15) NOT NULL,
  `session` int(250) NOT NULL,
  `finSession` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `actif` char(1) DEFAULT '0',
  `token` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`idUsers`, `pseudo`, `email`, `password`, `role`, `Ip`, `session`, `finSession`, `actif`, `token`) VALUES
(1, '', 'medkermiche@hotmail.fr', '$2y$10$N9usxml9XXUX7zU8sX0HkumHdgD1VdbFy1e69X4dwnQMn3JnWnri6', 0, '', 0, '2017-08-28 08:04:11', '1', ''),
(12, '', 'aaaaermiche@hotmail.fr', '$2y$10$3y7eFbZbXi9qNz6wxVMRGOk1Ia90Rgh.bs1QOkwBf/n9GAhqB735y', 0, '', 0, '2017-08-28 09:27:48', '1', ''),
(32, '', 'ccccccc@cccccc.ccccc', 'Mohamed00', 0, '', 0, '2017-08-28 13:07:40', '1', ''),
(33, '', 'jccc@ccmmmmc.ccccc', '$2y$10$QXw4uKMkYDs3nGbe1r2ree8PtzRKrpDX443yIA/e.4aSqyKcYxP1q', 0, '', 0, '2017-08-29 12:44:52', '1', ''),
(35, 'mlk69400\r\n', 'mohamedkermiche@hotmail.com', '$2y$10$gNPTmhI4o4YnaTVlQI5XF.XAoJQWXHkOsW0j2m7n3Lx/oDD3hLC.a', 0, '', 0, '2017-08-29 13:36:12', '1', ''),
(37, 'mlk', 'mohamedkermiche@hotmail.fr', '$2y$10$MAZ33M5QEyBz7PHUHL3EpO7dJeolf01dZmm0hWdgQS3Rjq0KQ6ah2', 1, '', 0, '2017-08-29 13:49:04', '1', '43af6590b638c0ede5a92f23cf63c239'),
(38, 'Luciol', 'lgallay@orange.fr', '$2y$10$7t4TKp4LfaZul.SVlsmP/uGaqwk6.jBYnJz22lcREtNDXd24/eRTq', NULL, '', 0, '2017-08-30 11:19:09', '1', '');

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

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `view_users`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `view_users` (
`idUsers` int(11)
,`pseudoUsers` varchar(500)
,`emailUsers` varchar(190)
,`passwordUsers` varchar(100)
,`sessionUsers` int(250)
,`ipUsers` varchar(15)
,`finSessionUsers` timestamp
,`actifUsers` char(1)
,`raisonSocialeUsers` varchar(250)
,`tvaIntraUsers` varchar(20)
,`apeUsers` varchar(10)
,`siretUsers` varchar(20)
,`nomUsers` varchar(100)
,`prenomUsers` varchar(100)
,`adresseUsers` text
,`cpUsers` decimal(5,0) unsigned zerofill
,`villeUsers` varchar(100)
,`paysUsers` varchar(100)
,`telephoneUsers` varchar(20)
);

-- --------------------------------------------------------

--
-- Structure de la vue `view_users`
--
DROP TABLE IF EXISTS `view_users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_users`  AS  select `u`.`idUsers` AS `idUsers`,`u`.`pseudo` AS `pseudoUsers`,`u`.`email` AS `emailUsers`,`u`.`password` AS `passwordUsers`,`u`.`session` AS `sessionUsers`,`u`.`Ip` AS `ipUsers`,`u`.`finSession` AS `finSessionUsers`,`u`.`actif` AS `actifUsers`,`ud`.`raisonSociale` AS `raisonSocialeUsers`,`ud`.`tvaIntra` AS `tvaIntraUsers`,`ud`.`ape` AS `apeUsers`,`ud`.`siret` AS `siretUsers`,`ud`.`nom` AS `nomUsers`,`ud`.`prenom` AS `prenomUsers`,`ud`.`adresse` AS `adresseUsers`,`ud`.`cp` AS `cpUsers`,`ud`.`ville` AS `villeUsers`,`ud`.`pays` AS `paysUsers`,`ud`.`telephone` AS `telephoneUsers` from (`users` `u` left join `usersdetails` `ud` on((`u`.`idUsers` = `ud`.`idUsers`))) ;

--
-- Index pour les tables déchargées
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
  ADD PRIMARY KEY (`idUsers`);

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
  ADD UNIQUE KEY `idUsers` (`idUsers`) USING BTREE,
  ADD KEY `idLicences` (`idLicences`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `jeux`
--
ALTER TABLE `jeux`
  MODIFY `idJeux` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
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
  MODIFY `idUsers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `usersdetails`
--
ALTER TABLE `usersdetails`
  ADD CONSTRAINT `usersdetails_ibfk_1` FOREIGN KEY (`idUsers`) REFERENCES `users` (`idUsers`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `userslicences`
--
ALTER TABLE `userslicences`
  ADD CONSTRAINT `userslicences_ibfk_1` FOREIGN KEY (`idUsers`) REFERENCES `users` (`idUsers`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userslicences_ibfk_2` FOREIGN KEY (`idLicences`) REFERENCES `licences` (`idLicences`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
