-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 29 sep. 2020 à 09:10
-- Version du serveur :  8.0.21
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `videogames`
--
CREATE DATABASE IF NOT EXISTS `videogames` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `videogames`;

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `game_id` int NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526CE48FD905` (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tronquer la table avant d'insérer `comment`
--

TRUNCATE TABLE `comment`;
--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `game_id`, `content`, `author`, `date`) VALUES
(1, 1, 'gg1', 'Bertrand', '2015-10-21 16:29:00'),
(2, 1, 'gg2', 'Bertrand', '2015-10-21 16:29:00'),
(3, 2, 'gg1', 'Bertrand', '2015-10-21 16:29:00'),
(4, 2, 'gg2', 'Bertrand', '2015-10-21 16:29:00'),
(5, 3, 'gg1', 'Bertrand', '2015-10-21 16:29:00'),
(6, 3, 'gg2', 'Bertrand', '2015-10-21 16:29:00'),
(7, 4, 'gg1', 'Bertrand', '2015-10-21 16:29:00'),
(8, 4, 'gg2', 'Bertrand', '2015-10-21 16:29:00'),
(9, 5, 'gg1', 'Bertrand', '2015-10-21 16:29:00'),
(10, 5, 'gg2', 'Bertrand', '2015-10-21 16:29:00'),
(11, 6, 'gg1', 'Bertrand', '2015-10-21 16:29:00'),
(12, 6, 'gg2', 'Bertrand', '2015-10-21 16:29:00'),
(13, 2, 'gg3', 'Bertrand', '2020-09-29 05:42:29'),
(14, 2, 'gg4', 'Bertrand', '2020-09-29 07:34:04');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tronquer la table avant d'insérer `doctrine_migration_versions`
--

TRUNCATE TABLE `doctrine_migration_versions`;
--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200918132139', '2020-09-18 13:25:20', 14373);

-- --------------------------------------------------------

--
-- Structure de la table `game`
--

DROP TABLE IF EXISTS `game`;
CREATE TABLE IF NOT EXISTS `game` (
  `id` int NOT NULL AUTO_INCREMENT,
  `genre_id` int NOT NULL,
  `publisher_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_published` smallint NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_232B318C4296D31F` (`genre_id`),
  KEY `IDX_232B318C40C86FCE` (`publisher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tronquer la table avant d'insérer `game`
--

TRUNCATE TABLE `game`;
--
-- Déchargement des données de la table `game`
--

INSERT INTO `game` (`id`, `genre_id`, `publisher_id`, `name`, `year_published`, `image_url`, `description`) VALUES
(1, 1, 1, 'Super Mario Bros.', 1985, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co2362.jpg', 'Super Mario Bros. is a platform game. In the game, Mario must race through the Mushroom Kingdom and save Princess Toadstool (later Princess Peach) from Bowser. Mario jumps, runs, and walks across each level. The worlds are full of enemies and platforms, and open holes.'),
(2, 2, 1, 'Tetris', 1989, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co2dvy.jpg', 'Tetris, video game created by Russian designer Alexey Pajitnov in 1985 that allows players to rotate falling blocks strategically to clear levels. ... The goal of the game is to prevent the blocks from stacking up to the top of the screen for as long as possible.'),
(3, 3, 2, 'Halo 3', 2007, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co1xhc.jpg', 'Halo 3\'s story centers on the interstellar war between twenty-sixth century humanity, a collection of alien races known as the Covenant, and the alien parasite Flood. The player assumes the role of the Master Chief, a cybernetically enhanced supersoldier, as he battles the Covenant and the Flood.'),
(4, 4, 3, 'Grand Theft Auto V', 2014, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co1tgt.jpg', 'Grand Theft Auto V is an action-adventure game played from either a third-person or first-person perspective. Players complete missions—linear scenarios with set objectives—to progress through the story. Outside of the missions, players may freely roam the open world.'),
(5, 5, 4, 'Gran Turismo 5', 2010, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co20bm.jpg', 'Gran Turismo 5 is the first game in the franchise to provide a damage model, with variations of damage depending on the car. The game also features weather effects, which are available on certain circuits. Optional stereoscopic-3D resolution and karting found a place in the game.'),
(6, 6, 5, 'Just Dance 3', 2011, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co1x75.jpg', 'Just Dance 3 is a music video game released on the Wii, Xbox 360, and PlayStation 3 with Kinect and Move support respectively for the latter two. It is part of the Just Dance video game series published by Ubisoft originally on the Wii.');

-- --------------------------------------------------------

--
-- Structure de la table `game_platform`
--

DROP TABLE IF EXISTS `game_platform`;
CREATE TABLE IF NOT EXISTS `game_platform` (
  `game_id` int NOT NULL,
  `platform_id` int NOT NULL,
  PRIMARY KEY (`game_id`,`platform_id`),
  KEY `IDX_92162FEDE48FD905` (`game_id`),
  KEY `IDX_92162FEDFFE6496F` (`platform_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tronquer la table avant d'insérer `game_platform`
--

TRUNCATE TABLE `game_platform`;
--
-- Déchargement des données de la table `game_platform`
--

INSERT INTO `game_platform` (`game_id`, `platform_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 3),
(4, 3),
(4, 4),
(4, 6),
(5, 6),
(6, 3),
(6, 5),
(6, 6);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tronquer la table avant d'insérer `genre`
--

TRUNCATE TABLE `genre`;
--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id`, `name`, `description`) VALUES
(1, 'Platform', NULL),
(2, 'Puzzle', NULL),
(3, 'Shooter', NULL),
(4, 'Action', NULL),
(5, 'Racing', NULL),
(6, 'Misc', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `platform`
--

DROP TABLE IF EXISTS `platform`;
CREATE TABLE IF NOT EXISTS `platform` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tronquer la table avant d'insérer `platform`
--

TRUNCATE TABLE `platform`;
--
-- Déchargement des données de la table `platform`
--

INSERT INTO `platform` (`id`, `name`, `description`) VALUES
(1, 'NES', NULL),
(2, 'GB', NULL),
(3, 'X360', NULL),
(4, 'PS4', NULL),
(5, 'Wii', NULL),
(6, 'PS3', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
CREATE TABLE IF NOT EXISTS `publisher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tronquer la table avant d'insérer `publisher`
--

TRUNCATE TABLE `publisher`;
--
-- Déchargement des données de la table `publisher`
--

INSERT INTO `publisher` (`id`, `name`, `description`) VALUES
(1, 'Nintendo', NULL),
(2, 'Microsoft Game Studios', NULL),
(3, 'Take-Two Interactive', NULL),
(4, 'Sony Computer Entertainment', NULL),
(5, 'Ubisoft', NULL);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526CE48FD905` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`);

--
-- Contraintes pour la table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `FK_232B318C40C86FCE` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`id`),
  ADD CONSTRAINT `FK_232B318C4296D31F` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`);

--
-- Contraintes pour la table `game_platform`
--
ALTER TABLE `game_platform`
  ADD CONSTRAINT `FK_92162FEDE48FD905` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_92162FEDFFE6496F` FOREIGN KEY (`platform_id`) REFERENCES `platform` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
