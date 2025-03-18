-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.41 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour exo_recherche sql
CREATE DATABASE IF NOT EXISTS `exo_recherche sql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `exo_recherche sql`;

-- Listage de la structure de table exo_recherche sql. user_aigris
CREATE TABLE IF NOT EXISTS `user_aigris` (
  `id_aigris` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`id_aigris`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table exo_recherche sql.user_aigris : ~6 rows (environ)
INSERT INTO `user_aigris` (`id_aigris`, `nom`, `prenom`, `age`) VALUES
	(1, 'Aled', 'Alice', 29),
	(2, 'Lapin', 'Garen', 60),
	(3, 'Petit', 'Martin', 26),
	(4, 'Guillet', 'Vincent', 26),
	(5, 'Gay', 'Virginie', 34),
	(6, 'Oskour', 'Jeanne', 96);

-- Listage de la structure de table exo_recherche sql. user_pas_aigris
CREATE TABLE IF NOT EXISTS `user_pas_aigris` (
  `id_pas_aigris` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`id_pas_aigris`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table exo_recherche sql.user_pas_aigris : ~3 rows (environ)
INSERT INTO `user_pas_aigris` (`id_pas_aigris`, `nom`, `prenom`, `age`) VALUES
	(2, 'Lapin', 'Garen', 60),
	(4, 'Guillet', 'Vincent', 26),
	(5, 'Gay', 'Virginie', 34);

-- Listage de la structure de table exo_recherche sql. utilisateur1
CREATE TABLE IF NOT EXISTS `utilisateur1` (
  `id_utilisateur1` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`id_utilisateur1`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table exo_recherche sql.utilisateur1 : ~3 rows (environ)
INSERT INTO `utilisateur1` (`id_utilisateur1`, `nom`, `prenom`, `age`) VALUES
	(1, 'Guillet', 'Vincent', 26),
	(2, 'Gay', 'Virginie', 34),
	(3, 'Petit', 'Martin', 26);

-- Listage de la structure de table exo_recherche sql. utilisateur2
CREATE TABLE IF NOT EXISTS `utilisateur2` (
  `id_utilisateur2` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`id_utilisateur2`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table exo_recherche sql.utilisateur2 : ~3 rows (environ)
INSERT INTO `utilisateur2` (`id_utilisateur2`, `nom`, `prenom`, `age`) VALUES
	(1, 'Aled', 'Alice', 29),
	(2, 'Lapin', 'Garen', 60),
	(3, 'Petit', 'Martin', 26);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
