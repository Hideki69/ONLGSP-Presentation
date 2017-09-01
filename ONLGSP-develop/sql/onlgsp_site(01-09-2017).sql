-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 01 sep. 2017 à 20:49
-- Version du serveur :  10.1.26-MariaDB
-- Version de PHP :  7.1.8

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
-- Structure de la table `billetjeux`
--

CREATE TABLE `billetjeux` (
  `id_billetJeux` int(11) NOT NULL,
  `idUsers` int(11) NOT NULL,
  `auteur` varchar(250) NOT NULL,
  `titre` varchar(250) NOT NULL,
  `contenuBilletJeux` varchar(500) NOT NULL,
  `date_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `billetjeux`
--

INSERT INTO `billetjeux` (`id_billetJeux`, `idUsers`, `auteur`, `titre`, `contenuBilletJeux`, `date_creation`) VALUES
(1, 38, 'Jean-Louis', 'ARK', 'Dans un monde rempli de dinosaures, d\'animaux préhistoriques et toutes sortes de créatures disparues, de dangers naturels et potentiellement de joueurs humains hostiles. Ils doivent aussi faire attention à leur vie, leur fatigue, leur poids, leur nourriture et leur soif, leur oxygène et leur torpeur ainsi que des dangers tels que les poisons, les maladies, la chaleur, le froid, etc.). ', '2017-08-31 14:36:28'),
(3, 0, 'Kervan Mazuy', '7 DAYS TO DIE', '7 Days to Die est un ovni mêlant les genres action, aventure, survival-horror, jeu de rôle et tower defense. Le joueur doit combattre une armée de zombies touchés par un virus, dans un univers entièrement destructible. Pour ce faire, il doit utiliser les ressources qui l\'entourent pour créer abris, armes et pièges, seul ou en coopération.', '2017-08-31 14:57:00'),
(4, 0, 'Kervan Mazuy', 'ARMA 3', 'ArmA III est un jeu de tir à la première personne axé simulation sur PC, vous mettant dans la peau du Capitaine Scott Miller. Dans un contexte relativement futuriste, le brave Capitaine et quelques-uns de ses hommes se retrouvent coincés sur une île méditerranéenne hostile regorgeant d\'ennemis. A vous donc de mener à bien vos objectifs dans ces conditions peu favorables.', '2017-08-31 14:57:00'),
(5, 0, 'Kervan Mazuy', 'BATTLEFIELD 1942', 'Battlefield 1942 est un jeu de tir à la première personne spécialement conçu pour être joué en ligne par équipe. Le principe consiste à prendre le contrôle de plusieurs points de la carte pour s\'assurer de plus grandes chances de victoires face à l\'adversaire. L\'utilisation de véhicules est possible pour traverser les cartes ou lancer l\'offensive. Notez qu\'un mode permet de s\'entraîner seul face à l\'intelligence artificielle.', '2017-08-31 14:57:00'),
(6, 0, 'Kervan Mazuy', 'BALLISTIC OVERKILL', 'Ballistic Overkill est un jeu de tir multijoueur sur PC dans lequel les joueurs s\'affrontent sur des maps et dont le but est on ne peut plus simple : tuer ou être tué. Le jeu mise sur une simplicité de prise en main qui permet au joueur de se lancer rapidement dans des matchs endiablés.', '2017-08-31 14:57:00'),
(7, 0, 'Kervan Mazuy', 'BLACKMESA : DEATHMATCH', 'Black Mesa sur PC est une refonte de Half-Life premier du nom, réalisée avec le moteur Source. Le titre reste un jeu de tir à la première personne dans lequel vous incarnez le Dr. Gordon Freeman, scientifique sur le site de recherche Black Mesa. Quand une des expériences tourne mal, il doit vendre chèrement sa peau pour faire face aux créatures qui envahissent les laboratoires, et réussir à s\'enfuir... Un mode coopération est inclus.', '2017-08-31 14:57:00'),
(8, 0, 'Kervan Mazuy', 'BLADE SYMPHONY', 'Etes-vous friands de combats à l\'épée ? Dans votre jeunesse (ou peut-être même encore actuellement), vos idoles s’appelaient D\'Artagnan, Zorro, Capitaine Fracasse... vous vous êtes émus devant Tigre et Dragon, Gladiator, et les aventures de Zatoichi ? Le duel à l\'épée n\'est pas quelque chose qu\'il est aisé de transposer dans l\'univers du jeu vidéo. Alors certes oui, certains jeux s\'y sont essayés, notamment dans le VS Fighting, mais les sensations sont assez différentes. Alors, aujourd\'hui, mes ', '2017-08-31 14:57:00'),
(9, 0, 'Kervan Mazuy', 'BRAINBREAD 2', ' BrainBread 2 est un jeu d\'action-aventure dans lequel vous devrez affronter à des hordes de zombies qui voudront vous dévorer. Il vous faudra faire preuve de sang froid pour traverses des villes en espérant de pas attirer l\'attention de ces créatures. Si vous échouez, vous devrez en payer le prix.', '2017-08-31 14:57:00'),
(10, 0, 'Kervan Mazuy', 'CALL OF DUTY', 'Call of Duty est un jeu vidéo de tir à la première personne se déroulant pendant la Seconde Guerre mondiale. Développé par le studio Infinity Ward et édité par Activision, il est commercialisé sur Windows et Mac OS X en 2003. ', '2017-08-31 14:57:00'),
(11, 0, 'Kervan Mazuy', 'CALL OF DUTY 2', 'Call of Duty 2 sur PC est un shoot à la première personne se déroulant lors de la Seconde Guerre mondiale. Le titre a la particularité de proposer une ambiance très cinématographique qui lui donne des allures de film. Lancez-vous dans vingt-sept missions solos réparties sur trois campagnes et battez-vous à bord de véhicules authentiques comme les chars. Un mode multi permet à plusieurs joueurs de se tirer la bourre sur internet.', '2017-08-31 14:57:00'),
(12, 0, 'Kervan Mazuy', 'CALL OF DUTY 4', 'Call of Duty 4 : Modern Warfare un jeu de tir en vue subjective sur PC qui se déroule dans un contexte contemporain et qui permet de suivre deux conflits fictifs en parallèle. Le premier place le joueur dans la peau d\'un marine américain coincé dans une guérilla urbaine au Moyen-Orient, tandis que dans l\'autre lui fait incarner un agent d\'élite britannique embarqué dans des missions discrètes en Russie et Europe de l\'Est. Plusieurs modes multijoueurs sont aussi de la partie.', '2017-08-31 14:57:00'),
(13, 0, 'Kervan Mazuy', 'CODENAME CURE\r\n', 'Entre No More Room in Hell et Left 4 Dead, Codename CURE convainc grâce à un dispositif clair, un gameplay précis, des sensations à niveau, et un univers sombre, tout ce qu\'il y a de plus gouleyant pour les chasseurs de Zombies. Un free to play qui ne fanfaronne pas graphiquement parlant mais qui développe un gameplay tout ce qu\'il y a de racé et percutant. Le genre de F2P que l\'on aimerait voir plus souvent. Un vrai jeu à tester entre amis consentants. Bonne soupe de cervelles.', '2017-08-31 18:53:52'),
(14, 0, 'Kervan Mazuy', 'CALL OF DUTY - UNITED OFFENSIVE\r\n', 'Call of Duty : La Grande Offensive est une extension du jeu de tir à la première personne sur PC. Trois nouvelles campagnes solo ont été ajoutées, proposant en tout 12 niveaux. Le joueur incarne successivement un soldat américain, britannique et russe. Le multijoueur n\'est pas en reste avec dix cartes et trois modes inédits.', '2017-08-31 18:53:52'),
(15, 0, 'Kervan Mazuy', 'CALL OF DUTY - WORLD AT WAR\r\n', ' Call of Duty : World at War est un jeu de tir à la première personne sur PC. 5ème opus de la série, le titre vous permet de combattre contre les soldats de la puissante armée japonaise sur les différents théâtres d\'opérations du Pacifique. Le jeu propose un mode campagne en coopération (4 joueurs online ou 2 joueurs en écran partagé) ainsi qu\'un mode multijoueur qui inclut de nouvelles classes de personnages, des armes évolutives et de nouveaux véhicules de combat.', '2017-08-31 18:53:52'),
(16, 0, 'Kervan Mazuy', 'COUNTER STRICK CONDITION ZERO', 'Counter-Strike: Condition Zero, ou CS:CZ, est un jeu vidéo de tir à la première personne multijoueur en ligne basé sur le jeu d\'équipe. Développé par Turtle Rock Studios et édité par Valve Software, le jeu est sorti le 1ᵉʳ mars 2004 sur Windows', '2017-08-31 18:53:52'),
(17, 0, 'Kervan Mazuy', 'COUNTER STRIKE 1.6', 'Créé à partir du célèbre moteur de Half-Life, Counter-Strike sur PC est un jeu de tir à la première personne se jouant exclusivement en ligne. Le jeu, qui compte une grande communauté, vous permet de choisir votre camp entre les terroristes et les contre-terroristes. Plusieurs objectifs différents en fonction du camp adopté et de la carte choisie doivent être menés à bien afin de remporter la partie. Vous disposez également d\'un large choix d\'armes existantes afin de renforcer l\'immersion.', '2017-08-31 18:53:52'),
(18, 0, 'Kervan Mazuy', 'Counter Strike Global Offensive', ' Ancien mod de Half-Life destiné au multijoueur, Counter-Strike : Global offensive est un jeu de tir à la première personne. Les joueurs y choisissent le camp des terroristes ou des anti-terroristes avant de s\'affronter dans des batailles sans merci. Plusieurs modes de jeux sont disponibles (dont un d\'entraînement) et les combattants ont accès à plus de trente armes différentes.', '2017-08-31 18:53:52'),
(19, 0, 'Kervan Mazuy', 'Counter Strike : Source', 'Counter-Strike : Source sur PC est un jeu de tir à la première personne qui se joue exclusivement en ligne et qui compte une grande communauté. Le jeu permet au joueur de choisir son camp entre les terroristes et les contre-terroristes. Plusieurs objectifs différents en fonction du camp adopté et de la carte choisie doivent être menées à bien afin de remporter la partie. Le jeu met également à disposition du joueur un large choix d\'armes existantes afin de renforcer l\'immersion.', '2017-08-31 18:53:52'),
(20, 0, 'Kervan Mazuy', 'Day of Defeat', 'Day of Defeat sur PC est un jeu de tir à la première personne qui se joue en ligne. Deux équipes adverses s\'affrontent au cours de divers modes de jeu. L\'action se déroule durant la Seconde Guerre mondiale et inclut un équipement d\'époque.', '2017-08-31 18:53:52'),
(21, 0, 'Kervan Mazuy', 'Day of Defeat : Source', 'Day of Defeat: Source est la suite de Day of Defeat. Il est appelé aussi par les fans DoD:S ou tout simplement dods. Le jeu est basé sur le nouveau moteur graphique de Half-Life 2 appelé « Source », ainsi que sur son moteur physique : Havok', '2017-08-31 18:53:52'),
(22, 0, 'Kervan Mazuy', 'Day of Infamy', ' Les créateurs d\'Insurgency reviennent avec l\'adaptation en stand-alone d\'un mode de jeu : Day of Infamy. Embarquez pour les champs de bataille d\'Europe de l\'Est et de l\'Ouest au travers des 10 environnements proposés. Découvrez pour la première fois ou redécouvrez ce mode de jeu qui a été plébiscité par les joueurs.', '2017-08-31 18:53:52'),
(23, 0, 'Kervan Mazuy', 'Deathmatch Classic', 'Le rythme effréné du jeu en mode multijoueur Deathmatch Classic (plus connu sous l\'acronyme DMC) va en séduire plus d\'un. Hommage de Valve au travail d\'id Software, le mode DMC invite les joueurs à se saisir de leurs lance-roquettes et à mettre leurs réflexes à l\'épreuve', '2017-08-31 18:53:52'),
(24, 0, 'Kervan Mazuy', 'Don\'t Starve Together', ' Don\'t Starve Together est une version multijoueur pour PC de Don\'t Starve. Les joueurs peuvent s\'y retrouver dans des parties privées ou ouvertes et explorer en équipe le monde étrange qui s\'offre à eux.', '2017-08-31 18:53:52'),
(25, 0, 'Kervan Mazuy', 'Double Action : Boogaloo', 'Après trois ans de développement, le mods Double Action : Boogaloo est enfin disponible à l\'essai. Développé à l\'aide du moteur Source, ce jeu de tir à la troisième personne s\'inspire des films d\'action des années 90 et laissent les joueurs effectuer des plongeons et des glissades rocambolesques tout en shootant sur tout ce qui bouge.', '2017-08-31 18:53:52'),
(26, 0, 'Kervan Mazuy', 'Empires Mod', 'Empires utilise le moteur Source de Valve, qui est également la base de titres commerciaux tels que Half-Life 2. Le jeu dans Empires combine des éléments de jeux FPS et RTS . Un joueur de l\'une ou l\'autre équipe est élu pour agir en tant que commandant : jouer au jeu d\'un point de vue haut en bas, son rôle est de construire des bases et de coordonner ses troupes. Le reste de l\'équipe agit en tant que soldats, jouant le jeu d\'une perspective de première personne sur le terrain, en tant que l\'une ', '2017-08-31 18:53:52'),
(27, 0, 'Kervan Mazuy', 'Factorio', 'Factorio est un jeu vidéo indépendant, encore en développement, par Wube Software. La sortie de la version finale est prévue pour 2017 sur Microsoft Windows, OS X et GNU/Linux.', '2017-08-31 18:53:52'),
(28, 0, 'Kervan Mazuy', 'Fistful of Frags', 'Fistful of Frags est un FPS se déroulant en plein Far West. A l\'aide d\'une vaste panoplie d\'armes, vous devrez éliminer vos adversaires et accomplir plusieurs objectifs sur des cartes aux paysages variés.', '2017-08-31 18:53:52'),
(29, 0, 'Kervan Mazuy', 'Garry\'s Mod', 'Garry’s Mod (GMod en abrégé) est un mod de construction Half-Life 2, créé par Garry Newman en décembre 2004. Il s\'agit d\'un jeu de type « sandbox » (« bac à sable » en français), sans but particulier, où le joueur est libre de créer et de manipuler n\'importe quel objet, et de faire de nombreuses expériences, exploitant entièrement le moteur Source. Le joueur est donc amené à faire preuve d\'inventivité, afin de créer toutes sortes de machines complexes en effectuant des liaisons mécaniques entre ', '2017-08-31 18:53:52'),
(30, 0, 'Kervan Mazuy', 'Goldeneye : Source', 'GoldenEye: Source est un mod de jeu en développement utilisant le moteur Source de Valve. C\'est un remake multijoueur basé sur le jeu vidéo GoldenEye 007 sorti sur Nintendo 64 lui-même basé sur le film de James Bond portant le même titre, GoldenEye.', '2017-08-31 18:53:52'),
(31, 0, 'Kervan Mazuy', 'Half Life 2 : Deathmatch', 'Half-Life 2: Deathmatch, couramment appelé HL²DM, est un jeu vidéo de tir à la première personne multijoueur en ligne développé par Valve Corporation', '2017-08-31 18:53:52'),
(32, 0, 'Kervan Mazuy', 'Half Life : Deathmatch', 'Half-Life 2: Deathmatch, couramment appelé HL²DM, est un jeu vidéo de tir à la première personne multijoueur en ligne développé par Valve Corporation.  Disponible depuis le 1er décembre 2004 sur une plate-forme de téléchargement du nom de Steam1, sa sortie succède de deux semaines celle de l\'aventure solo du jeu Half-Life 23 sur lequel il est basé et avec lequel, il partage le moteur graphique Source et un grand nombre d\'attributs.', '2017-08-31 18:53:52'),
(33, 0, 'Kervan Mazuy', 'Half Life Deathmatch : Source', 'Half-Life Deathmatch: Source reprend le principe du tout premier jeu multijoueur dans l\'univers de Half-Life. Il inclut toutes les armes habituelles ainsi que les cartes les plus populaires, et utilise le moteur Source.', '2017-08-31 18:53:52'),
(34, 0, 'Kervan Mazuy', 'Hurtworld', 'Hurtworld est un jeu de survie hardcore exclusivement multijoueur dans la lignée de Rust. L\'aspect survie se veut cependant beaucoup plus poussé et vous aurez la vie dure. Les monstres sont puissants et les ressources se feront très rares.', '2017-08-31 18:53:52'),
(35, 0, 'Kervan Mazuy', 'Insurgency', ' Insurgency est un standalone sur PC dans lequel les joueurs incarnent soit l\'équipe Security, soit les insurgés. Les affrontements se passent sur trois plans : capture de points, destruction d\'objectifs et protection de VIP. Les développeurs d\'Insurgency se sont d\'ailleurs concentrés sur le réalisme et l\'immersion du titre en rendant l\'interface la plus sobre possible : pas de minimap, pas de viseur, pas d\'indices de balles restantes, ni d\'indices de frags.', '2017-08-31 18:53:52'),
(36, 0, 'Kervan Mazuy', 'Just Cause 2', 'Just Cause 2 est un jeu vidéo d\'action développé par Avalanche Studios, sorti le 26 mars 2010 sur PC, PlayStation 3 et Xbox 360. C\'est la suite de Just Cause. Il s\'est vendu à plus de 1,19 million d\'exemplaires.', '2017-08-31 18:53:52'),
(37, 0, 'Kervan Mazuy', 'Killing Floor', 'Killing Floor, ce nom ne vous est peut-être pas inconnu puisqu\'il s\'agit à l\'origine d\'un mod pour Unreal Tournament 2004. Mais comme Red Orchestra en son temps, le mod est devenu grand et s\'est finalement mis à voler de ses propres ailes. Vendu sur Steam à un prix somme toute raisonnable, Killing Floor propose à 6 joueurs de se serrer les coudes pour tenter de survivre à des hordes de créatures plus ou moins identifiables. Si le parallèle avec un certain Left 4 Dead est inévitable, Killing Floo', '2017-08-31 18:53:52'),
(38, 0, 'Kervan Mazuy', 'Left 4 Dead', ' Left 4 Dead sur PC est un FPS horrifique basé en grande partie sur la coopération. En effet, vous incarnez un personnage dans un groupe de quatre, mais les trois autres peuvent être dirigés par des amis. Echappez aux zombies en veillant donc les uns sur les autres. Pour corser le tout, le jeu offre la possibilité à quatre autres joueurs d\'incarner des morts-vivants pour sillonner la ville et traquer les héros.', '2017-08-31 18:53:52'),
(39, 0, 'Kervan Mazuy', 'Left 4 Dead 2', 'Left 4 Dead 2 sur PC est un FPS horrifique qui plonge 4 survivants en pleine invasion d\'humains infectés par un étrange virus. Jouable en coopération, le titre propose 5 campagnes à traverser en travaillant ensemble. Plus gore que son prédécesseur, le jeu permet le démembrement des ennemis et intègre de nouvelles armes ainsi que de nouveaux équipements. Il propose en outre des modes multijoueurs inédits pour 8 participants : 4 incarnant les survivants et les autres les zombies.', '2017-08-31 18:53:52'),
(40, 0, 'Kervan Mazuy', 'Minecraft', 'Minecraft est un jeu vidéo de type « bac à sable » développé par le Suédois Markus Persson, alias Notch, puis par le studio de développement Mojang. Ce jeu vidéo plonge le joueur dans un univers généré aléatoirement et composé de voxels.', '2017-08-31 18:53:52'),
(41, 0, 'Kervan Mazuy', 'Multi Theft Auto', 'Multi Theft Auto est un mod multijoueur du jeu vidéo Grand Theft Auto: San Andreas. Il permet de jouer en ligne sur PC, bien qu\'à l\'origine il soit joué seul ou à deux. Les joueurs ont alors une multitude de serveurs proposés.', '2017-08-31 18:53:52'),
(42, 0, 'Kervan Mazuy', 'Natural Selection 2', 'Natural Selection 2 est un jeu vidéo multijoueur mélangeant à la fois le tir à la première personne et la stratégie en temps réel. Le jeu prend place dans un univers de science fiction', '2017-08-31 18:53:52'),
(43, 0, 'Kervan Mazuy', 'Natural Selection 2 : Combat', 'A la fois un jeu de tir nerveux et de furtivité, NS2: Combat oppose des aliens contre des space marines dans une bataille pleine d’action pour la survie dans un environnement effréné compétitif multijoueur.', '2017-08-31 18:53:52'),
(44, 0, 'Kervan Mazuy', 'No More Room in Hell', 'Half-Life 2 : No more Room in Hell La mode du zombie survival a tant le vent en poupe depuis plusieurs années qu\'on pourrait croire que l\'humanité rêve de voir un jour une véritable apocalypse de zombies ! De fait, No More Room in Hell use également de cette passion macabre en privilégiant la coop entre amis, le réalisme, le fun et un certain je-ne-sais-quoi qui saura vous rendre vite accro.', '2017-08-31 18:53:52'),
(45, 0, 'Kervan Mazuy', 'Opposing Force', 'Half-Life: Opposing Force est un jeu vidéo de tir à la première personne développé par Gearbox Software et sorti en novembre 1999 en tant qu’add-on d’Half-Life.', '2017-08-31 18:53:52'),
(46, 0, 'Kervan Mazuy', 'Pirates, Vikings & Knights II', 'Pirates Vikings and Knights II est un mod multijoueur, où sur fond de piraterie et de chevalier, vous livrerez des combats intenses.  PVK2 offre un gameplay stratégique, un système de classes et plusieurs modes de jeu.', '2017-08-31 18:53:52'),
(47, 0, 'Kervan Mazuy', 'Project Cars', 'Project CARS est un jeu vidéo de course automobile de Slightly Mad Studios créé et financé en collaboration avec la communauté des joueurs de World Of Mass Development à partir de 2011.', '2017-08-31 18:53:52'),
(48, 0, 'Kervan Mazuy', 'Project Zomboid', 'Project Zomboid est un jeu de rôle orienté vers la survie sur PC. Le joueur doit tenter de garder la vie sauve en échappant aux zombies peuplant l\'univers proposé. Le gameplay est axé autour de trois notions cruciales, la construction, la survie et la défense.', '2017-08-31 18:53:52'),
(49, 0, 'Kervan Mazuy', 'Quake 2', 'Quake II est un jeu vidéo de tir à la première personne développé par id Software et publié par Activision le 30 novembre 1997.', '2017-08-31 18:53:52'),
(50, 0, 'Kervan Mazuy', 'Mumble', 'Mumble (« marmonnement » en anglais) est un logiciel libre de voix sur IP (VoIP), son principal usage étant la communication pendant les parties de jeux en réseau.', '2017-08-31 18:53:52'),
(51, 0, 'Kervan Mazuy', 'Quake 3 : Arena', ' Quake III Arena sur PC est un jeu de tir à la première personne orienté multijoueur. Un arsenal varié et complet est à votre disposition pour organiser une joyeuse boucherie seul ou par équipe. Les modes classiques du genre sont tous là (Capture The Flag, Possession, Deathmatch...).', '2017-08-31 18:53:52'),
(52, 0, 'Kervan Mazuy', 'Quake Live', 'Quake Live est un projet de jeu vidéo de type tir à la première personne créé par id Software et annoncé en 2007. Il s\'agit de Quake 3 et de son supplément Quake III: Team Arena revisités afin de se lancer via un navigateur web.', '2017-08-31 18:53:52'),
(53, 0, 'Kervan Mazuy', 'Quake World', 'Quake supporte le protocole TCP/IP, permettant ainsi de jouer en multijoueur sur Internet dans un environnement client-serveur. QuakeWorld qui est publiée le 17 décembre 1996. Inédit à l\'époque, son système de prédiction côté client est considéré comme une révolution', '2017-09-01 07:50:40'),
(54, 0, 'Kervan Mazuy', 'Red Orchestra : Ostfront 41-45', 'Red Orchestra : Ostfront 41-45 est un shoot sur PC qui vous propose de participer aux plus grandes batailles du front de l\'Est pendant la Seconde Guerre mondiale. Traversez treize environnements authentiques comprenant cinq scénarios d\'infanterie, quatre scénarios interarmes et quatre scénarios de blindés. Conduisez quatorze types de véhicules et maniez 24 armes originales puis lancez-vous dans le vaste mode multijoueur.', '2017-09-01 07:50:40'),
(55, 0, 'Kervan Mazuy', 'Ricochet', 'Prenez les commandes d\'un vaisseau capable de détruire des murs de briques en repoussant une ou plusieurs balles de métal. Vous évoluerez dans 4 environnements thématiques différents : une ville sous-marine, un volcan, un temple maya et enfin un vaisseau alien.', '2017-09-01 07:50:40'),
(56, 0, 'Kervan Mazuy', 'Rust', 'Rust est un survival-horror en monde ouvert. Le joueur doit y survivre en serveur dans un monde post-apocalyptique particulièrement hostile, tout en gérant la faim, la soif et le froid, et en faisant attention aux monstres et aux autres joueurs ayant parfois de mauvaises intentions', '2017-09-01 07:50:40'),
(57, 0, 'Kervan Mazuy', 'Serious Sam 3 : BFE', 'Préquelle du premier épisode de la série, Serious Sam III sur PC est un jeu de tir à la première personne particulièrement fun et déjanté. Vous incarnez Sam Stone et devez trucider tout ce qui bouge à l\'aide d\'un arsenal plus que conséquent en pleine Egypte.', '2017-09-01 07:50:40'),
(58, 0, 'Kervan Mazuy', 'Starbound', ' Starbound est un jeu d\'aventure et d\'exploration. Suite à l\'attaque de votre chez-vous par un ennemi inconnu, vous êtes obligé de fuir votre planète et de ce fait il vous faudra vous établir sur une autre. Montez votre QG là où vous souhaitez et partez à la découverte de différentes planètes avec vos compagnons.', '2017-09-01 07:50:40'),
(59, 0, 'Kervan Mazuy', 'Sven Co-op', 'Sven Co-op est un jeu vidéo mod amateur, qui offre un gameplay unique tiré du mode solo de Half-Life. Mais vous pouvez embarquer vos amis dans l\'aventure !', '2017-09-01 07:50:40'),
(60, 0, 'Kervan Mazuy', 'Team Fortress 2', 'Team Fortress 2, ou TF2, est un jeu vidéo de tir à la première personne multijoueur en ligne fondé sur le jeu d\'équipe. Développé par Valve Corporation, il est la suite directe de Team Fortress Classic', '2017-09-01 07:50:40'),
(61, 0, 'Kervan Mazuy', 'Team Fortress Classic', 'eam Fortress Classic est un mod multijoueurs pour le jeu Half-Life. Ce mod permet aux joueurs et à leurs clans de se confronter sur internet de différentes façon.', '2017-09-01 07:50:40'),
(62, 0, 'Kervan Mazuy', 'Teamspeak 3', 'Teamspeak est un logiciel propriétaire d’audioconférence sur Internet (voix sur réseau IP). Il permet de discuter à plusieurs dans des canaux, avec d\'autres utilisateurs. Pour utiliser Teamspeak, chaque personne doit avoir installé sur son ordinateur une application client. Avec cette dernière, elle peut se connecter aux milliers de serveurs Teamspeak et entrer dans une salle de discussion (Canal).', '2017-09-01 07:50:40'),
(63, 0, 'Kervan Mazuy', 'Teeworlds', 'Teeworlds, anciennement Teewars, est un jeu de tir TPS multijoueur en 2D. Le joueur y incarne une petite créature ronde, le tee.', '2017-09-01 07:50:40'),
(64, 0, 'Kervan Mazuy', 'Terraria', 'Terraria est un jeu vidéo indépendant de type action-aventure et bac à sable développé par Re-Logic et porté sur Windows, Xbox Live, PlayStation Network, Wii U, Android et iOS.', '2017-09-01 07:50:40'),
(65, 0, 'Kervan Mazuy', 'Tower Unite', 'Tower Unite est la suite d\'un mod sur Gmod appelé \"Gmod Tower\", un jeu sans réel but ou les activités sont diverses et variées comme : des mini-jeux, des jeux de cartes, des jeux de casino, de la customisation, des jeux flash, des vidéos en synchronisé, etc. Suite à son succès sur Gmod, les développeurs ont décidé de créer un stand-alone reprenant les mêmes bases mais sur Unreal Engine.', '2017-09-01 07:50:40'),
(66, 0, 'Kervan Mazuy', 'Unreal Tournament 3', 'La série des Unreal Tournament est de retour sur PC avec ce troisième volet plus explosif que jamais. Seul ou en équipe, à pied ou véhiculé, affrontez vos ennemis et conquérez des territoires à l\'aide d\'un arsenal dévastateur pour dominer la partie. Défiez vos amis en ligne grâce au mode multijoueur pour lequel ce jeu est fait.', '2017-09-01 07:50:40'),
(67, 0, 'Kervan Mazuy', 'Unreal Tournament 99', 'Unreal Tournament (abrégé UT) est un jeu vidéo de tir à la première personne développé par Epic Games et Digital Extremes. Le jeu a également été publié sur Linux en 1999, puis sur Macintosh par MacSoft Games le 17 janvier 2000.Son mode solo rompt avec les jeux de tir subjectif classique en se focalisant sur des affrontements contre des bots dans différents modes de jeu comme les matchs à mort, la capture du drapeau, la domination ou l\'assaut.', '2017-09-01 07:50:40'),
(68, 0, 'Kervan Mazuy', 'Unreal Tournament 2004', 'Dans un tournoi sans foi ni loi, Unreal Tournament 2004 est un jeu mettant en scène des gladiateurs futuristes qui s\'affronte avec de puissantes armes dans des matches sanglants. Ce jeu sur PC propose des matches à mort chacun pour soi ou en équipe, des captures de drapeau, domination, et tous les modes de jeux propre à la série, dont le mode attaque mettant en scène des véhicules et le mode bombe de balle consistant en un sport futuriste.', '2017-09-01 07:50:40'),
(69, 0, 'Kervan Mazuy', 'Wolfenstien : Enemy Territory', 'Wolfenstein: Enemy Territory est un jeu vidéo de tir à la première personne, développé par Splash Damage. Ce jeu a été créé après la réussite du jeu duquel il est tiré : Return To Castle Wolfenstein', '2017-09-01 07:50:40');

-- --------------------------------------------------------

--
-- Structure de la table `billets`
--

CREATE TABLE `billets` (
  `id_billet` int(11) NOT NULL,
  `idUsers` int(11) NOT NULL,
  `auteur` varchar(250) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `date_creation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `billets`
--

INSERT INTO `billets` (`id_billet`, `idUsers`, `auteur`, `titre`, `contenu`, `date_creation`) VALUES
(1, 0, 'Kervan', 'Bienvenue sur mon blog !', 'Je vous souhaite à toutes et à tous la bienvenue sur mon blog qui parlera de... PHP bien sûr !', '2010-03-25 16:28:41'),
(2, 0, 'Mohammed', 'Le PHP à la conquête du monde !', 'C\'est officiel, l\'éléPHPant a annoncé à la radio hier soir \"J\'ai l\'intention de conquérir le monde !\".\r\nIl a en outre précisé que le monde serait à sa botte en moins de temps qu\'il n\'en fallait pour dire \"éléPHPant\". Pas dur, ceci dit entre nous...', '2010-03-27 18:31:11'),
(5, 0, 'Nicolas', 'ONLGSP, ça déchire t\'as mère ! ', 'Création de Open Noob Linux Game Serveur Provider, un super site pour jouer à vos jeux favoris sur Linux !', '2017-08-30 12:04:48'),
(11, 38, 'Jean-Louis', 'Premier Billet', 'J\'adore la bite et le kiwi', '2017-08-31 12:27:09');

-- --------------------------------------------------------

--
-- Structure de la table `commentairejeux`
--

CREATE TABLE `commentairejeux` (
  `id` int(11) NOT NULL,
  `id_billetJeux` int(11) NOT NULL,
  `auteur` varchar(250) NOT NULL,
  `commentaire` text NOT NULL,
  `date_commentaireJeux` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int(11) NOT NULL,
  `id_billet` int(11) NOT NULL,
  `auteur` varchar(255) NOT NULL,
  `commentaire` text NOT NULL,
  `date_commentaire` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `id_billet`, `auteur`, `commentaire`, `date_commentaire`) VALUES
(1, 1, 'M@teo21', 'Un peu court ce billet !', '2010-03-25 16:49:53'),
(2, 1, 'Maxime', 'Oui, ça commence pas très fort ce blog...', '2010-03-25 16:57:16'),
(3, 1, 'MultiKiller', '+1 !', '2010-03-25 17:12:52'),
(4, 2, 'John', 'Preum\'s !', '2010-03-27 18:59:49'),
(5, 2, 'Maxime', 'Excellente analyse de la situation !\r\nIl y arrivera plus tôt qu\'on ne le pense !', '2010-03-27 22:02:13'),
(9, 9, 'Jean-Louis', 'Bonjours! ', '2017-08-31 12:15:09'),
(10, 11, 'Jean-Louis', 'dsfgsdfg', '2017-08-31 12:27:27'),
(11, 11, 'Jean-Louis', 'Hello :! ', '2017-08-31 12:30:53'),
(8, 9, 'Jean-Louis', 'Sdf', '2017-08-31 12:11:16'),
(12, 11, 'Jean-Louis', 'Salut !', '2017-08-31 15:09:49'),
(13, 11, 'Jean-Louis', 'J\'aime la bite et le saussisson ! ', '2017-08-31 21:17:49');

-- --------------------------------------------------------

--
-- Structure de la table `jeux`
--

CREATE TABLE `jeux` (
  `idJeux` int(11) NOT NULL,
  `id_billetJeux` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `fichierSh` varchar(100) NOT NULL,
  `actif` int(1) DEFAULT '0',
  `taille` decimal(5,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `jeux`
--

INSERT INTO `jeux` (`idJeux`, `id_billetJeux`, `titre`, `image`, `fichierSh`, `actif`, `taille`) VALUES
(1, 1, 'Ark : Combat Evolved', 'Ark', 'arkserver', 1, '5675'),
(2, 3, '7 Days to Die', '7_days_to_die', 'sdtdserver', 1, '3290'),
(3, 4, 'ARMA 3', 'Arma3', 'arma3server', 1, '4916'),
(4, 6, 'Ballistic Overkill', 'Ballistic', 'boserver', 1, '139'),
(5, 5, 'Battlefield 1942', 'Battlefield', 'bf1942server', 1, '156'),
(6, 7, 'Black Mesa : Deathmatch', 'BlackMesa', 'bmdmserver', 1, '12699'),
(7, 8, 'Blade Symphony', 'BladeSymphony', 'bsserver', 0, '0'),
(8, 9, 'BrainBread 2', 'BrainBread2', 'bb2server', 1, '1440'),
(9, 10, 'Call of Duty', 'Cod', 'codserver', 1, '1181'),
(10, 11, 'Call of Duty 2', 'Cod2', 'cod2server', 1, '3521'),
(11, 12, 'Call of Duty 4', 'Cod4', 'cod4server', 1, '3765'),
(12, 13, 'CodeName CURE', 'CodeName', 'ccserver', 1, '1875'),
(13, 14, 'Call of Duty - United Offensive', 'CodunitedOffensive', 'coduoserver', 1, '2108'),
(14, 15, 'Call of Duty 5 - World at War', 'CodWorldatWar', 'codwawserver', 1, '8239'),
(15, 16, 'Counter Strick Condition Zéro', 'CounterStrickCondition0', 'csczserver', 1, '66'),
(16, 17, 'Counter Strike 1.6', 'counter-strike-1-6', 'csserver', 1, '0'),
(17, 18, 'Counter Strike Global Offensive', 'counter-strike-global-offensive', 'csgoserver', 1, '15147'),
(18, 19, 'Counter Strike : Source', 'counter-strike-source', 'cssserver', 1, '2180'),
(19, 20, 'Day of Defeat', 'day-of-defeat', 'dodserver', 1, '66'),
(20, 21, 'Day of Defeat : Source', 'day-of-defeat-source', 'dodsserver', 1, '1693'),
(21, 22, 'Day of Infamy', 'day-of-infamy', 'doiserver', 1, '10753'),
(22, 23, 'Deathmatch Classic', 'deathmatch-classic', 'dmcserver', 1, '66'),
(23, 24, 'Don\'t Starve Together', 'dont-starve-together', 'dstserver', 1, '794'),
(24, 25, 'Double Action : Boogaloo', 'double-action-boogaloo', 'dabserver', 1, '2105'),
(25, 26, 'Empires Mod', 'empires-logo', 'emserver', 1, '4205'),
(26, 27, 'Factorio', 'factorio', 'fctrserver', 1, '130'),
(27, 28, 'Fistful of Frags', 'fistful-of-frags', 'fofserver', 1, '2521'),
(28, 29, 'Garry\'s Mod', 'garrys-mod', 'gmodserver', 1, '3741'),
(29, 30, 'Goldeneye : Source', 'goldeneye-source', 'gesserver', 1, '2814'),
(30, 31, 'Half Life 2 : Deathmatch', 'half-life-2-deathmatch', 'hl2dmserver', 1, '685'),
(31, 32, 'Half Life : Deathmatch', 'half-life-deathmatch', 'hldmserver', 1, '750'),
(32, 33, 'Half Life Deathmatch : Source', 'half-life-deathmatch-source', 'hldmsserver', 1, '959'),
(33, 34, 'Hurtworld', 'hurtworld', 'hwserver', 1, '993'),
(34, 35, 'Insurgency', 'insurgency', 'insserver', 1, '8871'),
(35, 36, 'Just Cause 2', 'just-cause-2', 'jc2server', 1, '29'),
(36, 37, 'Killing Floor', 'killing-floor', 'kfserver', 1, '2270'),
(37, 38, 'Left 4 Dead', 'left-4-dead', 'l4dserver', 1, '7402'),
(38, 39, 'Left 4 Dead 2', 'left-4-dead-2', 'l4d2server', 1, '7773'),
(39, 40, 'Minecraft', 'minecraft', 'mcserver', 1, '29'),
(40, 41, 'Multi Theft Auto', 'multi-theft-auto', 'mtaserver', 1, '91'),
(41, 42, 'Natural Selection 2', 'natural-selection-2', 'ns2server', 1, '0'),
(42, 43, 'Natural Selection 2 : Combat', 'natural-selection-2-combat', 'ns2cserver', 1, '0'),
(43, 44, 'No More Room in Hell', 'no-more-room-in-hell', 'nmrihserver', 1, '6457'),
(44, 45, 'Opposing Force', 'opposing-force', 'opforserver', 1, '66'),
(45, 46, 'Pirates, Vikings & Knights II', 'pirates-vikings-knights', 'pvkiiserver', 1, '2187'),
(46, 47, 'Project Cars', 'project-cars', 'pcserver', 1, '24'),
(47, 48, 'Project Zomboid', 'project-zomboid', 'pzserver', 1, '1002'),
(48, 49, 'Quake 2', 'quake-2', 'q2server', 1, '199'),
(49, 50, 'Mumble', 'mumble', 'mumbleserver', 1, '34'),
(50, 51, 'Quake 3 : Arena', 'quake-3-arena', 'q3server', 1, '826'),
(51, 52, 'Quake Live', 'quake-live', 'qlserver', 1, '963'),
(52, 53, 'Quake World', 'quake-world', 'qwserver', 1, '257'),
(53, 54, 'Red Orchestra : Ostfront 41-45', 'red-orchestra', 'roserver', 1, '1146'),
(54, 55, 'Ricochet', 'ricochet', 'ricochetserver', 1, '66'),
(55, 56, 'Rust', 'rust-header', 'rustserver', 1, '5796'),
(56, 57, 'Serious Sam 3 : BFE', 'serious-sam-3', 'ss3server', 1, '44'),
(57, 58, 'Starbound', 'starbound', 'sbserver', 1, '0'),
(58, 59, 'Sven Co-op', 'sven-co-op', 'svenserver', 1, '1874'),
(59, 60, 'Team Fortress 2', 'team-fortress-2', 'tf2server', 1, '6685'),
(60, 61, 'Team Fortress Classic', 'team-fortress-classic', 'tfcserver', 1, '66'),
(61, 62, 'Teamspeak 3', 'teamspeak-3', 'ts3server', 1, '13'),
(62, 63, 'Teeworlds', 'teeworlds', 'twserver', 1, '0'),
(63, 64, 'Terraria', 'terraria', 'terrariaserver', 1, '0'),
(64, 65, 'Tower Unite', 'tower-unite', 'tuserver', 1, '871'),
(65, 66, 'Unreal Tournament 3', 'unreal-tournament-3', 'ut3server', 1, '0'),
(66, 67, 'Unreal Tournament 99', 'unreal-tournament-99', 'ut99server', 1, '285'),
(67, 68, 'Unreal Tournament 2004', 'unreal-tournament-2004', 'ut2k4server', 1, '5754'),
(68, 69, 'Wolfenstien : Enemy Territory', 'wolfenstien-enemy-territory', 'wetserver', 1, '270');

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
  `email` varchar(190) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` int(1) DEFAULT '0',
  `Ip` varchar(15) NOT NULL,
  `session` int(250) NOT NULL,
  `finSession` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `actif` char(1) DEFAULT '0',
  `pseudo` varchar(250) CHARACTER SET utf8 NOT NULL,
  `token` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`idUsers`, `email`, `password`, `role`, `Ip`, `session`, `finSession`, `actif`, `pseudo`, `token`) VALUES
(38, 'kervan.mazuy69@gmail.com', '$2y$10$hSpuv5VYTB2dia5PpPIhS.sCIm4K6i6eHxIpWmEhAxSGCaXVcnJXW', 1, '', 0, '2017-08-31 09:18:17', '1', 'Jean-Louis', ''),
(40, 'kervan.mazuy69400@gmail.com', '$2y$10$VxAwWrWXQFoQdJtGdckZy.J473HVuRj0vLsjSTcuwEsXBc0ffoLca', 0, '', 0, '2017-09-01 08:17:58', '1', 'Maurice', ''),
(41, 'lesasuke69@hotmail.fr', '$2y$10$03qKJqewseaF8laH2E.eNuhjml.gvfbMDUbYmpb07or3vIs4ppVMe', 1, '', 0, '2017-09-01 12:35:27', '1', 'Bert', ''),
(42, 'mohamedkermiche@hotmail.com', '$2y$10$NMc5IHVF99Beug5/bWo5uuFUMUEcAxdMwVlcemCxCKrke5znXKHWa', 0, '', 0, '2017-09-01 18:47:43', '1', 'MLK', ''),
(43, 'mohamedkermiche@hotmail.fr', '$2y$10$CAzJxlV9/4NtaN/PXdx4BeYfKmNvrN7lyNfjsxlN8REy.FwY1zKcK', 1, '', 0, '2017-09-01 18:48:12', '1', 'MLK69400', '');

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
  `pseudo` varchar(50) NOT NULL,
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
,`pseudoUsers` varchar(250)
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
-- Index pour la table `billetjeux`
--
ALTER TABLE `billetjeux`
  ADD PRIMARY KEY (`id_billetJeux`);

--
-- Index pour la table `billets`
--
ALTER TABLE `billets`
  ADD PRIMARY KEY (`id_billet`);

--
-- Index pour la table `commentairejeux`
--
ALTER TABLE `commentairejeux`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT pour la table `billetjeux`
--
ALTER TABLE `billetjeux`
  MODIFY `id_billetJeux` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT pour la table `billets`
--
ALTER TABLE `billets`
  MODIFY `id_billet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `commentairejeux`
--
ALTER TABLE `commentairejeux`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
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
  MODIFY `idUsers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
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
