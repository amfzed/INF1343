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
-- Dumping data for table `award`
--

LOCK TABLES `award` WRITE;
/*!40000 ALTER TABLE `award` DISABLE KEYS */;
INSERT INTO `award` VALUES ('2017-18','Norris Trophy',18,'Victor Mete'),('2017-18','Vezina Trophy',23,'Carey Price'),('2018-19','Hart Trophy',45,'Calle Rosen'),('2018-19','Vezina Trophy',47,'Frederik Andersen'),('2017-18','Lady Byng Trophy',54,'Matthew Highmore'),('2018-19','Messier Leadership Award',55,'David Kampf'),('2017-18','King Clancy Trophy',59,'Jonathan Toews'),('2018-19','Selke Trophy',59,'Jonathan Toews'),('2017-18','Selke Trophy',79,'Patrice Bergeron'),('2018-19','Calder Trophy',80,'Anders Bjork'),('2017-18','Hart Trophy',83,'Zdeno Chara'),('2018-19','Ted Lindsay Award',88,'Jaroslav Halak'),('2018-19','Masterton Trophy',97,'John Moore'),('2017-18','Masterton Trophy',105,'Filip Chytil'),('2017-18','Calder Trophy',115,'Chris Kreider'),('2018-19','King Clancy Trophy',118,'Henrik Lundqvist'),('2018-19','Norris Trophy',123,'Marc Staal'),('2018-19','Lady Byng Trophy',131,'Tyler Bertuzzi'),('2017-18','Ted Lindsay Award',141,'Luke Glendening'),('2017-18','Messier Leadership Award',146,'Dylan Larkin');
/*!40000 ALTER TABLE `award` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `goalie_stats`
--

LOCK TABLES `goalie_stats` WRITE;
/*!40000 ALTER TABLE `goalie_stats` DISABLE KEYS */;
INSERT INTO `goalie_stats` VALUES (22,'Charlie Lindgren','Montreal Canadiens','2017-18',NULL,NULL,0.91,3,2),(22,'Charlie Lindgren','Montreal Canadiens','2018-19',NULL,NULL,0.90,5,0),(23,'Carey Price','Montreal Canadiens','2017-18',NULL,NULL,0.90,3,1),(23,'Carey Price','Montreal Canadiens','2018-19',NULL,NULL,0.92,2,4),(47,'Frederik Andersen','Toronto Maple Leafs','2017-18',NULL,NULL,0.92,3,5),(47,'Frederik Andersen','Toronto Maple Leafs','2018-19',NULL,NULL,0.92,3,0),(76,'Corey Crawford','Chicago Blackhawks','2017-18',NULL,NULL,0.93,2,2),(76,'Corey Crawford','Chicago Blackhawks','2018-19',NULL,NULL,0.91,3,2),(88,'Jaroslav Halak','Boston Bruins','2018-19',NULL,NULL,0.92,2,5),(100,'Tuukka Rask','Boston Bruins','2017-18',NULL,NULL,0.92,2,3),(100,'Tuukka Rask','Boston Bruins','2018-19',NULL,NULL,0.91,2,4),(112,'Alexandar Georgiev','New York Rangers','2017-18',NULL,NULL,0.92,3,0),(112,'Alexandar Georgiev','New York Rangers','2018-19',NULL,NULL,0.91,3,2),(118,'Henrik Lundqvist','New York Rangers','2017-18',NULL,NULL,0.92,3,2),(118,'Henrik Lundqvist','New York Rangers','2018-19',NULL,NULL,0.91,3,0),(130,'Jonathan Bernier','Detroit Red Wings','2018-19',NULL,NULL,0.90,3,1),(144,'Jimmy Howard','Detroit Red Wings','2017-18',NULL,NULL,0.91,3,1),(144,'Jimmy Howard','Detroit Red Wings','2018-19',NULL,NULL,0.91,3,0);
/*!40000 ALTER TABLE `goalie_stats` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `hockey_person`
--

LOCK TABLES `hockey_person` WRITE;
/*!40000 ALTER TABLE `hockey_person` DISABLE KEYS */;
INSERT INTO `hockey_person` VALUES (1,'Paul Byron','1989-04-27',30),(2,'Phillip Danault','1993-02-24',27),(3,'Max Domi','1995-03-02',25),(4,'Jonathan Drouin','1995-03-28',24),(5,'Jake Evans','1996-06-02',23),(6,'Nick Suzuki','1999-08-10',20),(7,'Jordan Weal','1992-04-15',27),(8,'Charles Hudon','1994-06-23',25),(9,'Artturi Lehkonen','1995-07-04',24),(10,'Tomas Tatar','1990-12-01',29),(11,'Joel Armia','1993-05-31',26),(12,'Brendan Gallagher','1992-05-06',27),(13,'Dale Weise','1988-08-05',31),(14,'Karl Alzner','1988-09-24',31),(15,'Ben Chiaro','1991-05-09',28),(16,'Christian Folin','1991-02-09',29),(17,'Brett Kulak','1994-01-06',26),(18,'Victor Mete','1998-06-07',21),(19,'Xavier Ouellet','1993-07-29',26),(20,'Jeff Petry','1987-12-09',32),(21,'Shea Weber','1985-08-14',34),(22,'Charlie Lindgren','1993-12-18',26),(23,'Carey Price','1987-08-16',32),(24,'Frederik Gauthier','1995-04-26',24),(25,'Zach Hyman','1992-06-09',27),(26,'Alexander Kerfoot','1994-08-11',25),(27,'Denis Malgin','1997-01-18',23),(28,'Mitch Marner','1997-05-05',22),(29,'Auston Matthews','1997-09-17',22),(30,'Jason Spezza','1983-06-13',36),(31,'John Tavares','1990-09-20',29),(32,'Kyle Clifford','1991-01-13',29),(33,'Pierre Engvall','1996-05-31',23),(34,'Andreas Johnsson','1994-11-21',25),(35,'Kasperi Kapanen','1996-07-23',23),(36,'Ilya Mikheyev','1994-10-10',25),(37,'William Nylander','1996-05-01',23),(38,'Tyson Barrie','1991-07-26',28),(39,'Cody Ceci','1993-12-21',26),(40,'Travis Dermott','1996-12-22',23),(41,'Justin Hol','1992-01-30',28),(42,'Martin Marincin','1992-02-18',28),(43,'Jake Muzzi','1989-02-21',31),(44,'Morgan Rielly','1994-03-09',26),(45,'Calle Rosen','1994-02-02',26),(46,'Rasmus Sandin','2000-03-07',20),(47,'Frederik Andersen','1989-10-02',30),(48,'Jack Campbell','1992-01-09',28),(49,'Sheldon Keefe','1950-01-01',70),(50,'Claude Julien','1950-01-01',70),(51,'Drake Caggiula','1994-06-20',25),(52,'Ryan Carpenter','1991-01-18',29),(53,'Kirby Dach','2001-01-21',19),(54,'Matthew Highmore','1996-02-27',24),(55,'David Kampf','1995-01-12',25),(56,'Andrew Shaw','1991-07-20',28),(57,'Zack Smith','1988-04-05',31),(58,'Dylan Strome','1997-03-07',23),(59,'Jonathan Toews','1988-04-29',31),(60,'Brandon Hagel','1998-08-27',21),(61,'Dominik Kubali','1995-08-21',24),(62,'Alex Nylander','1998-03-02',22),(63,'Brandon Saad','1992-10-27',27),(64,'Alex DeBrincat','1997-12-18',22),(65,'Patrick Kane','1988-11-19',31),(66,'Nicolas Beaudin','1999-10-09',20),(67,'Adam Boqvist','2000-08-15',19),(68,'Lucas Carlsson','1997-07-05',22),(69,'Duncan Keit','1983-07-16',36),(70,'Slater Koekkoek','1994-02-18',26),(71,'Olli Maatt','1994-08-22',25),(72,'Connor Murph','1993-03-26',26),(73,'Brent Seabroo','1985-04-20',34),(74,'Nick Seeler','1993-06-03',26),(75,'Calvin de Haan','1991-05-09',28),(76,'Corey Crawford','1984-12-31',35),(77,'Malcolm Subban','1993-12-21',26),(78,'Jeremy Colliton','1950-01-01',70),(79,'Patrice Bergeron','1985-07-24',34),(80,'Anders Bjork','1996-08-05',23),(81,'Anton Blidh','1995-03-14',24),(82,'Brandon Carlo','1996-11-26',23),(83,'Zdeno Chara','1977-03-18',42),(84,'Connor Clifton','1995-04-28',24),(85,'Charlie Coyle','1992-03-02',27),(86,'Jake DeBrusk','1996-10-17',23),(87,'Matt Grzelcyk','1994-01-05',26),(88,'Jaroslav Halak','1985-05-13',34),(89,'Ondrej Kase','1995-11-08',24),(90,'David Krejci','1986-04-28',33),(91,'Torey Krug','1991-04-12',28),(92,'Sean Kuraly','1993-01-20',27),(93,'Jeremy Lauzon','1997-04-28',22),(94,'Par Lindholm','1991-10-05',28),(95,'Brad Marchand','1988-05-11',31),(96,'Charlie McAvoy','1997-12-21',22),(97,'John Moore','1990-11-19',29),(98,'Joakim Nordstrom','1992-02-25',27),(99,'David Pastrnak','1996-05-25',23),(100,'Tuukka Rask','1987-03-10',32),(101,'Nick Ritchie','1995-12-05',24),(102,'Chris Wagner','1991-05-27',28),(103,'Bruce Cassidy','1950-01-01',70),(104,'Pavel Buchnevich','1995-04-17',24),(105,'Filip Chytil','1999-09-05',20),(106,'Anthony DeAngelo','1995-10-24',24),(107,'Phillip Di Giuseppe','1993-10-09',26),(108,'Jesper Fast','1991-12-02',28),(109,'Steven Fogarty','1993-04-19',26),(110,'Adam Fox','1998-02-17',21),(111,'Julien Gauthier','1997-10-15',22),(112,'Alexandar Georgiev','1996-02-10',23),(113,'Brett Howden','1998-03-28',21),(114,'Kaapo Kakko','2001-02-13',18),(115,'Chris Kreider','1991-04-30',28),(116,'Brendan Lemieux','1996-03-15',23),(117,'Ryan Lindgren','1998-02-11',21),(118,'Henrik Lundqvist','1982-03-02',37),(119,'Greg McKegg','1992-06-17',27),(120,'Artemi Panarin','1991-10-30',28),(121,'Igor Shesterkin','1995-12-30',24),(122,'Brendan Smith','1989-02-08',30),(123,'Marc Staal','1987-01-13',33),(124,'Ryan Strome','1993-07-11',26),(125,'Jacob Trouba','1994-02-26',25),(126,'Mika Zibanejad','1993-04-18',26),(127,'David Quinn','1950-01-01',70),(128,'Jeff Blashill','1950-01-01',70),(129,'Justin Abdelkader','1987-02-25',32),(130,'Jonathan Bernier','1988-08-07',31),(131,'Tyler Bertuzzi','1995-02-24',24),(132,'Alex Biega','1988-04-04',31),(133,'Madison Bowey','1995-04-22',24),(134,'Trevor Daley','1983-10-09',36),(135,'Christoffer Ehn','1996-04-05',23),(136,'Jonathan Ericsson','1984-03-02',35),(137,'Adam Erne','1995-04-20',24),(138,'Robby Fabbri','1996-01-22',24),(139,'Valtteri Filppula','1984-03-20',35),(140,'Sam Gagner','1989-08-10',30),(141,'Luke Glendening','1989-04-28',30),(142,'Cody Goloubef','1989-11-30',30),(143,'Darren Helm','1987-01-21',33),(144,'Jimmy Howard','1984-03-26',35),(145,'Filip Hronek','1997-11-02',22),(146,'Dylan Larkin','1996-07-30',23),(147,'Gustav Lindstrom','1998-10-20',21),(148,'Anthony Mantha','1994-09-16',25),(149,'Patrik Nemeth','1992-02-08',27),(150,'Frans Nielsen','1984-04-24',35),(151,'Brendan Perlini','1996-04-27',23),(152,'Dmytro Timashov','1996-10-01',23),(153,'Kyle Dubas','1982-11-29',34),(154,'Stan Bowman','1973-06-28',46),(155,'Steve Yzerman','1965-05-09',54),(156,'Jeff Gorton','1968-06-06',51),(157,'Marc Bergevin','1965-08-11',54);
/*!40000 ALTER TABLE `hockey_person` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match`
--

LOCK TABLES `match` WRITE;
/*!40000 ALTER TABLE `match` DISABLE KEYS */;
INSERT INTO `match` VALUES (1,'2018-10-03','Toronto Maple Leafs','Montreal Canadiens','2018-19',3,2,'Toronto Maple Leafs','Montreal Canadiens','regular season'),(2,'2018-10-07','Chicago Blackhawks','Toronto Maple Leafs','2018-19',6,7,'Toronto Maple Leafs','Chicago Blackhawks','regular season'),(3,'2018-10-11','Detroit Red Wings','Toronto Maple Leafs','2018-19',3,5,'Toronto Maple Leafs','Detroit Red Wings','regular season'),(4,'2018-10-13','Boston Bruins','Detroit Red Wings','2018-19',8,2,'Boston Bruins','Detroit Red Wings','regular season'),(5,'2018-10-15','Montreal Canadiens','Detroit Red Wings','2018-19',7,3,'Montreal Canadiens','Detroit Red Wings','regular season'),(6,'2018-10-25','Chicago Blackhawks','New York Rangers','2018-19',4,1,'Chicago Blackhawks','New York Rangers','regular season'),(7,'2018-10-27','Boston Bruins','Montreal Canadiens','2018-19',0,3,'Montreal Canadiens','Boston Bruins','regular season'),(8,'2018-11-06','New York Rangers','Montreal Canadiens','2018-19',5,3,'New York Rangers','Montreal Canadiens','regular season'),(9,'2018-11-09','Detroit Red Wings','New York Rangers','2018-19',3,2,'Detroit Red Wings','New York Rangers','regular season'),(10,'2018-11-10','Boston Bruins','Toronto Maple Leafs','2018-19',5,1,'Boston Bruins','Toronto Maple Leafs','regular season'),(11,'2018-11-21','Detroit Red Wings','Boston Bruins','2018-19',3,2,'Detroit Red Wings','Boston Bruins','regular season'),(12,'2018-11-24','Montreal Canadiens','Boston Bruins','2018-19',2,3,'Boston Bruins','Montreal Canadiens','regular season'),(13,'2018-11-26','Toronto Maple Leafs','Boston Bruins','2018-19',4,2,'Toronto Maple Leafs','Boston Bruins','regular season'),(14,'2018-12-01','Boston Bruins','Detroit Red Wings','2018-19',2,4,'Detroit Red Wings','Boston Bruins','regular season'),(15,'2018-12-01','Montreal Canadiens','New York Rangers','2018-19',5,2,'Montreal Canadiens','New York Rangers','regular season'),(16,'2018-12-06','Toronto Maple Leafs','Detroit Red Wings','2018-19',4,5,'Detroit Red Wings','Toronto Maple Leafs','regular season'),(17,'2018-12-08','Boston Bruins','Toronto Maple Leafs','2018-19',6,3,'Boston Bruins','Toronto Maple Leafs','regular season'),(18,'2018-12-09','Chicago Blackhawks','Montreal Canadiens','2018-19',2,3,'Montreal Canadiens','Chicago Blackhawks','regular season'),(19,'2018-12-17','Montreal Canadiens','Boston Bruins','2018-19',0,4,'Boston Bruins','Montreal Canadiens','regular season'),(20,'2018-12-22','Toronto Maple Leafs','New York Rangers','2018-19',5,3,'Toronto Maple Leafs','New York Rangers','regular season'),(21,'2018-12-23','Toronto Maple Leafs','Detroit Red Wings','2018-19',5,4,'Toronto Maple Leafs','Detroit Red Wings','regular season'),(22,'2019-01-01','Chicago Blackhawks','Boston Bruins','2018-19',2,4,'Boston Bruins','Chicago Blackhawks','regular season'),(23,'2019-01-08','Detroit Red Wings','Montreal Canadiens','2018-19',2,3,'Montreal Canadiens','Detroit Red Wings','regular season'),(24,'2019-01-12','Toronto Maple Leafs','Boston Bruins','2018-19',2,3,'Boston Bruins','Toronto Maple Leafs','regular season'),(25,'2019-01-14','Boston Bruins','Montreal Canadiens','2018-19',2,3,'Montreal Canadiens','Boston Bruins','regular season'),(26,'2019-01-17','New York Rangers','Chicago Blackhawks','2018-19',4,3,'New York Rangers','Chicago Blackhawks','regular season'),(27,'2019-01-19','Boston Bruins','New York Rangers','2018-19',2,3,'New York Rangers','Boston Bruins','regular season'),(28,'2019-02-01','Detroit Red Wings','Toronto Maple Leafs','2018-19',3,2,'Detroit Red Wings','Toronto Maple Leafs','regular season'),(29,'2019-02-06','New York Rangers','Boston Bruins','2018-19',4,3,'New York Rangers','Boston Bruins','regular season'),(30,'2019-02-09','Montreal Canadiens','Toronto Maple Leafs','2018-19',3,4,'Toronto Maple Leafs','Montreal Canadiens','regular season'),(31,'2019-02-10','Chicago Blackhawks','Detroit Red Wings','2018-19',5,2,'Chicago Blackhawks','Detroit Red Wings','regular season'),(32,'2019-02-10','New York Rangers','Toronto Maple Leafs','2018-19',4,1,'New York Rangers','Toronto Maple Leafs','regular season'),(33,'2019-02-12','Boston Bruins','Chicago Blackhawks','2018-19',6,3,'Boston Bruins','Chicago Blackhawks','regular season'),(34,'2019-02-20','Detroit Red Wings','Chicago Blackhawks','2018-19',4,5,'Chicago Blackhawks','Detroit Red Wings','regular season'),(35,'2019-02-23','Toronto Maple Leafs','Montreal Canadiens','2018-19',6,3,'Toronto Maple Leafs','Montreal Canadiens','regular season'),(36,'2019-02-26','Detroit Red Wings','Montreal Canadiens','2018-19',1,8,'Montreal Canadiens','Detroit Red Wings','regular season'),(37,'2019-03-01','New York Rangers','Montreal Canadiens','2018-19',2,4,'Montreal Canadiens','New York Rangers','regular season'),(38,'2019-03-07','Detroit Red Wings','New York Rangers','2018-19',3,2,'Detroit Red Wings','New York Rangers','regular season'),(39,'2019-03-12','Montreal Canadiens','Detroit Red Wings','2018-19',3,1,'Montreal Canadiens','Detroit Red Wings','regular season'),(40,'2019-03-13','Toronto Maple Leafs','Chicago Blackhawks','2018-19',4,5,'Chicago Blackhawks','Toronto Maple Leafs','regular season'),(41,'2019-03-16','Montreal Canadiens','Chicago Blackhawks','2018-19',0,2,'Chicago Blackhawks','Montreal Canadiens','regular season'),(42,'2019-03-19','New York Rangers','Detroit Red Wings','2018-19',2,3,'Detroit Red Wings','New York Rangers','regular season'),(43,'2019-03-23','Toronto Maple Leafs','New York Rangers','2018-19',1,2,'New York Rangers','Toronto Maple Leafs','regular season'),(44,'2019-03-27','Boston Bruins','New York Rangers','2018-19',6,3,'Boston Bruins','New York Rangers','regular season'),(45,'2019-03-31','Detroit Red Wings','Boston Bruins','2018-19',6,3,'Detroit Red Wings','Boston Bruins','regular season'),(46,'2019-04-06','Montreal Canadiens','Toronto Maple Leafs','2018-19',6,5,'Montreal Canadiens','Toronto Maple Leafs','regular season'),(47,'2019-04-11','Boston Bruins','Toronto Maple Leafs','2018-19',1,4,'Toronto Maple Leafs','Boston Bruins','postseason'),(48,'2019-04-13','Boston Bruins','Toronto Maple Leafs','2018-19',4,1,'Boston Bruins','Toronto Maple Leafs','postseason'),(49,'2019-04-15','Toronto Maple Leafs','Boston Bruins','2018-19',3,2,'Toronto Maple Leafs','Boston Bruins','postseason'),(50,'2019-04-17','Toronto Maple Leafs','Boston Bruins','2018-19',4,6,'Boston Bruins','Toronto Maple Leafs','postseason'),(51,'2019-04-19','Boston Bruins','Toronto Maple Leafs','2018-19',1,2,'Toronto Maple Leafs','Boston Bruins','postseason'),(52,'2019-04-21','Toronto Maple Leafs','Boston Bruins','2018-19',2,4,'Boston Bruins','Toronto Maple Leafs','postseason'),(53,'2019-04-23','Boston Bruins','Toronto Maple Leafs','2018-19',5,1,'Boston Bruins','Toronto Maple Leafs','postseason'),(54,'2017-10-07','Toronto Maple Leafs','New York Rangers','2017-18',8,5,'Toronto Maple Leafs','New York Rangers','regular season'),(55,'2017-10-08','New York Rangers','Montreal Canadiens','2017-18',2,0,'New York Rangers','Montreal Canadiens','regular season'),(56,'2017-10-09','Toronto Maple Leafs','Chicago Blackhawks','2017-18',4,3,'Toronto Maple Leafs','Chicago Blackhawks','regular season'),(57,'2017-10-10','Montreal Canadiens','Chicago Blackhawks','2017-18',1,3,'Chicago Blackhawks','Montreal Canadiens','regular season'),(58,'2017-10-14','Montreal Canadiens','Toronto Maple Leafs','2017-18',3,4,'Toronto Maple Leafs','Montreal Canadiens','regular season'),(59,'2017-10-18','Toronto Maple Leafs','Detroit Red Wings','2017-18',6,3,'Toronto Maple Leafs','Detroit Red Wings','regular season'),(60,'2017-10-28','Montreal Canadiens','New York Rangers','2017-18',5,4,'Montreal Canadiens','New York Rangers','regular season'),(61,'2017-11-05','Chicago Blackhawks','Montreal Canadiens','2017-18',0,2,'Montreal Canadiens','Chicago Blackhawks','regular season'),(62,'2017-11-08','New York Rangers','Boston Bruins','2017-18',4,2,'New York Rangers','Boston Bruins','regular season'),(63,'2017-11-10','Toronto Maple Leafs','Boston Bruins','2017-18',3,2,'Toronto Maple Leafs','Boston Bruins','regular season'),(64,'2017-11-11','Boston Bruins','Toronto Maple Leafs','2017-18',1,4,'Toronto Maple Leafs','Boston Bruins','regular season'),(65,'2017-11-15','Chicago Blackhawks','New York Rangers','2017-18',6,3,'Chicago Blackhawks','New York Rangers','regular season'),(66,'2017-11-18','Montreal Canadiens','Toronto Maple Leafs','2017-18',0,6,'Toronto Maple Leafs','Montreal Canadiens','regular season'),(67,'2017-11-24','New York Rangers','Detroit Red Wings','2017-18',2,1,'New York Rangers','Detroit Red Wings','regular season'),(68,'2017-11-30','Detroit Red Wings','Montreal Canadiens','2017-18',3,6,'Montreal Canadiens','Detroit Red Wings','regular season'),(69,'2017-12-02','Montreal Canadiens','Detroit Red Wings','2017-18',10,1,'Montreal Canadiens','Detroit Red Wings','regular season'),(70,'2017-12-13','Detroit Red Wings','Boston Bruins','2017-18',2,3,'Boston Bruins','Detroit Red Wings','regular season'),(71,'2017-12-15','Detroit Red Wings','Toronto Maple Leafs','2017-18',3,1,'Detroit Red Wings','Toronto Maple Leafs','regular season'),(72,'2017-12-16','Boston Bruins','New York Rangers','2017-18',2,3,'New York Rangers','Boston Bruins','regular season'),(73,'2017-12-23','Boston Bruins','Detroit Red Wings','2017-18',3,1,'Boston Bruins','Detroit Red Wings','regular season'),(74,'2017-12-23','New York Rangers','Toronto Maple Leafs','2017-18',2,3,'Toronto Maple Leafs','New York Rangers','regular season'),(75,'2017-12-29','Detroit Red Wings','New York Rangers','2017-18',3,2,'Detroit Red Wings','New York Rangers','regular season'),(76,'2018-01-03','New York Rangers','Chicago Blackhawks','2017-18',2,5,'Chicago Blackhawks','New York Rangers','regular season'),(77,'2018-01-13','Montreal Canadiens','Boston Bruins','2017-18',3,4,'Boston Bruins','Montreal Canadiens','regular season'),(78,'2018-01-14','Chicago Blackhawks','Detroit Red Wings','2017-18',0,4,'Detroit Red Wings','Chicago Blackhawks','regular season'),(79,'2018-01-17','Boston Bruins','Montreal Canadiens','2017-18',4,1,'Boston Bruins','Montreal Canadiens','regular season'),(80,'2018-01-20','Montreal Canadiens','Boston Bruins','2017-18',1,4,'Boston Bruins','Montreal Canadiens','regular season'),(81,'2018-01-24','Chicago Blackhawks','Toronto Maple Leafs','2017-18',2,3,'Toronto Maple Leafs','Chicago Blackhawks','regular season'),(82,'2018-01-25','Detroit Red Wings','Chicago Blackhawks','2017-18',1,5,'Chicago Blackhawks','Detroit Red Wings','regular season'),(83,'2018-02-01','New York Rangers','Toronto Maple Leafs','2017-18',0,4,'Toronto Maple Leafs','New York Rangers','regular season'),(84,'2018-02-03','Boston Bruins','Toronto Maple Leafs','2017-18',4,1,'Boston Bruins','Toronto Maple Leafs','regular season'),(85,'2018-02-06','Detroit Red Wings','Boston Bruins','2017-18',2,3,'Boston Bruins','Detroit Red Wings','regular season'),(86,'2018-02-07','New York Rangers','Boston Bruins','2017-18',1,6,'Boston Bruins','New York Rangers','regular season'),(87,'2018-02-18','Detroit Red Wings','Toronto Maple Leafs','2017-18',2,3,'Toronto Maple Leafs','Detroit Red Wings','regular season'),(88,'2018-02-22','Montreal Canadiens','New York Rangers','2017-18',3,1,'Montreal Canadiens','New York Rangers','regular season'),(89,'2018-02-24','Toronto Maple Leafs','Boston Bruins','2017-18',4,3,'Toronto Maple Leafs','Boston Bruins','regular season'),(90,'2018-02-25','New York Rangers','Detroit Red Wings','2017-18',2,3,'Detroit Red Wings','New York Rangers','regular season'),(91,'2018-03-03','Boston Bruins','Montreal Canadiens','2017-18',2,1,'Boston Bruins','Montreal Canadiens','regular season'),(92,'2018-03-06','Boston Bruins','Detroit Red Wings','2017-18',6,5,'Boston Bruins','Detroit Red Wings','regular season'),(93,'2018-03-10','Boston Bruins','Chicago Blackhawks','2017-18',7,4,'Boston Bruins','Chicago Blackhawks','regular season'),(94,'2018-03-11','Chicago Blackhawks','Boston Bruins','2017-18',3,1,'Chicago Blackhawks','Boston Bruins','regular season'),(95,'2018-03-17','Toronto Maple Leafs','Montreal Canadiens','2017-18',4,0,'Toronto Maple Leafs','Montreal Canadiens','regular season'),(96,'2018-03-24','Toronto Maple Leafs','Detroit Red Wings','2017-18',4,3,'Toronto Maple Leafs','Detroit Red Wings','regular season'),(97,'2018-03-26','Montreal Canadiens','Detroit Red Wings','2017-18',4,2,'Montreal Canadiens','Detroit Red Wings','regular season'),(98,'2018-04-05','Detroit Red Wings','Montreal Canadiens','2017-18',3,4,'Montreal Canadiens','Detroit Red Wings','regular season'),(99,'2018-04-07','Toronto Maple Leafs','Montreal Canadiens','2017-18',4,2,'Toronto Maple Leafs','Montreal Canadiens','regular season'),(100,'2018-04-12','Boston Bruins','Toronto Maple Leafs','2017-18',5,1,'Boston Bruins','Toronto Maple Leafs','postseason'),(101,'2018-04-14','Boston Bruins','Toronto Maple Leafs','2017-18',7,3,'Boston Bruins','Toronto Maple Leafs','postseason'),(102,'2018-04-16','Toronto Maple Leafs','Boston Bruins','2017-18',4,2,'Toronto Maple Leafs','Boston Bruins','postseason'),(103,'2018-04-19','Toronto Maple Leafs','Boston Bruins','2017-18',1,3,'Boston Bruins','Toronto Maple Leafs','postseason'),(104,'2018-04-21','Boston Bruins','Toronto Maple Leafs','2017-18',3,4,'Toronto Maple Leafs','Boston Bruins','postseason'),(105,'2018-04-23','Toronto Maple Leafs','Boston Bruins','2017-18',3,1,'Toronto Maple Leafs','Boston Bruins','postseason'),(106,'2018-04-25','Boston Bruins','Toronto Maple Leafs','2017-18',7,4,'Boston Bruins','Toronto Maple Leafs','postseason');
/*!40000 ALTER TABLE `match` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,'Paul Byron','Forward',68),(2,'Phillip Danault','Forward',72),(3,'Max Domi','Forward',70),(4,'Jonathan Drouin','Forward',71),(5,'Jake Evans','Forward',73),(6,'Nick Suzuki','Forward',71),(7,'Jordan Weal','Forward',69),(8,'Charles Hudon','Forward',70),(9,'Artturi Lehkonen','Forward',72),(10,'Tomas Tatar','Forward',71),(11,'Joel Armia','Forward',75),(12,'Brendan Gallagher','Forward',69),(13,'Dale Weise','Forward',74),(14,'Karl Alzner','Defence',75),(15,'Ben Chiaro','Defence',75),(16,'Christian Folin','Defence',75),(17,'Brett Kulak','Defence',74),(18,'Victor Mete','Defence',69),(19,'Xavier Ouellet','Defence',73),(20,'Jeff Petry','Defence',75),(21,'Shea Weber','Defence',76),(22,'Charlie Lindgren','Goalie',73),(23,'Carey Price','Goalie',75),(24,'Frederik Gauthier','Forward',77),(25,'Zach Hyman','Forward',73),(26,'Alexander Kerfoot','Forward',70),(27,'Denis Malgin','Forward',69),(28,'Mitch Marner','Forward',72),(29,'Auston Matthews','Forward',74),(30,'Jason Spezza','Forward',75),(31,'John Tavares','Forward',73),(32,'Kyle Clifford','Forward',74),(33,'Pierre Engvall','Forward',77),(34,'Andreas Johnsson','Forward',70),(35,'Kasperi Kapanen','Forward',73),(36,'Ilya Mikheyev','Forward',75),(37,'William Nylander','Forward',72),(38,'Tyson Barrie','Defence',70),(39,'Cody Ceci','Defence',75),(40,'Travis Dermott','Defence',72),(41,'Justin Hol','Defence',75),(42,'Martin Marincin','Defence',76),(43,'Jake Muzzi','Defence',75),(44,'Morgan Rielly','Defence',73),(45,'Calle Rosen','Defence',73),(46,'Rasmus Sandin','Defence',71),(47,'Frederik Andersen','Goalie',76),(48,'Jack Campbell','Goalie',75),(51,'Drake Caggiula','Forward',70),(52,'Ryan Carpenter','Forward',72),(53,'Kirby Dach','Forward',76),(54,'Matthew Highmore','Forward',71),(55,'David Kampf','Forward',74),(56,'Andrew Shaw','Forward',71),(57,'Zack Smith','Forward',74),(58,'Dylan Strome','Forward',75),(59,'Jonathan Toews','Forward',74),(60,'Brandon Hagel','Defence',71),(61,'Dominik Kubali','Defence',74),(62,'Alex Nylander','Defence',73),(63,'Brandon Saad','Defence',73),(64,'Alex DeBrincat','Defence',67),(65,'Patrick Kane','Defence',70),(66,'Nicolas Beaudin','Defence',71),(67,'Adam Boqvist','Defence',71),(68,'Lucas Carlsson','Defence',72),(69,'Duncan Keit','Defence',73),(70,'Slater Koekkoek','Defence',74),(71,'Olli Maatt','Defence',74),(72,'Connor Murph','Defence',76),(73,'Brent Seabroo','Defence',75),(74,'Nick Seeler','Defence',74),(75,'Calvin de Haan','Defence',73),(76,'Corey Crawford','Goalie',74),(77,'Malcolm Subban','Goalie',74),(79,'Patrice Bergeron','Forward',73),(80,'Anders Bjork','Forward',72),(81,'Anton Blidh','Forward',72),(82,'Brandon Carlo','Defence',77),(83,'Zdeno Chara','Defence',81),(84,'Connor Clifton','Defence',71),(85,'Charlie Coyle','Forward',75),(86,'Jake DeBrusk','Forward',72),(87,'Matt Grzelcyk','Defence',69),(88,'Jaroslav Halak','Goalie',71),(89,'Ondrej Kase','Forward',71),(90,'David Krejci','Forward',72),(91,'Torey Krug','Defence',69),(92,'Sean Kuraly','Forward',74),(93,'Jeremy Lauzon','Defence',71),(94,'Par Lindholm','Forward',72),(95,'Brad Marchand','Forward',69),(96,'Charlie McAvoy','Defence',72),(97,'John Moore','Defence',74),(98,'Joakim Nordstrom','Forward',73),(99,'David Pastrnak','Forward',72),(100,'Tuukka Rask','Goalie',75),(101,'Nick Ritchie','Forward',74),(102,'Chris Wagner','Forward',72),(104,'Pavel Buchnevich','Forward',75),(105,'Filip Chytil','Forward',74),(106,'Anthony DeAngelo','Defence',71),(107,'Phillip Di Giuseppe','Forward',72),(108,'Jesper Fast','Forward',73),(109,'Steven Fogarty','Forward',75),(110,'Adam Fox','Defence',70),(111,'Julien Gauthier','Forward',76),(112,'Alexandar Georgiev','Goalie',73),(113,'Brett Howden','Forward',75),(114,'Kaapo Kakko','Forward',73),(115,'Chris Kreider','Forward',75),(116,'Brendan Lemieux','Forward',73),(117,'Ryan Lindgren','Defence',72),(118,'Henrik Lundqvist','Goalie',73),(119,'Greg McKegg','Forward',72),(120,'Artemi Panarin','Forward',71),(121,'Igor Shesterkin','Goalie',74),(122,'Brendan Smith','Defence',74),(123,'Marc Staal','Defence',76),(124,'Ryan Strome','Forward',73),(125,'Jacob Trouba','Defence',75),(126,'Mika Zibanejad','Forward',74),(129,'Justin Abdelkader','Forward',74),(130,'Jonathan Bernier','Goalie',72),(131,'Tyler Bertuzzi','Forward',73),(132,'Alex Biega','Defence',70),(133,'Madison Bowey','Defence',74),(134,'Trevor Daley','Defence',71),(135,'Christoffer Ehn','Forward',75),(136,'Jonathan Ericsson','Defence',76),(137,'Adam Erne','Forward',73),(138,'Robby Fabbri','Forward',70),(139,'Valtteri Filppula','Forward',72),(140,'Sam Gagner','Forward',71),(141,'Luke Glendening','Forward',71),(142,'Cody Goloubef','Defence',73),(143,'Darren Helm','Forward',72),(144,'Jimmy Howard','Goalie',73),(145,'Filip Hronek','Defence',72),(146,'Dylan Larkin','Forward',73),(147,'Gustav Lindstrom','Defence',74),(148,'Anthony Mantha','Forward',77),(149,'Patrik Nemeth','Defence',75),(150,'Frans Nielsen','Forward',73),(151,'Brendan Perlini','Forward',75),(152,'Dmytro Timashov','Forward',70);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `player_stats`
--

LOCK TABLES `player_stats` WRITE;
/*!40000 ALTER TABLE `player_stats` DISABLE KEYS */;
INSERT INTO `player_stats` VALUES (1,'Paul Byron','2017-18','Montreal Canadiens',82,35,21,15,1322.00,'23'),(1,'Paul Byron','2018-19','Montreal Canadiens',56,31,18,16,816.00,'17'),(2,'Phillip Danault','2017-18','Montreal Canadiens',52,25,10,17,863.00,'34'),(2,'Phillip Danault','2018-19','Montreal Canadiens',81,53,13,41,1440.00,'39'),(3,'Max Domi','2018-19','Montreal Canadiens',82,72,30,44,1425.00,'80'),(4,'Jonathan Drouin','2017-18','Montreal Canadiens',77,46,17,33,1355.00,'30'),(4,'Jonathan Drouin','2018-19','Montreal Canadiens',81,53,21,35,1371.00,'26'),(7,'Jordan Weal','2018-19','Montreal Canadiens',16,10,7,6,250.00,'2'),(8,'Charles Hudon','2017-18','Montreal Canadiens',72,30,11,20,1010.00,'38'),(8,'Charles Hudon','2018-19','Montreal Canadiens',32,5,3,2,374.00,'16'),(9,'Artturi Lehkonen','2017-18','Montreal Canadiens',66,21,15,9,1088.00,'20'),(9,'Artturi Lehkonen','2018-19','Montreal Canadiens',82,31,15,20,1276.00,'32'),(10,'Tomas Tatar','2018-19','Montreal Canadiens',80,58,29,33,1313.00,'34'),(11,'Joel Armia','2018-19','Montreal Canadiens',57,23,15,10,900.00,'14'),(12,'Brendan Gallagher','2017-18','Montreal Canadiens',82,54,35,23,1325.00,'34'),(12,'Brendan Gallagher','2018-19','Montreal Canadiens',82,52,37,19,1345.00,'49'),(13,'Dale Weise','2018-19','Montreal Canadiens',9,0,0,0,91.00,'4'),(14,'Karl Alzner','2017-18','Montreal Canadiens',82,12,1,11,1647.00,'40'),(14,'Karl Alzner','2018-19','Montreal Canadiens',9,1,0,1,156.00,'2'),(16,'Christian Folin','2018-19','Montreal Canadiens',19,4,0,4,301.00,'11'),(17,'Brett Kulak','2018-19','Montreal Canadiens',57,17,9,11,1017.00,'31'),(18,'Victor Mete','2017-18','Montreal Canadiens',49,7,0,7,764.00,'4'),(18,'Victor Mete','2018-19','Montreal Canadiens',71,13,0,13,1262.00,'6'),(19,'Xavier Ouellet','2018-19','Montreal Canadiens',19,3,0,3,323.00,'13'),(20,'Jeff Petry','2017-18','Montreal Canadiens',82,42,14,40,1927.00,'28'),(20,'Jeff Petry','2018-19','Montreal Canadiens',82,46,17,33,1896.00,'28'),(21,'Shea Weber','2017-18','Montreal Canadiens',26,16,7,10,659.00,'14'),(21,'Shea Weber','2018-19','Montreal Canadiens',58,33,17,19,1362.00,'28'),(22,'Charlie Lindgren','2017-18','Montreal Canadiens',0,0,0,0,0.00,'0'),(22,'Charlie Lindgren','2018-19','Montreal Canadiens',1,0,0,0,65.00,'0'),(23,'Carey Price','2017-18','Montreal Canadiens',49,0,0,0,2855.00,'0'),(23,'Carey Price','2018-19','Montreal Canadiens',66,1,0,1,3880.00,'2'),(24,'Frederik Gauthier','2017-18','Toronto Maple Leafs',9,1,0,0,79.00,'0'),(24,'Frederik Gauthier','2018-19','Toronto Maple Leafs',70,14,3,11,586.00,'12'),(25,'Zach Hyman','2017-18','Toronto Maple Leafs',82,40,17,25,1423.00,'37'),(25,'Zach Hyman','2018-19','Toronto Maple Leafs',71,41,25,20,127.00,'65'),(28,'Mitch Marner','2017-18','Toronto Maple Leafs',82,69,24,47,1344.00,'26'),(28,'Mitch Marner','2018-19','Toronto Maple Leafs',82,94,31,68,1625.00,'22'),(29,'Auston Matthews','2017-18','Toronto Maple Leafs',62,63,38,29,1124.00,'12'),(29,'Auston Matthews','2018-19','Toronto Maple Leafs',68,73,42,36,1262.00,'12'),(31,'John Tavares','2018-19','Toronto Maple Leafs',82,88,55,41,1565.00,'34'),(34,'Andreas Johnsson','2017-18','Toronto Maple Leafs',9,3,2,1,105.00,'0'),(34,'Andreas Johnsson','2018-19','Toronto Maple Leafs',73,43,23,23,998.00,'32'),(35,'Kasperi Kapanen','2017-18','Toronto Maple Leafs',38,9,8,2,427.00,'4'),(35,'Kasperi Kapanen','2018-19','Toronto Maple Leafs',78,44,23,24,1296.00,'27'),(37,'William Nylander','2017-18','Toronto Maple Leafs',82,61,28,41,1368.00,'10'),(37,'William Nylander','2018-19','Toronto Maple Leafs',54,27,7,20,838.00,'16'),(40,'Travis Dermott','2017-18','Toronto Maple Leafs',37,13,1,12,592.00,'8'),(40,'Travis Dermott','2018-19','Toronto Maple Leafs',64,17,4,13,1108.00,'22'),(42,'Martin Marincin','2017-18','Toronto Maple Leafs',2,0,0,0,33.00,'2'),(42,'Martin Marincin','2018-19','Toronto Maple Leafs',24,5,1,4,365.00,'12'),(44,'Morgan Rielly','2017-18','Toronto Maple Leafs',76,52,6,46,1642.00,'14'),(44,'Morgan Rielly','2018-19','Toronto Maple Leafs',82,72,25,52,1896.00,'14'),(45,'Calle Rosen','2017-18','Toronto Maple Leafs',4,1,0,1,51.00,'4'),(45,'Calle Rosen','2018-19','Toronto Maple Leafs',4,1,0,0,67.00,'0'),(47,'Frederik Andersen','2017-18','Toronto Maple Leafs',66,1,0,1,3889.00,'2'),(47,'Frederik Andersen','2018-19','Toronto Maple Leafs',60,1,0,1,3510.00,'2'),(51,'Drake Caggiula','2018-19','Chicago Blackhawks',26,12,5,7,386.00,'12'),(54,'Matthew Highmore','2017-18','Chicago Blackhawks',13,2,0,0,158.00,'0'),(55,'David Kampf','2017-18','Chicago Blackhawks',46,11,4,7,589.00,'12'),(55,'David Kampf','2018-19','Chicago Blackhawks',63,19,4,15,877.00,'14'),(58,'Dylan Strome','2018-19','Chicago Blackhawks',58,51,19,34,989.00,'14'),(59,'Jonathan Toews','2017-18','Chicago Blackhawks',74,52,22,32,1457.00,'47'),(59,'Jonathan Toews','2018-19','Chicago Blackhawks',82,81,40,46,1723.00,'40'),(63,'Brandon Saad','2017-18','Chicago Blackhawks',82,35,26,17,1435.00,'14'),(63,'Brandon Saad','2018-19','Chicago Blackhawks',0,0,0,0,0.00,'0'),(64,'Alex DeBrincat','2017-18','Chicago Blackhawks',82,52,29,24,1214.00,'6'),(64,'Alex DeBrincat','2018-19','Chicago Blackhawks',82,76,44,35,1451.00,'15'),(65,'Patrick Kane','2017-18','Chicago Blackhawks',0,0,0,0,0.00,'0'),(65,'Patrick Kane','2018-19','Chicago Blackhawks',81,110,51,67,1822.00,'22'),(70,'Slater Koekkoek','2018-19','Chicago Blackhawks',22,5,1,4,362.00,'10'),(76,'Corey Crawford','2017-18','Chicago Blackhawks',28,0,0,0,1584.00,'0'),(76,'Corey Crawford','2018-19','Chicago Blackhawks',39,4,0,4,2213.00,'0'),(79,'Patrice Bergeron','2017-18','Boston Bruins',64,63,36,33,1244.00,'26'),(79,'Patrice Bergeron','2018-19','Boston Bruins',65,79,31,47,1200.00,'30'),(80,'Anders Bjork','2017-18','Boston Bruins',30,12,4,8,370.00,'6'),(80,'Anders Bjork','2018-19','Boston Bruins',20,3,1,2,236.00,'2'),(81,'Anton Blidh','2017-18','Boston Bruins',1,0,0,0,10.00,'0'),(81,'Anton Blidh','2018-19','Boston Bruins',1,0,0,0,14.00,'0'),(82,'Brandon Carlo','2017-18','Boston Bruins',76,6,0,6,1462.00,'45'),(82,'Brandon Carlo','2018-19','Boston Bruins',72,10,2,8,1506.00,'47'),(83,'Zdeno Chara','2017-18','Boston Bruins',73,24,10,17,1672.00,'60'),(83,'Zdeno Chara','2018-19','Boston Bruins',62,14,7,9,1307.00,'57'),(84,'Connor Clifton','2018-19','Boston Bruins',19,1,0,1,336.00,'15'),(85,'Charlie Coyle','2018-19','Boston Bruins',21,6,2,4,336.00,'4'),(86,'Jake DeBrusk','2017-18','Boston Bruins',70,43,21,27,1006.00,'19'),(86,'Jake DeBrusk','2018-19','Boston Bruins',68,42,31,15,1099.00,'18'),(87,'Matt Grzelcyk','2017-18','Boston Bruins',61,15,3,12,1021.00,'22'),(87,'Matt Grzelcyk','2018-19','Boston Bruins',66,18,3,15,1263.00,'68'),(88,'Jaroslav Halak','2018-19','Boston Bruins',40,4,0,4,2308.00,'0'),(90,'David Krejci','2017-18','Boston Bruins',64,44,19,27,1080.00,'18'),(90,'David Krejci','2018-19','Boston Bruins',81,73,24,53,1432.00,'16'),(91,'Torey Krug','2017-18','Boston Bruins',76,59,18,45,1551.00,'36'),(91,'Torey Krug','2018-19','Boston Bruins',64,53,8,37,1363.00,'33'),(92,'Sean Kuraly','2017-18','Boston Bruins',75,14,7,8,919.00,'40'),(92,'Sean Kuraly','2018-19','Boston Bruins',71,21,11,13,978.00,'38'),(93,'Jeremy Lauzon','2018-19','Boston Bruins',16,1,2,0,249.00,'2'),(95,'Brad Marchand','2017-18','Boston Bruins',68,85,42,51,1341.00,'63'),(95,'Brad Marchand','2018-19','Boston Bruins',79,100,45,64,1550.00,'96'),(96,'Charlie McAvoy','2017-18','Boston Bruins',63,32,9,25,1395.00,'53'),(96,'Charlie McAvoy','2018-19','Boston Bruins',54,28,10,21,1197.00,'45'),(97,'John Moore','2018-19','Boston Bruins',61,13,5,9,1145.00,'26'),(98,'Joakim Nordstrom','2018-19','Boston Bruins',70,13,10,5,944.00,'13'),(99,'David Pastrnak','2017-18','Boston Bruins',82,80,40,45,1473.00,'37'),(99,'David Pastrnak','2018-19','Boston Bruins',66,81,42,43,1238.00,'32'),(100,'Tuukka Rask','2017-18','Boston Bruins',54,2,0,2,3173.00,'4'),(100,'Tuukka Rask','2018-19','Boston Bruins',46,2,0,2,2635.00,'4'),(102,'Chris Wagner','2018-19','Boston Bruins',76,19,13,7,1022.00,'51'),(104,'Pavel Buchnevich','2017-18','New York Rangers',74,43,18,29,1111.00,'20'),(104,'Pavel Buchnevich','2018-19','New York Rangers',64,38,22,17,971.00,'13'),(105,'Filip Chytil','2017-18','New York Rangers',9,3,1,2,122.00,'4'),(105,'Filip Chytil','2018-19','New York Rangers',75,23,13,12,1034.00,'8'),(106,'Anthony DeAngelo','2017-18','New York Rangers',32,8,0,8,530.00,'11'),(106,'Anthony DeAngelo','2018-19','New York Rangers',61,30,4,26,1179.00,'77'),(108,'Jesper Fast','2017-18','New York Rangers',71,33,13,20,1057.00,'26'),(108,'Jesper Fast','2018-19','New York Rangers',66,20,9,12,1038.00,'26'),(109,'Steven Fogarty','2017-18','New York Rangers',1,0,0,0,12.00,'2'),(109,'Steven Fogarty','2018-19','New York Rangers',10,0,0,0,78.00,'0'),(112,'Alexandar Georgiev','2017-18','New York Rangers',10,0,0,0,515.00,'0'),(112,'Alexandar Georgiev','2018-19','New York Rangers',33,2,0,2,1874.00,'2'),(113,'Brett Howden','2018-19','New York Rangers',66,23,7,17,986.00,'14'),(115,'Chris Kreider','2017-18','New York Rangers',58,37,16,21,906.00,'44'),(115,'Chris Kreider','2018-19','New York Rangers',79,52,15,28,1375.00,'57'),(116,'Brendan Lemieux','2018-19','New York Rangers',19,6,3,3,244.00,'44'),(117,'Ryan Lindgren','2018-19','New York Rangers',5,0,0,0,73.00,'8'),(118,'Henrik Lundqvist','2017-18','New York Rangers',63,1,0,1,3505.00,'0'),(118,'Henrik Lundqvist','2018-19','New York Rangers',52,3,0,3,3089.00,'0'),(122,'Brendan Smith','2017-18','New York Rangers',44,8,1,7,755.00,'69'),(122,'Brendan Smith','2018-19','New York Rangers',63,13,4,9,964.00,'71'),(123,'Marc Staal','2017-18','New York Rangers',72,8,1,7,1334.00,'18'),(123,'Marc Staal','2018-19','New York Rangers',79,13,3,10,1534.00,'32'),(124,'Ryan Strome','2018-19','New York Rangers',63,33,20,15,1002.00,'50'),(126,'Mika Zibanejad','2017-18','New York Rangers',0,0,0,0,0.00,'0'),(126,'Mika Zibanejad','2018-19','New York Rangers',82,74,35,44,1686.00,'47'),(129,'Justin Abdelkader','2017-18','Detroit Red Wings',75,35,13,22,1241.00,'78'),(129,'Justin Abdelkader','2018-19','Detroit Red Wings',71,19,6,13,1093.00,'38'),(130,'Jonathan Bernier','2018-19','Detroit Red Wings',35,0,0,0,1860.00,'0'),(131,'Tyler Bertuzzi','2017-18','Detroit Red Wings',48,24,8,17,691.00,'39'),(131,'Tyler Bertuzzi','2018-19','Detroit Red Wings',73,47,25,26,1206.00,'36'),(133,'Madison Bowey','2018-19','Detroit Red Wings',17,4,1,3,309.00,'8'),(134,'Trevor Daley','2017-18','Detroit Red Wings',77,16,13,7,1594.00,'36'),(134,'Trevor Daley','2018-19','Detroit Red Wings',44,8,3,6,817.00,'12'),(135,'Christoffer Ehn','2018-19','Detroit Red Wings',60,9,4,6,637.00,'6'),(136,'Jonathan Ericsson','2017-18','Detroit Red Wings',81,13,3,10,1564.00,'47'),(136,'Jonathan Ericsson','2018-19','Detroit Red Wings',52,5,4,2,895.00,'35'),(141,'Luke Glendening','2017-18','Detroit Red Wings',69,19,13,8,911.00,'17'),(141,'Luke Glendening','2018-19','Detroit Red Wings',78,23,11,13,1231.00,'15'),(143,'Darren Helm','2017-18','Detroit Red Wings',75,31,13,18,1167.00,'39'),(143,'Darren Helm','2018-19','Detroit Red Wings',61,17,7,10,889.00,'20'),(144,'Jimmy Howard','2017-18','Detroit Red Wings',60,1,0,1,3368.00,'10'),(144,'Jimmy Howard','2018-19','Detroit Red Wings',55,1,0,1,3054.00,'2'),(145,'Filip Hronek','2018-19','Detroit Red Wings',46,23,5,15,918.00,'30'),(146,'Dylan Larkin','2017-18','Detroit Red Wings',82,63,20,47,1627.00,'61'),(146,'Dylan Larkin','2018-19','Detroit Red Wings',76,73,36,41,1660.00,'75'),(148,'Anthony Mantha','2017-18','Detroit Red Wings',80,48,26,24,1384.00,'52'),(148,'Anthony Mantha','2018-19','Detroit Red Wings',67,48,26,23,1194.00,'30'),(150,'Frans Nielsen','2017-18','Detroit Red Wings',79,33,19,17,1250.00,'14'),(150,'Frans Nielsen','2018-19','Detroit Red Wings',72,35,14,25,1201.00,'14');
/*!40000 ALTER TABLE `player_stats` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `plays_in`
--

LOCK TABLES `plays_in` WRITE;
/*!40000 ALTER TABLE `plays_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `plays_in` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `roster`
--

LOCK TABLES `roster` WRITE;
/*!40000 ALTER TABLE `roster` DISABLE KEYS */;
INSERT INTO `roster` VALUES (1,'Paul Byron','2017-18','Montreal Canadiens',12786273.00,41),(1,'Paul Byron','2018-19','Montreal Canadiens',1000000.00,41),(2,'Phillip Danault','2017-18','Montreal Canadiens',3104128.00,24),(2,'Phillip Danault','2018-19','Montreal Canadiens',3000000.00,24),(3,'Max Domi','2018-19','Montreal Canadiens',3150000.00,13),(4,'Jonathan Drouin','2017-18','Montreal Canadiens',7870392.00,92),(4,'Jonathan Drouin','2018-19','Montreal Canadiens',5500000.00,92),(7,'Jordan Weal','2018-19','Montreal Canadiens',768800.00,43),(8,'Charles Hudon','2017-18','Montreal Canadiens',13506043.00,54),(8,'Charles Hudon','2018-19','Montreal Canadiens',650000.00,54),(9,'Artturi Lehkonen','2017-18','Montreal Canadiens',5657877.00,62),(9,'Artturi Lehkonen','2018-19','Montreal Canadiens',925000.00,62),(10,'Tomas Tatar','2017-18','Detroit Red Wings',2477807.00,21),(10,'Tomas Tatar','2018-19','Montreal Canadiens',5500000.00,90),(11,'Joel Armia','2018-19','Montreal Canadiens',70000.00,40),(12,'Brendan Gallagher','2017-18','Montreal Canadiens',4489883.00,11),(12,'Brendan Gallagher','2018-19','Montreal Canadiens',3000000.00,11),(13,'Dale Weise','2018-19','Montreal Canadiens',755044.00,22),(14,'Karl Alzner','2017-18','Montreal Canadiens',4926029.00,22),(14,'Karl Alzner','2018-19','Montreal Canadiens',0.00,27),(16,'Christian Folin','2018-19','Montreal Canadiens',245157.00,32),(17,'Brett Kulak','2018-19','Montreal Canadiens',9000000.00,17),(18,'Victor Mete','2017-18','Montreal Canadiens',13888412.00,53),(18,'Victor Mete','2018-19','Montreal Canadiens',676165.00,53),(19,'Xavier Ouellet','2017-18','Detroit Red Wings',12279817.00,61),(19,'Xavier Ouellet','2018-19','Montreal Canadiens',275000.00,61),(20,'Jeff Petry','2017-18','Montreal Canadiens',13885794.00,26),(20,'Jeff Petry','2018-19','Montreal Canadiens',5000000.00,26),(21,'Shea Weber','2017-18','Montreal Canadiens',412138.00,6),(21,'Shea Weber','2018-19','Montreal Canadiens',6000000.00,6),(22,'Charlie Lindgren','2017-18','Montreal Canadiens',3564771.00,40),(22,'Charlie Lindgren','2018-19','Montreal Canadiens',251601.00,39),(23,'Carey Price','2017-18','Montreal Canadiens',1332931.00,31),(23,'Carey Price','2018-19','Montreal Canadiens',15000000.00,31),(24,'Frederik Gauthier','2017-18','Toronto Maple Leafs',9904456.00,33),(24,'Frederik Gauthier','2018-19','Toronto Maple Leafs',650000.00,33),(25,'Zach Hyman','2017-18','Toronto Maple Leafs',3385471.00,11),(25,'Zach Hyman','2018-19','Toronto Maple Leafs',2000000.00,11),(28,'Mitch Marner','2017-18','Toronto Maple Leafs',10353189.00,16),(28,'Mitch Marner','2018-19','Toronto Maple Leafs',832500.00,16),(29,'Auston Matthews','2017-18','Toronto Maple Leafs',8913507.00,34),(29,'Auston Matthews','2018-19','Toronto Maple Leafs',925000.00,34),(31,'John Tavares','2018-19','Toronto Maple Leafs',15900000.00,91),(34,'Andreas Johnsson','2017-18','Toronto Maple Leafs',9560962.00,18),(34,'Andreas Johnsson','2018-19','Toronto Maple Leafs',787500.00,18),(35,'Kasperi Kapanen','2017-18','Toronto Maple Leafs',14123804.00,24),(35,'Kasperi Kapanen','2018-19','Toronto Maple Leafs',70000.00,24),(37,'William Nylander','2017-18','Toronto Maple Leafs',11687900.00,29),(37,'William Nylander','2018-19','Toronto Maple Leafs',8774193.00,29),(40,'Travis Dermott','2017-18','Toronto Maple Leafs',5013816.00,23),(40,'Travis Dermott','2018-19','Toronto Maple Leafs',832500.00,23),(42,'Martin Marincin','2017-18','Toronto Maple Leafs',6837925.00,52),(42,'Martin Marincin','2018-19','Toronto Maple Leafs',688160.00,52),(44,'Morgan Rielly','2017-18','Toronto Maple Leafs',3614616.00,44),(44,'Morgan Rielly','2018-19','Toronto Maple Leafs',5000000.00,44),(45,'Calle Rosen','2017-18','Toronto Maple Leafs',2385869.00,48),(45,'Calle Rosen','2018-19','Toronto Maple Leafs',31332.00,48),(47,'Frederik Andersen','2017-18','Toronto Maple Leafs',10783711.00,31),(47,'Frederik Andersen','2018-19','Toronto Maple Leafs',5000000.00,31),(48,'Jack Campbell','2017-18','Montreal Canadiens',2014430.00,35),(51,'Drake Caggiula','2018-19','Chicago Blackhawks',790370.00,91),(54,'Matthew Highmore','2017-18','Chicago Blackhawks',383417.00,36),(55,'David Kampf','2017-18','Chicago Blackhawks',12897747.00,64),(55,'David Kampf','2018-19','Chicago Blackhawks',832500.00,64),(56,'Andrew Shaw','2017-18','Montreal Canadiens',11452453.00,65),(56,'Andrew Shaw','2018-19','Montreal Canadiens',4000000.00,65),(58,'Dylan Strome','2018-19','Chicago Blackhawks',595308.00,17),(59,'Jonathan Toews','2017-18','Chicago Blackhawks',13851889.00,19),(59,'Jonathan Toews','2018-19','Chicago Blackhawks',12000000.00,19),(63,'Brandon Saad','2017-18','Chicago Blackhawks',2199271.00,20),(63,'Brandon Saad','2018-19','Chicago Blackhawks',6750000.00,20),(64,'Alex DeBrincat','2017-18','Chicago Blackhawks',766020.00,12),(64,'Alex DeBrincat','2018-19','Chicago Blackhawks',700000.00,12),(65,'Patrick Kane','2017-18','Chicago Blackhawks',9966764.00,88),(65,'Patrick Kane','2018-19','Chicago Blackhawks',12000000.00,88),(70,'Slater Koekkoek','2018-19','Chicago Blackhawks',399986.00,68),(76,'Corey Crawford','2017-18','Chicago Blackhawks',809285.00,50),(76,'Corey Crawford','2018-19','Chicago Blackhawks',6000000.00,50),(79,'Patrice Bergeron','2017-18','Boston Bruins',1541659.00,37),(79,'Patrice Bergeron','2018-19','Boston Bruins',6875000.00,37),(80,'Anders Bjork','2017-18','Boston Bruins',4972379.00,10),(80,'Anders Bjork','2018-19','Boston Bruins',70000.00,10),(81,'Anton Blidh','2017-18','Boston Bruins',7727392.00,81),(81,'Anton Blidh','2018-19','Boston Bruins',80000.00,81),(82,'Brandon Carlo','2017-18','Boston Bruins',388088.00,25),(82,'Brandon Carlo','2018-19','Boston Bruins',70000.00,25),(83,'Zdeno Chara','2017-18','Boston Bruins',12477913.00,33),(83,'Zdeno Chara','2018-19','Boston Bruins',5000000.00,33),(84,'Connor Clifton','2018-19','Boston Bruins',210870.00,75),(85,'Charlie Coyle','2018-19','Boston Bruins',927406.00,13),(86,'Jake Debrusk','2017-18','Boston Bruins',12153354.00,74),(86,'Jake Debrusk','2018-19','Boston Bruins',70000.00,74),(87,'Matt Grzelcyk','2017-18','Boston Bruins',7765038.00,48),(87,'Matt Grzelcyk','2018-19','Boston Bruins',1400000.00,48),(88,'Jaroslav Halak','2018-19','Boston Bruins',3250000.00,41),(90,'David Krejci','2017-18','Boston Bruins',13756842.00,46),(90,'David Krejci','2018-19','Boston Bruins',7500000.00,46),(91,'Torey Krug','2017-18','Boston Bruins',3567615.00,47),(91,'Torey Krug','2018-19','Boston Bruins',5500000.00,47),(92,'Sean Kuraly','2017-18','Boston Bruins',7281637.00,52),(92,'Sean Kuraly','2018-19','Boston Bruins',1300000.00,52),(93,'Jeremy Lauzon','2018-19','Boston Bruins',775000.00,79),(94,'Par Lindholm','2018-19','Toronto Maple Leafs',741484.00,26),(95,'Brad Marchand','2017-18','Boston Bruins',6191714.00,63),(95,'Brad Marchand','2018-19','Boston Bruins',8000000.00,63),(96,'Charlie McAvoy','2017-18','Boston Bruins',6523372.00,73),(96,'Charlie McAvoy','2018-19','Boston Bruins',70000.00,73),(97,'John Moore','2018-19','Boston Bruins',3250000.00,27),(98,'Joakim Nordstrom','2018-19','Boston Bruins',900000.00,20),(99,'David Pastrnak','2017-18','Boston Bruins',11345907.00,88),(99,'David Pastrnak','2018-19','Boston Bruins',8000000.00,88),(100,'Tuukka Rask','2017-18','Boston Bruins',3579837.00,40),(100,'Tuukka Rask','2018-19','Boston Bruins',7000000.00,40),(102,'Chris Wagner','2018-19','Boston Bruins',1250000.00,14),(104,'Pavel Buchnevich','2017-18','New York Rangers',3174274.00,89),(104,'Pavel Buchnevich','2018-19','New York Rangers',832500.00,89),(105,'Filip Chytil','2017-18','New York Rangers',2626501.00,72),(105,'Filip Chytil','2018-19','New York Rangers',925000.00,72),(106,'Anthony DeAngelo','2017-18','New York Rangers',10723277.00,77),(106,'Anthony DeAngelo','2018-19','New York Rangers',832500.00,77),(108,'Jesper Fast','2017-18','New York Rangers',4030737.00,17),(108,'Jesper Fast','2018-19','New York Rangers',1850000.00,17),(109,'Steven Fogarty','2017-18','New York Rangers',10684196.00,38),(109,'Steven Fogarty','2018-19','New York Rangers',70000.00,38),(112,'Alexandar Georgiev','2017-18','New York Rangers',6303418.00,40),(112,'Alexandar Georgiev','2018-19','New York Rangers',698343.00,40),(113,'Brett Howden','2018-19','New York Rangers',832500.00,21),(115,'Chris Kreider','2017-18','New York Rangers',78054.00,20),(115,'Chris Kreider','2018-19','New York Rangers',4500000.00,20),(116,'Brendan Lemieux','2018-19','New York Rangers',183516.00,48),(117,'Ryan Lindgren','2018-19','New York Rangers',70000.00,55),(118,'Henrik Lundqvist','2017-18','New York Rangers',14559967.00,30),(118,'Henrik Lundqvist','2018-19','New York Rangers',7500000.00,30),(122,'Brendan Smith','2017-18','New York Rangers',2869779.00,42),(122,'Brendan Smith','2018-19','New York Rangers',4525000.00,42),(123,'Marc Staal','2017-18','New York Rangers',5000539.00,18),(123,'Marc Staal','2018-19','New York Rangers',6000000.00,18),(124,'Ryan Strome','2018-19','New York Rangers',1174189.00,16),(126,'Mika Zibanejad','2017-18','New York Rangers',13648994.00,93),(126,'Mika Zibanejad','2018-19','New York Rangers',5500000.00,93),(129,'Justin Abdelkader','2017-18','Detroit Red Wings',120350.00,8),(129,'Justin Abdelkader','2018-19','Detroit Red Wings',4750000.00,8),(130,'Jonathan Bernier','2018-19','Detroit Red Wings',3250000.00,45),(131,'Tyler Bertuzzi','2017-18','Detroit Red Wings',10060983.00,59),(131,'Tyler Bertuzzi','2018-19','Detroit Red Wings',1400000.00,59),(133,'Madison Bowey','2018-19','Detroit Red Wings',1000000.00,74),(134,'Trevor Daley','2017-18','Detroit Red Wings',1553222.00,83),(134,'Trevor Daley','2018-19','Detroit Red Wings',2200000.00,83),(135,'Christoffer Ehn','2018-19','Detroit Red Wings',700000.00,70),(136,'Jonathan Ericsson','2017-18','Detroit Red Wings',14257710.00,52),(136,'Jonathan Ericsson','2018-19','Detroit Red Wings',1050000.00,52),(141,'Luke Glendening','2017-18','Detroit Red Wings',3470893.00,41),(141,'Luke Glendening','2018-19','Detroit Red Wings',1700000.00,41),(143,'Darren Helm','2017-18','Detroit Red Wings',13882580.00,43),(143,'Darren Helm','2018-19','Detroit Red Wings',3000000.00,43),(144,'Jimmy Howard','2017-18','Detroit Red Wings',13404812.00,35),(144,'Jimmy Howard','2018-19','Detroit Red Wings',4000000.00,35),(145,'Filip Hronek','2018-19','Detroit Red Wings',700000.00,17),(146,'Dylan Larkin','2017-18','Detroit Red Wings',5419240.00,71),(146,'Dylan Larkin','2018-19','Detroit Red Wings',7000000.00,71),(148,'Anthony Mantha','2017-18','Detroit Red Wings',9149726.00,39),(148,'Anthony Mantha','2018-19','Detroit Red Wings',3300000.00,39),(150,'Frans Nielsen','2017-18','Detroit Red Wings',171443.00,51),(150,'Frans Nielsen','2018-19','Detroit Red Wings',6000000.00,51),(151,'Brendan Perlini','2018-19','Chicago Blackhawks',595308.00,11);
/*!40000 ALTER TABLE `roster` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `season`
--

LOCK TABLES `season` WRITE;
/*!40000 ALTER TABLE `season` DISABLE KEYS */;
INSERT INTO `season` VALUES ('2017-18','2017-10-04','2018-06-07',99000000.00,'Detroit Red Wings'),('2018-19','2018-10-03','2019-06-12',75900000.00,'Toronto Maple Leafs');
/*!40000 ALTER TABLE `season` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `skater_stats`
--

LOCK TABLES `skater_stats` WRITE;
/*!40000 ALTER TABLE `skater_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `skater_stats` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES ('Boston Bruins','Eastern','Atlantic'),('Chicago Blackhawks','Western','Central'),('Detroit Red Wings','Eastern','Atlantic'),('Montreal Canadiens','Eastern','Atlantic'),('New York Rangers','Eastern','Metropolitan'),('Toronto Maple Leafs','Eastern','Atlantic');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `team_standing`
--

LOCK TABLES `team_standing` WRITE;
/*!40000 ALTER TABLE `team_standing` DISABLE KEYS */;
INSERT INTO `team_standing` VALUES ('New York Rangers','2017-18','Metropolitan','Eastern',82,77,9,39,NULL),('Boston Bruins','2017-18','Atlantic','Eastern',82,112,12,20,NULL),('Toronto Maple Leafs','2017-18','Atlantic','Eastern',82,105,7,26,NULL),('Montreal Canadiens','2017-18','Atlantic','Eastern',82,71,13,40,NULL),('Chicago Blackhawks','2017-18','Central','Western',82,76,10,39,NULL),('Detroit Red Wings','2017-18','Atlantic','Eastern',82,73,13,39,NULL),('New York Rangers','2018-19','Metropolitan','Eastern',82,78,14,36,NULL),('Boston Bruins','2018-19','Atlantic','Eastern',82,107,9,24,NULL),('Toronto Maple Leafs','2018-19','Atlantic','Eastern',82,100,8,28,NULL),('Montreal Canadiens','2018-19','Atlantic','Eastern',82,96,8,30,NULL),('Chicago Blackhawks','2018-19','Central','Western',82,84,12,34,NULL),('Detroit Red Wings','2018-19','Atlantic','Eastern',82,74,10,40,NULL);
/*!40000 ALTER TABLE `team_standing` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `works_for`
--

LOCK TABLES `works_for` WRITE;
/*!40000 ALTER TABLE `works_for` DISABLE KEYS */;
INSERT INTO `works_for` VALUES (49,'Sheldon Keefe','Toronto Maple Leafs','2019-11-20',NULL,'Head Coach'),(50,'Claude Julien','Montreal Canadiens','2017-02-14',NULL,'Head Coach'),(78,'Jeremy Colliton','Chicago Blackhawks','2018-11-06',NULL,'Head Coach'),(103,'Bruce Cassidy','Boston Bruins','2017-02-07',NULL,'Head Coach'),(127,'David Quinn','New York Rangers','2018-05-23',NULL,'Head Coach'),(128,'Jeff Blashill','Detroit Red Wings','2014-06-04',NULL,'Head Coach'),(153,'Kyle Dubas','Toronto Maple Leafs','2018-05-11',NULL,'General Manager'),(154,'Stan Bowman','Chicago Blackhawks','2009-07-14',NULL,'General Manager'),(155,'Steve Yzerman','Detroit Red Wings','2019-04-19',NULL,'General Manager'),(156,'Jeff Gorton','New York Rangers','2015-07-01',NULL,'General Manager'),(156,'Jeff Gorton','Boston Bruins','2006-07-15','2007-06-27','General Manager'),(50,'Claude Julien','Boston Bruins','2007-06-22','2017-02-07','Head Coach'),(157,'Marc Bergevin','Montreal Canadiens','2012-05-12',NULL,'General Manager');
/*!40000 ALTER TABLE `works_for` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2020-03-24 20:01:28
