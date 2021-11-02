-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: weapons
-- ------------------------------------------------------
-- Server version	8.0.26-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sdo`
--

DROP TABLE IF EXISTS `sdo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sdo` (
  `uiIndex` int DEFAULT NULL,
  `szWeaponName` varchar(255) DEFAULT NULL,
  `ubWeaponClass` int DEFAULT NULL,
  `ubWeaponType` int DEFAULT NULL,
  `ubCalibre` int DEFAULT NULL,
  `ubReadyTime` int DEFAULT NULL,
  `ubShotsPer4Turns` decimal(19,6) DEFAULT NULL,
  `ubShotsPerBurst` int DEFAULT NULL,
  `ubBurstPenalty` int DEFAULT NULL,
  `ubBulletSpeed` int DEFAULT NULL,
  `ubImpact` int DEFAULT NULL,
  `ubDeadliness` int DEFAULT NULL,
  `bAccuracy` int DEFAULT NULL,
  `ubMagSize` int DEFAULT NULL,
  `usRange` int DEFAULT NULL,
  `usReloadDelay` int DEFAULT NULL,
  `BurstAniDelay` int DEFAULT NULL,
  `ubAttackVolume` int DEFAULT NULL,
  `ubHitVolume` int DEFAULT NULL,
  `sSound` int DEFAULT NULL,
  `sBurstSound` int DEFAULT NULL,
  `sSilencedBurstSound` int DEFAULT NULL,
  `sReloadSound` int DEFAULT NULL,
  `sLocknLoadSound` int DEFAULT NULL,
  `SilencedSound` int DEFAULT NULL,
  `bBurstAP` int DEFAULT NULL,
  `bAutofireShotsPerFiveAP` int DEFAULT NULL,
  `APsToReload` int DEFAULT NULL,
  `SwapClips` int DEFAULT NULL,
  `MaxDistForMessyDeath` int DEFAULT NULL,
  `AutoPenalty` int DEFAULT NULL,
  `NoSemiAuto` int DEFAULT NULL,
  `EasyUnjam` int DEFAULT NULL,
  `APsToReloadManually` int DEFAULT NULL,
  `ManualReloadSound` int DEFAULT NULL,
  `nAccuracy` int DEFAULT NULL,
  `bRecoilX` int DEFAULT NULL,
  `bRecoilY` decimal(19,6) DEFAULT NULL,
  `ubAimLevels` int DEFAULT NULL,
  `ubRecoilDelay` int DEFAULT NULL,
  `Handling` int DEFAULT NULL,
  `usOverheatingJamThreshold` int DEFAULT NULL,
  `usOverheatingDamageThreshold` int DEFAULT NULL,
  `usOverheatingSingleShotTemperature` int DEFAULT NULL,
  `HeavyGun` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdo`
--

LOCK TABLES `sdo` WRITE;
/*!40000 ALTER TABLE `sdo` DISABLE KEYS */;
INSERT INTO `sdo` VALUES (1,'qwqw',1,1,1,1,1.000000,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1.000000,1,1,1,1,4500,4000,NULL);
/*!40000 ALTER TABLE `sdo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-19 20:04:00
