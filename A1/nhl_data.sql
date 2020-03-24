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
-- Dumping data for table `award`
--

LOCK TABLES `award` WRITE;
/*!40000 ALTER TABLE `award` DISABLE KEYS */;
/*!40000 ALTER TABLE `award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `goalie_stats`
--

LOCK TABLES `goalie_stats` WRITE;
/*!40000 ALTER TABLE `goalie_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `goalie_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `hockey_person`
--

LOCK TABLES `hockey_person` WRITE;
/*!40000 ALTER TABLE `hockey_person` DISABLE KEYS */;
INSERT INTO `hockey_person` VALUES (1,'Paul Byron','1989-04-27',30),(2,'Phillip Danault','1993-02-24',27),(3,'Max Domi','1995-03-02',25),(4,'Jonathan Drouin','1995-03-28',24),(5,'Jake Evans','1996-06-02',23),(6,'Nick Suzuki','1999-08-10',20),(7,'Jordan Weal','1992-04-15',27),(8,'Charles Hudon','1994-06-23',25),(9,'Artturi Lehkonen','1995-07-04',24),(10,'Tomas Tatar','1990-12-01',29),(11,'Joel Armia','1993-05-31',26),(12,'Brendan Gallagher','1992-05-06',27),(13,'Dale Weise','1988-08-05',31),(14,'Karl Alzner','1988-09-24',31),(15,'Ben Chiaro','1991-05-09',28),(16,'Christian Folin','1991-02-09',29),(17,'Brett Kulak','1994-01-06',26),(18,'Victor Mete','1998-06-07',21),(19,'Xavier Ouellet','1993-07-29',26),(20,'Jeff Petry','1987-12-09',32),(21,'Shea Weber','1985-08-14',34),(22,'Charlie Lindgren','1993-12-18',26),(23,'Carey Price','1987-08-16',32),(24,'Frederik Gauthier','1995-04-26',24),(25,'Zach Hyman','1992-06-09',27),(26,'Alexander Kerfoot','1994-08-11',25),(27,'Denis Malgin','1997-01-18',23),(28,'Mitch Marner','1997-05-05',22),(29,'Auston Matthews','1997-09-17',22),(30,'Jason Spezza','1983-06-13',36),(31,'John Tavares','1990-09-20',29),(32,'Kyle Clifford','1991-01-13',29),(33,'Pierre Engvall','1996-05-31',23),(34,'Andreas Johnsson','1994-11-21',25),(35,'Kasperi Kapanen','1996-07-23',23),(36,'Ilya Mikheyev','1994-10-10',25),(37,'William Nylander','1996-05-01',23),(38,'Tyson Barrie','1991-07-26',28),(39,'Cody Ceci','1993-12-21',26),(40,'Travis Dermott','1996-12-22',23),(41,'Justin Hol','1992-01-30',28),(42,'Martin Marincin','1992-02-18',28),(43,'Jake Muzzi','1989-02-21',31),(44,'Morgan Rielly','1994-03-09',26),(45,'Calle Rosen','1994-02-02',26),(46,'Rasmus Sandin','2000-03-07',20),(47,'Frederik Andersen','1989-10-02',30),(48,'Jack Campbell','1992-01-09',28),(49,'Sheldon Keefe','1950-01-01',70),(50,'Claude Julien','1950-01-01',70),(51,'Drake Caggiula','1994-06-20',25),(52,'Ryan Carpenter','1991-01-18',29),(53,'Kirby Dach','2001-01-21',19),(54,'Matthew Highmore','1996-02-27',24),(55,'David Kampf','1995-01-12',25),(56,'Andrew Shaw','1991-07-20',28),(57,'Zack Smith','1988-04-05',31),(58,'Dylan Strome','1997-03-07',23),(59,'Jonathan Toews','1988-04-29',31),(60,'Brandon Hagel','1998-08-27',21),(61,'Dominik Kubali','1995-08-21',24),(62,'Alex Nylander','1998-03-02',22),(63,'Brandon Saad','1992-10-27',27),(64,'Alex DeBrincat','1997-12-18',22),(65,'Patrick Kane','1988-11-19',31),(66,'Nicolas Beaudin','1999-10-09',20),(67,'Adam Boqvist','2000-08-15',19),(68,'Lucas Carlsson','1997-07-05',22),(69,'Duncan Keit','1983-07-16',36),(70,'Slater Koekkoek','1994-02-18',26),(71,'Olli Maatt','1994-08-22',25),(72,'Connor Murph','1993-03-26',26),(73,'Brent Seabroo','1985-04-20',34),(74,'Nick Seeler','1993-06-03',26),(75,'Calvin de Haan','1991-05-09',28),(76,'Corey Crawford','1984-12-31',35),(77,'Malcolm Subban','1993-12-21',26),(78,'Jeremy Colliton','1950-01-01',70),(79,'Patrice Bergeron','1985-07-24',34),(80,'Anders Bjork','1996-08-05',23),(81,'Anton Blidh','1995-03-14',24),(82,'Brandon Carlo','1996-11-26',23),(83,'Zdeno Chara','1977-03-18',42),(84,'Connor Clifton','1995-04-28',24),(85,'Charlie Coyle','1992-03-02',27),(86,'Jake DeBrusk','1996-10-17',23),(87,'Matt Grzelcyk','1994-01-05',26),(88,'Jaroslav Halak','1985-05-13',34),(89,'Ondrej Kase','1995-11-08',24),(90,'David Krejci','1986-04-28',33),(91,'Torey Krug','1991-04-12',28),(92,'Sean Kuraly','1993-01-20',27),(93,'Jeremy Lauzon','1997-04-28',22),(94,'Par Lindholm','1991-10-05',28),(95,'Brad Marchand','1988-05-11',31),(96,'Charlie McAvoy','1997-12-21',22),(97,'John Moore','1990-11-19',29),(98,'Joakim Nordstrom','1992-02-25',27),(99,'David Pastrnak','1996-05-25',23),(100,'Tuukka Rask','1987-03-10',32),(101,'Nick Ritchie','1995-12-05',24),(102,'Chris Wagner','1991-05-27',28),(103,'Bruce Cassidy','1950-01-01',70),(104,'Pavel Buchnevich','1995-04-17',24),(105,'Filip Chytil','1999-09-05',20),(106,'Anthony DeAngelo','1995-10-24',24),(107,'Phillip Di Giuseppe','1993-10-09',26),(108,'Jesper Fast','1991-12-02',28),(109,'Steven Fogarty','1993-04-19',26),(110,'Adam Fox','1998-02-17',21),(111,'Julien Gauthier','1997-10-15',22),(112,'Alexandar Georgiev','1996-02-10',23),(113,'Brett Howden','1998-03-28',21),(114,'Kaapo Kakko','2001-02-13',18),(115,'Chris Kreider','1991-04-30',28),(116,'Brendan Lemieux','1996-03-15',23),(117,'Ryan Lindgren','1998-02-11',21),(118,'Henrik Lundqvist','1982-03-02',37),(119,'Greg McKegg','1992-06-17',27),(120,'Artemi Panarin','1991-10-30',28),(121,'Igor Shesterkin','1995-12-30',24),(122,'Brendan Smith','1989-02-08',30),(123,'Marc Staal','1987-01-13',33),(124,'Ryan Strome','1993-07-11',26),(125,'Jacob Trouba','1994-02-26',25),(126,'Mika Zibanejad','1993-04-18',26),(127,'David Quinn','1950-01-01',70),(128,'Jeff Blashill','1950-01-01',70),(129,'Justin Abdelkader','1987-02-25',32),(130,'Jonathan Bernier','1988-08-07',31),(131,'Tyler Bertuzzi','1995-02-24',24),(132,'Alex Biega','1988-04-04',31),(133,'Madison Bowey','1995-04-22',24),(134,'Trevor Daley','1983-10-09',36),(135,'Christoffer Ehn','1996-04-05',23),(136,'Jonathan Ericsson','1984-03-02',35),(137,'Adam Erne','1995-04-20',24),(138,'Robby Fabbri','1996-01-22',24),(139,'Valtteri Filppula','1984-03-20',35),(140,'Sam Gagner','1989-08-10',30),(141,'Luke Glendening','1989-04-28',30),(142,'Cody Goloubef','1989-11-30',30),(143,'Darren Helm','1987-01-21',33),(144,'Jimmy Howard','1984-03-26',35),(145,'Filip Hronek','1997-11-02',22),(146,'Dylan Larkin','1996-07-30',23),(147,'Gustav Lindstrom','1998-10-20',21),(148,'Anthony Mantha','1994-09-16',25),(149,'Patrik Nemeth','1992-02-08',27),(150,'Frans Nielsen','1984-04-24',35),(151,'Brendan Perlini','1996-04-27',23),(152,'Dmytro Timashov','1996-10-01',23),(153,'Kyle Dubas','1982-11-29',34),(154,'Stan Bowman','1973-06-28',46),(155,'Steve Yzerman','1965-05-09',54),(156,'Jeff Gorton','1968-06-06',51),(157,'Marc Bergevin','1965-08-11',54);
/*!40000 ALTER TABLE `hockey_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `match`
--

LOCK TABLES `match` WRITE;
/*!40000 ALTER TABLE `match` DISABLE KEYS */;
/*!40000 ALTER TABLE `match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,'Paul Byron','Forward',68),(2,'Phillip Danault','Forward',72),(3,'Max Domi','Forward',70),(4,'Jonathan Drouin','Forward',71),(5,'Jake Evans','Forward',73),(6,'Nick Suzuki','Forward',71),(7,'Jordan Weal','Forward',69),(8,'Charles Hudon','Forward',70),(9,'Artturi Lehkonen','Forward',72),(10,'Tomas Tatar','Forward',71),(11,'Joel Armia','Forward',75),(12,'Brendan Gallagher','Forward',69),(13,'Dale Weise','Forward',74),(14,'Karl Alzner','Defence',75),(15,'Ben Chiaro','Defence',75),(16,'Christian Folin','Defence',75),(17,'Brett Kulak','Defence',74),(18,'Victor Mete','Defence',69),(19,'Xavier Ouellet','Defence',73),(20,'Jeff Petry','Defence',75),(21,'Shea Weber','Defence',76),(22,'Charlie Lindgren','Goalie',73),(23,'Carey Price','Goalie',75),(24,'Frederik Gauthier','Forward',77),(25,'Zach Hyman','Forward',73),(26,'Alexander Kerfoot','Forward',70),(27,'Denis Malgin','Forward',69),(28,'Mitch Marner','Forward',72),(29,'Auston Matthews','Forward',74),(30,'Jason Spezza','Forward',75),(31,'John Tavares','Forward',73),(32,'Kyle Clifford','Forward',74),(33,'Pierre Engvall','Forward',77),(34,'Andreas Johnsson','Forward',70),(35,'Kasperi Kapanen','Forward',73),(36,'Ilya Mikheyev','Forward',75),(37,'William Nylander','Forward',72),(38,'Tyson Barrie','Defence',70),(39,'Cody Ceci','Defence',75),(40,'Travis Dermott','Defence',72),(41,'Justin Hol','Defence',75),(42,'Martin Marincin','Defence',76),(43,'Jake Muzzi','Defence',75),(44,'Morgan Rielly','Defence',73),(45,'Calle Rosen','Defence',73),(46,'Rasmus Sandin','Defence',71),(47,'Frederik Andersen','Goalie',76),(48,'Jack Campbell','Goalie',75),(51,'Drake Caggiula','Forward',70),(52,'Ryan Carpenter','Forward',72),(53,'Kirby Dach','Forward',76),(54,'Matthew Highmore','Forward',71),(55,'David Kampf','Forward',74),(56,'Andrew Shaw','Forward',71),(57,'Zack Smith','Forward',74),(58,'Dylan Strome','Forward',75),(59,'Jonathan Toews','Forward',74),(60,'Brandon Hagel','Defence',71),(61,'Dominik Kubali','Defence',74),(62,'Alex Nylander','Defence',73),(63,'Brandon Saad','Defence',73),(64,'Alex DeBrincat','Defence',67),(65,'Patrick Kane','Defence',70),(66,'Nicolas Beaudin','Defence',71),(67,'Adam Boqvist','Defence',71),(68,'Lucas Carlsson','Defence',72),(69,'Duncan Keit','Defence',73),(70,'Slater Koekkoek','Defence',74),(71,'Olli Maatt','Defence',74),(72,'Connor Murph','Defence',76),(73,'Brent Seabroo','Defence',75),(74,'Nick Seeler','Defence',74),(75,'Calvin de Haan','Defence',73),(76,'Corey Crawford','Goalie',74),(77,'Malcolm Subban','Goalie',74),(79,'Patrice Bergeron','Forward',73),(80,'Anders Bjork','Forward',72),(81,'Anton Blidh','Forward',72),(82,'Brandon Carlo','Defence',77),(83,'Zdeno Chara','Defence',81),(84,'Connor Clifton','Defence',71),(85,'Charlie Coyle','Forward',75),(86,'Jake DeBrusk','Forward',72),(87,'Matt Grzelcyk','Defence',69),(88,'Jaroslav Halak','Goalie',71),(89,'Ondrej Kase','Forward',71),(90,'David Krejci','Forward',72),(91,'Torey Krug','Defence',69),(92,'Sean Kuraly','Forward',74),(93,'Jeremy Lauzon','Defence',71),(94,'Par Lindholm','Forward',72),(95,'Brad Marchand','Forward',69),(96,'Charlie McAvoy','Defence',72),(97,'John Moore','Defence',74),(98,'Joakim Nordstrom','Forward',73),(99,'David Pastrnak','Forward',72),(100,'Tuukka Rask','Goalie',75),(101,'Nick Ritchie','Forward',74),(102,'Chris Wagner','Forward',72),(104,'Pavel Buchnevich','Forward',75),(105,'Filip Chytil','Forward',74),(106,'Anthony DeAngelo','Defence',71),(107,'Phillip Di Giuseppe','Forward',72),(108,'Jesper Fast','Forward',73),(109,'Steven Fogarty','Forward',75),(110,'Adam Fox','Defence',70),(111,'Julien Gauthier','Forward',76),(112,'Alexandar Georgiev','Goalie',73),(113,'Brett Howden','Forward',75),(114,'Kaapo Kakko','Forward',73),(115,'Chris Kreider','Forward',75),(116,'Brendan Lemieux','Forward',73),(117,'Ryan Lindgren','Defence',72),(118,'Henrik Lundqvist','Goalie',73),(119,'Greg McKegg','Forward',72),(120,'Artemi Panarin','Forward',71),(121,'Igor Shesterkin','Goalie',74),(122,'Brendan Smith','Defence',74),(123,'Marc Staal','Defence',76),(124,'Ryan Strome','Forward',73),(125,'Jacob Trouba','Defence',75),(126,'Mika Zibanejad','Forward',74),(129,'Justin Abdelkader','Forward',74),(130,'Jonathan Bernier','Goalie',72),(131,'Tyler Bertuzzi','Forward',73),(132,'Alex Biega','Defence',70),(133,'Madison Bowey','Defence',74),(134,'Trevor Daley','Defence',71),(135,'Christoffer Ehn','Forward',75),(136,'Jonathan Ericsson','Defence',76),(137,'Adam Erne','Forward',73),(138,'Robby Fabbri','Forward',70),(139,'Valtteri Filppula','Forward',72),(140,'Sam Gagner','Forward',71),(141,'Luke Glendening','Forward',71),(142,'Cody Goloubef','Defence',73),(143,'Darren Helm','Forward',72),(144,'Jimmy Howard','Goalie',73),(145,'Filip Hronek','Defence',72),(146,'Dylan Larkin','Forward',73),(147,'Gustav Lindstrom','Defence',74),(148,'Anthony Mantha','Forward',77),(149,'Patrik Nemeth','Defence',75),(150,'Frans Nielsen','Forward',73),(151,'Brendan Perlini','Forward',75),(152,'Dmytro Timashov','Forward',70);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `player_stats`
--

LOCK TABLES `player_stats` WRITE;
/*!40000 ALTER TABLE `player_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `plays_in`
--

LOCK TABLES `plays_in` WRITE;
/*!40000 ALTER TABLE `plays_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `plays_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `roster`
--

LOCK TABLES `roster` WRITE;
/*!40000 ALTER TABLE `roster` DISABLE KEYS */;
INSERT INTO `roster` VALUES (1,'Paul Byron','2017-18','Montreal Canadiens',12786273.00,41),(1,'Paul Byron','2018-19','Montreal Canadiens',1000000.00,41),(2,'Phillip Danault','2017-18','Montreal Canadiens',3104128.00,24),(2,'Phillip Danault','2018-19','Montreal Canadiens',3000000.00,24),(3,'Max Domi','2018-19','Montreal Canadiens',3150000.00,13),(4,'Jonathan Drouin','2017-18','Montreal Canadiens',7870392.00,92),(4,'Jonathan Drouin','2018-19','Montreal Canadiens',5500000.00,92),(7,'Jordan Weal','2018-19','Montreal Canadiens',768800.00,43),(8,'Charles Hudon','2017-18','Montreal Canadiens',13506043.00,54),(8,'Charles Hudon','2018-19','Montreal Canadiens',650000.00,54),(9,'Artturi Lehkonen','2017-18','Montreal Canadiens',5657877.00,62),(9,'Artturi Lehkonen','2018-19','Montreal Canadiens',925000.00,62),(10,'Tomas Tatar','2017-18','Detroit Red Wings',2477807.00,21),(10,'Tomas Tatar','2018-19','Montreal Canadiens',5500000.00,90),(11,'Joel Armia','2018-19','Montreal Canadiens',70000.00,40),(12,'Brendan Gallagher','2017-18','Montreal Canadiens',4489883.00,11),(12,'Brendan Gallagher','2018-19','Montreal Canadiens',3000000.00,11),(13,'Dale Weise','2018-19','Montreal Canadiens',755044.00,22),(14,'Karl Alzner','2017-18','Montreal Canadiens',4926029.00,22),(14,'Karl Alzner','2018-19','Montreal Canadiens',0.00,27),(16,'Christian Folin','2018-19','Montreal Canadiens',245157.00,32),(17,'Brett Kulak','2018-19','Montreal Canadiens',9000000.00,17),(18,'Victor Mete','2017-18','Montreal Canadiens',13888412.00,53),(18,'Victor Mete','2018-19','Montreal Canadiens',676165.00,53),(19,'Xavier Ouellet','2017-18','Detroit Red Wings',12279817.00,61),(19,'Xavier Ouellet','2018-19','Montreal Canadiens',275000.00,61),(20,'Jeff Petry','2017-18','Montreal Canadiens',13885794.00,26),(20,'Jeff Petry','2018-19','Montreal Canadiens',5000000.00,26),(21,'Shea Weber','2017-18','Montreal Canadiens',412138.00,6),(21,'Shea Weber','2018-19','Montreal Canadiens',6000000.00,6),(22,'Charlie Lindgren','2017-18','Montreal Canadiens',3564771.00,40),(22,'Charlie Lindgren','2018-19','Montreal Canadiens',251601.00,39),(23,'Carey Price','2017-18','Montreal Canadiens',1332931.00,31),(23,'Carey Price','2018-19','Montreal Canadiens',15000000.00,31),(24,'Frederik Gauthier','2017-18','Toronto Maple Leafs',9904456.00,33),(24,'Frederik Gauthier','2018-19','Toronto Maple Leafs',650000.00,33),(25,'Zach Hyman','2017-18','Toronto Maple Leafs',3385471.00,11),(25,'Zach Hyman','2018-19','Toronto Maple Leafs',2000000.00,11),(28,'Mitch Marner','2017-18','Toronto Maple Leafs',10353189.00,16),(28,'Mitch Marner','2018-19','Toronto Maple Leafs',832500.00,16),(29,'Auston Matthews','2017-18','Toronto Maple Leafs',8913507.00,34),(29,'Auston Matthews','2018-19','Toronto Maple Leafs',925000.00,34),(31,'John Tavares','2018-19','Toronto Maple Leafs',15900000.00,91),(34,'Andreas Johnsson','2017-18','Toronto Maple Leafs',9560962.00,18),(34,'Andreas Johnsson','2018-19','Toronto Maple Leafs',787500.00,18),(35,'Kasperi Kapanen','2017-18','Toronto Maple Leafs',14123804.00,24),(35,'Kasperi Kapanen','2018-19','Toronto Maple Leafs',70000.00,24),(37,'William Nylander','2017-18','Toronto Maple Leafs',11687900.00,29),(37,'William Nylander','2018-19','Toronto Maple Leafs',8774193.00,29),(40,'Travis Dermott','2017-18','Toronto Maple Leafs',5013816.00,23),(40,'Travis Dermott','2018-19','Toronto Maple Leafs',832500.00,23),(42,'Martin Marincin','2017-18','Toronto Maple Leafs',6837925.00,52),(42,'Martin Marincin','2018-19','Toronto Maple Leafs',688160.00,52),(44,'Morgan Rielly','2017-18','Toronto Maple Leafs',3614616.00,44),(44,'Morgan Rielly','2018-19','Toronto Maple Leafs',5000000.00,44),(45,'Calle Rosen','2017-18','Toronto Maple Leafs',2385869.00,48),(45,'Calle Rosen','2018-19','Toronto Maple Leafs',31332.00,48),(47,'Frederik Andersen','2017-18','Toronto Maple Leafs',10783711.00,31),(47,'Frederik Andersen','2018-19','Toronto Maple Leafs',5000000.00,31),(48,'Jack Campbell','2017-18','Montreal Canadiens',2014430.00,35),(51,'Drake Caggiula','2018-19','Chicago Blackhawks',790370.00,91),(54,'Matthew Highmore','2017-18','Chicago Blackhawks',383417.00,36),(55,'David Kampf','2017-18','Chicago Blackhawks',12897747.00,64),(55,'David Kampf','2018-19','Chicago Blackhawks',832500.00,64),(56,'Andrew Shaw','2017-18','Montreal Canadiens',11452453.00,65),(56,'Andrew Shaw','2018-19','Montreal Canadiens',4000000.00,65),(58,'Dylan Strome','2018-19','Chicago Blackhawks',595308.00,17),(59,'Jonathan Toews','2017-18','Chicago Blackhawks',13851889.00,19),(59,'Jonathan Toews','2018-19','Chicago Blackhawks',12000000.00,19),(63,'Brandon Saad','2017-18','Chicago Blackhawks',2199271.00,20),(63,'Brandon Saad','2018-19','Chicago Blackhawks',6750000.00,20),(64,'Alex DeBrincat','2017-18','Chicago Blackhawks',766020.00,12),(64,'Alex DeBrincat','2018-19','Chicago Blackhawks',700000.00,12),(65,'Patrick Kane','2017-18','Chicago Blackhawks',9966764.00,88),(65,'Patrick Kane','2018-19','Chicago Blackhawks',12000000.00,88),(70,'Slater Koekkoek','2018-19','Chicago Blackhawks',399986.00,68),(76,'Corey Crawford','2017-18','Chicago Blackhawks',809285.00,50),(76,'Corey Crawford','2018-19','Chicago Blackhawks',6000000.00,50),(79,'Patrice Bergeron','2017-18','Boston Bruins',1541659.00,37),(79,'Patrice Bergeron','2018-19','Boston Bruins',6875000.00,37),(80,'Anders Bjork','2017-18','Boston Bruins',4972379.00,10),(80,'Anders Bjork','2018-19','Boston Bruins',70000.00,10),(81,'Anton Blidh','2017-18','Boston Bruins',7727392.00,81),(81,'Anton Blidh','2018-19','Boston Bruins',80000.00,81),(82,'Brandon Carlo','2017-18','Boston Bruins',388088.00,25),(82,'Brandon Carlo','2018-19','Boston Bruins',70000.00,25),(83,'Zdeno Chara','2017-18','Boston Bruins',12477913.00,33),(83,'Zdeno Chara','2018-19','Boston Bruins',5000000.00,33),(84,'Connor Clifton','2018-19','Boston Bruins',210870.00,75),(85,'Charlie Coyle','2018-19','Boston Bruins',927406.00,13),(86,'Jake Debrusk','2017-18','Boston Bruins',12153354.00,74),(86,'Jake Debrusk','2018-19','Boston Bruins',70000.00,74),(87,'Matt Grzelcyk','2017-18','Boston Bruins',7765038.00,48),(87,'Matt Grzelcyk','2018-19','Boston Bruins',1400000.00,48),(88,'Jaroslav Halak','2018-19','Boston Bruins',3250000.00,41),(90,'David Krejci','2017-18','Boston Bruins',13756842.00,46),(90,'David Krejci','2018-19','Boston Bruins',7500000.00,46),(91,'Torey Krug','2017-18','Boston Bruins',3567615.00,47),(91,'Torey Krug','2018-19','Boston Bruins',5500000.00,47),(92,'Sean Kuraly','2017-18','Boston Bruins',7281637.00,52),(92,'Sean Kuraly','2018-19','Boston Bruins',1300000.00,52),(93,'Jeremy Lauzon','2018-19','Boston Bruins',775000.00,79),(94,'Par Lindholm','2018-19','Toronto Maple Leafs',741484.00,26),(95,'Brad Marchand','2017-18','Boston Bruins',6191714.00,63),(95,'Brad Marchand','2018-19','Boston Bruins',8000000.00,63),(96,'Charlie McAvoy','2017-18','Boston Bruins',6523372.00,73),(96,'Charlie McAvoy','2018-19','Boston Bruins',70000.00,73),(97,'John Moore','2018-19','Boston Bruins',3250000.00,27),(98,'Joakim Nordstrom','2018-19','Boston Bruins',900000.00,20),(99,'David Pastrnak','2017-18','Boston Bruins',11345907.00,88),(99,'David Pastrnak','2018-19','Boston Bruins',8000000.00,88),(100,'Tuukka Rask','2017-18','Boston Bruins',3579837.00,40),(100,'Tuukka Rask','2018-19','Boston Bruins',7000000.00,40),(102,'Chris Wagner','2018-19','Boston Bruins',1250000.00,14),(104,'Pavel Buchnevich','2017-18','New York Rangers',3174274.00,89),(104,'Pavel Buchnevich','2018-19','New York Rangers',832500.00,89),(105,'Filip Chytil','2017-18','New York Rangers',2626501.00,72),(105,'Filip Chytil','2018-19','New York Rangers',925000.00,72),(106,'Anthony DeAngelo','2017-18','New York Rangers',10723277.00,77),(106,'Anthony DeAngelo','2018-19','New York Rangers',832500.00,77),(108,'Jesper Fast','2017-18','New York Rangers',4030737.00,17),(108,'Jesper Fast','2018-19','New York Rangers',1850000.00,17),(109,'Steven Fogarty','2017-18','New York Rangers',10684196.00,38),(109,'Steven Fogarty','2018-19','New York Rangers',70000.00,38),(112,'Alexandar Georgiev','2017-18','New York Rangers',6303418.00,40),(112,'Alexandar Georgiev','2018-19','New York Rangers',698343.00,40),(113,'Brett Howden','2018-19','New York Rangers',832500.00,21),(115,'Chris Kreider','2017-18','New York Rangers',78054.00,20),(115,'Chris Kreider','2018-19','New York Rangers',4500000.00,20),(116,'Brendan Lemieux','2018-19','New York Rangers',183516.00,48),(117,'Ryan Lindgren','2018-19','New York Rangers',70000.00,55),(118,'Henrik Lundqvist','2017-18','New York Rangers',14559967.00,30),(118,'Henrik Lundqvist','2018-19','New York Rangers',7500000.00,30),(122,'Brendan Smith','2017-18','New York Rangers',2869779.00,42),(122,'Brendan Smith','2018-19','New York Rangers',4525000.00,42),(123,'Marc Staal','2017-18','New York Rangers',5000539.00,18),(123,'Marc Staal','2018-19','New York Rangers',6000000.00,18),(124,'Ryan Strome','2018-19','New York Rangers',1174189.00,16),(126,'Mika Zibanejad','2017-18','New York Rangers',13648994.00,93),(126,'Mika Zibanejad','2018-19','New York Rangers',5500000.00,93),(129,'Justin Abdelkader','2017-18','Detroit Red Wings',120350.00,8),(129,'Justin Abdelkader','2018-19','Detroit Red Wings',4750000.00,8),(130,'Jonathan Bernier','2018-19','Detroit Red Wings',3250000.00,45),(131,'Tyler Bertuzzi','2017-18','Detroit Red Wings',10060983.00,59),(131,'Tyler Bertuzzi','2018-19','Detroit Red Wings',1400000.00,59),(133,'Madison Bowey','2018-19','Detroit Red Wings',1000000.00,74),(134,'Trevor Daley','2017-18','Detroit Red Wings',1553222.00,83),(134,'Trevor Daley','2018-19','Detroit Red Wings',2200000.00,83),(135,'Christoffer Ehn','2018-19','Detroit Red Wings',700000.00,70),(136,'Jonathan Ericsson','2017-18','Detroit Red Wings',14257710.00,52),(136,'Jonathan Ericsson','2018-19','Detroit Red Wings',1050000.00,52),(141,'Luke Glendening','2017-18','Detroit Red Wings',3470893.00,41),(141,'Luke Glendening','2018-19','Detroit Red Wings',1700000.00,41),(143,'Darren Helm','2017-18','Detroit Red Wings',13882580.00,43),(143,'Darren Helm','2018-19','Detroit Red Wings',3000000.00,43),(144,'Jimmy Howard','2017-18','Detroit Red Wings',13404812.00,35),(144,'Jimmy Howard','2018-19','Detroit Red Wings',4000000.00,35),(145,'Filip Hronek','2018-19','Detroit Red Wings',700000.00,17),(146,'Dylan Larkin','2017-18','Detroit Red Wings',5419240.00,71),(146,'Dylan Larkin','2018-19','Detroit Red Wings',7000000.00,71),(148,'Anthony Mantha','2017-18','Detroit Red Wings',9149726.00,39),(148,'Anthony Mantha','2018-19','Detroit Red Wings',3300000.00,39),(150,'Frans Nielsen','2017-18','Detroit Red Wings',171443.00,51),(150,'Frans Nielsen','2018-19','Detroit Red Wings',6000000.00,51),(151,'Brendan Perlini','2018-19','Chicago Blackhawks',595308.00,11);
/*!40000 ALTER TABLE `roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `season`
--

LOCK TABLES `season` WRITE;
/*!40000 ALTER TABLE `season` DISABLE KEYS */;
INSERT INTO `season` VALUES ('2017-18','2017-10-04','2018-06-07',99000000.00,'Detroit Red Wings'),('2018-19','2018-10-03','2019-06-12',75900000.00,'Toronto Maple Leafs');
/*!40000 ALTER TABLE `season` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `skater_stats`
--

LOCK TABLES `skater_stats` WRITE;
/*!40000 ALTER TABLE `skater_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `skater_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES ('Boston Bruins','Eastern','Atlantic'),('Chicago Blackhawks','Western','Central'),('Detroit Red Wings','Eastern','Atlantic'),('Montreal Canadiens','Eastern','Atlantic'),('New York Rangers','Eastern','Metropolitan'),('Toronto Maple Leafs','Eastern','Atlantic');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `team_standing`
--

LOCK TABLES `team_standing` WRITE;
/*!40000 ALTER TABLE `team_standing` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_standing` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2020-03-24  9:02:15
