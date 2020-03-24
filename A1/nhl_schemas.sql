CREATE DATABASE  IF NOT EXISTS `nhl` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `nhl`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: nhl
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `award`
--

DROP TABLE IF EXISTS `award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `award` (
  `season_year` char(7) NOT NULL,
  `award_name` varchar(45) NOT NULL,
  `winner_id` int(11) DEFAULT NULL,
  `winner_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`season_year`,`award_name`),
  KEY `winner_to_player_idx` (`winner_id`,`winner_name`),
  CONSTRAINT `award_to_player` FOREIGN KEY (`winner_id`, `winner_name`) REFERENCES `player` (`hp_id`, `name`),
  CONSTRAINT `award_to_season` FOREIGN KEY (`season_year`) REFERENCES `season` (`season_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `goalie_stats`
--

DROP TABLE IF EXISTS `goalie_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goalie_stats` (
  `hp_id` int(11) NOT NULL,
  `player_name` varchar(45) NOT NULL,
  `team_name` varchar(45) NOT NULL,
  `season_year` char(7) NOT NULL,
  `total_shots_against` int(11) DEFAULT NULL,
  `goals_allowed` int(11) DEFAULT NULL,
  `save_percentage` decimal(4,2) DEFAULT NULL,
  `average_goals_allowed` int(11) DEFAULT NULL,
  `shutouts` int(11) DEFAULT NULL,
  PRIMARY KEY (`hp_id`,`season_year`,`team_name`),
  CONSTRAINT `goalie_stats_to_pstats` FOREIGN KEY (`hp_id`, `season_year`, `team_name`) REFERENCES `player_stats` (`hp_id`, `season_year`, `team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hockey_person`
--

DROP TABLE IF EXISTS `hockey_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hockey_person` (
  `hp_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `birthday` date DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  PRIMARY KEY (`hp_id`),
  KEY `name_idx` (`name`),
  KEY `name_id` (`hp_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `match`
--

DROP TABLE IF EXISTS `match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `match` (
  `match_id` int(11) NOT NULL AUTO_INCREMENT,
  `match_date` date NOT NULL,
  `home_team` varchar(45) NOT NULL,
  `visiting_team` varchar(45) NOT NULL,
  `season` char(7) NOT NULL,
  `home_score` int(2) DEFAULT NULL,
  `visiting_score` int(2) DEFAULT NULL,
  `winner` varchar(45) DEFAULT NULL,
  `loser` varchar(45) DEFAULT NULL,
  `pre_post_reg_season` enum('regular season','postseason','preseason') NOT NULL,
  PRIMARY KEY (`match_id`),
  KEY `match_to_hometeam_idx` (`home_team`),
  KEY `match_to_visitingteam_idx` (`visiting_team`),
  KEY `match_to_season_idx` (`season`),
  KEY `match_to_winner_idx` (`winner`),
  KEY `match_to_loser_idx` (`loser`),
  KEY `match_date_idx` (`match_id`,`match_date`),
  CONSTRAINT `match_to_hometeam` FOREIGN KEY (`home_team`) REFERENCES `team` (`team_name`),
  CONSTRAINT `match_to_loser` FOREIGN KEY (`loser`) REFERENCES `team` (`team_name`),
  CONSTRAINT `match_to_season` FOREIGN KEY (`season`) REFERENCES `season` (`season_year`),
  CONSTRAINT `match_to_visitingteam` FOREIGN KEY (`visiting_team`) REFERENCES `team` (`team_name`),
  CONSTRAINT `match_to_winner` FOREIGN KEY (`winner`) REFERENCES `team` (`team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `hp_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `player_position` enum('Forward','Defence','Goalie') NOT NULL,
  `height_inches` int(2) DEFAULT NULL,
  PRIMARY KEY (`hp_id`),
  KEY `name` (`name`),
  KEY `name_id` (`hp_id`,`name`),
  CONSTRAINT `player_to_hp` FOREIGN KEY (`hp_id`) REFERENCES `hockey_person` (`hp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `player_stats`
--

DROP TABLE IF EXISTS `player_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_stats` (
  `hp_id` int(11) NOT NULL,
  `player_name` varchar(45) NOT NULL,
  `season_year` char(7) NOT NULL,
  `team_name` varchar(45) NOT NULL,
  `games_played` int(11) DEFAULT NULL,
  `total_points` int(11) DEFAULT NULL,
  `total_goals` int(11) DEFAULT NULL,
  `total_assists` int(11) DEFAULT NULL,
  `total_ice_time` decimal(8,2) DEFAULT NULL,
  `total_penalty_time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`hp_id`,`season_year`,`team_name`),
  CONSTRAINT `pstats_to_roster` FOREIGN KEY (`hp_id`, `season_year`, `team_name`) REFERENCES `roster` (`hp_id`, `season_year`, `team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `plays_in`
--

DROP TABLE IF EXISTS `plays_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plays_in` (
  `hp_id` int(11) NOT NULL,
  `player_name` varchar(45) NOT NULL,
  `team_name` varchar(45) NOT NULL,
  `season_year` char(7) NOT NULL,
  `match_id` int(11) NOT NULL,
  `match_date` date NOT NULL,
  `ice_time_minutes` decimal(4,2) NOT NULL,
  `penalty_time_minutes` decimal(4,2) NOT NULL,
  `goals` int(2) NOT NULL,
  `assists` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `shots_on_goal` int(11) DEFAULT NULL,
  `shots_against` int(11) DEFAULT NULL,
  `goals_allowed` int(11) DEFAULT NULL,
  PRIMARY KEY (`hp_id`,`team_name`,`season_year`,`match_id`),
  KEY `pl_to_match_idx` (`match_id`,`match_date`),
  KEY `pl_to_roster` (`hp_id`,`season_year`,`team_name`),
  CONSTRAINT `pl_to_match` FOREIGN KEY (`match_id`, `match_date`) REFERENCES `match` (`match_id`, `match_date`),
  CONSTRAINT `pl_to_roster` FOREIGN KEY (`hp_id`, `season_year`, `team_name`) REFERENCES `roster` (`hp_id`, `season_year`, `team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roster`
--

DROP TABLE IF EXISTS `roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roster` (
  `hp_id` int(11) NOT NULL,
  `player_name` varchar(45) NOT NULL,
  `season_year` char(7) NOT NULL,
  `team_name` varchar(45) NOT NULL,
  `player_salary` decimal(10,2) DEFAULT NULL,
  `jersey_number` int(2) NOT NULL,
  PRIMARY KEY (`hp_id`,`season_year`,`team_name`),
  KEY `roster_to_season_idx` (`season_year`),
  KEY `roster_to_team_idx` (`team_name`),
  KEY `idx_player_roster_hp_id_season_year` (`hp_id`,`season_year`) /*!80000 INVISIBLE */,
  KEY `name_idx` (`player_name`),
  CONSTRAINT `roster_to_player` FOREIGN KEY (`hp_id`) REFERENCES `player` (`hp_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `roster_to_season` FOREIGN KEY (`season_year`) REFERENCES `season` (`season_year`),
  CONSTRAINT `roster_to_team` FOREIGN KEY (`team_name`) REFERENCES `team` (`team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `season`
--

DROP TABLE IF EXISTS `season`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `season` (
  `season_year` char(7) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `salary_cap` decimal(11,2) DEFAULT NULL,
  `champion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`season_year`),
  KEY `season_to_winning_team_idx` (`champion`),
  CONSTRAINT `season_to_winning_team` FOREIGN KEY (`champion`) REFERENCES `team` (`team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `skater_stats`
--

DROP TABLE IF EXISTS `skater_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skater_stats` (
  `hp_id` int(11) NOT NULL,
  `player_name` varchar(45) NOT NULL,
  `team_name` varchar(45) NOT NULL,
  `season_year` char(7) NOT NULL,
  `skater_position` enum('Forward','Defence') NOT NULL,
  `total_shots_on_goal` int(11) DEFAULT NULL,
  PRIMARY KEY (`hp_id`,`season_year`,`team_name`),
  CONSTRAINT `skater_stats_to_pstats` FOREIGN KEY (`hp_id`, `season_year`, `team_name`) REFERENCES `player_stats` (`hp_id`, `season_year`, `team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `team_name` varchar(45) NOT NULL,
  `conference` enum('Western','Eastern') NOT NULL,
  `division` enum('Metropolitan','Atlantic','Central','Pacific') NOT NULL,
  PRIMARY KEY (`team_name`),
  KEY `conf` (`conference`),
  KEY `div` (`division`),
  KEY `standings_to_teams` (`team_name`,`division`,`conference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_standing`
--

DROP TABLE IF EXISTS `team_standing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_standing` (
  `team_name` varchar(45) NOT NULL,
  `season_year` char(7) NOT NULL,
  `division` enum('Metropolitan','Atlantic','Central','Pacific') DEFAULT NULL,
  `conference` enum('Western','Eastern') DEFAULT NULL,
  `games_played` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  `overtime_losses` int(11) DEFAULT NULL,
  KEY `standings_to_teams_idx` (`team_name`,`division`,`conference`),
  KEY `standings_to_season_idx` (`season_year`),
  CONSTRAINT `standings_to_season` FOREIGN KEY (`season_year`) REFERENCES `season` (`season_year`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `standings_to_teams` FOREIGN KEY (`team_name`, `division`, `conference`) REFERENCES `team` (`team_name`, `division`, `conference`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `works_for`
--

DROP TABLE IF EXISTS `works_for`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `works_for` (
  `hp_id` int(11) NOT NULL,
  `staff_name` varchar(45) NOT NULL,
  `team_name` varchar(45) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `title` varchar(45) NOT NULL,
  KEY `works_for_to_hp_idx` (`hp_id`,`staff_name`),
  KEY `works_for_to_team_idx` (`team_name`),
  CONSTRAINT `works_for_to_hp` FOREIGN KEY (`hp_id`, `staff_name`) REFERENCES `hockey_person` (`hp_id`, `name`),
  CONSTRAINT `works_for_to_team` FOREIGN KEY (`team_name`) REFERENCES `team` (`team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'nhl'
--

--
-- Dumping routines for database 'nhl'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-24  9:01:51
