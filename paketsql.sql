-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.4.32-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- qbcoreframework_469ad4 için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `qbcoreframework_469ad4` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `qbcoreframework_469ad4`;

-- tablo yapısı dökülüyor qbcoreframework_469ad4.apartments
CREATE TABLE IF NOT EXISTS `apartments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `citizenid` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- qbcoreframework_469ad4.apartments: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
REPLACE INTO `apartments` (`id`, `name`, `type`, `label`, `citizenid`) VALUES
	(1, 'apartment23861', 'apartment2', 'Morningwood Blvd 3861', 'XJE80771');

-- tablo yapısı dökülüyor qbcoreframework_469ad4.bank_accounts
CREATE TABLE IF NOT EXISTS `bank_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT NULL,
  `account_balance` int(11) NOT NULL DEFAULT 0,
  `account_type` enum('shared','job','gang') NOT NULL,
  `users` longtext DEFAULT '[]',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `account_name` (`account_name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- qbcoreframework_469ad4.bank_accounts: ~20 rows (yaklaşık) tablosu için veriler indiriliyor
REPLACE INTO `bank_accounts` (`id`, `citizenid`, `account_name`, `account_balance`, `account_type`, `users`) VALUES
	(1, NULL, 'hotdog', 0, 'job', '[]'),
	(2, NULL, 'ambulance', 0, 'job', '[]'),
	(3, NULL, 'unemployed', 0, 'job', '[]'),
	(4, NULL, 'mechanic3', 0, 'job', '[]'),
	(5, NULL, 'bennys', 0, 'job', '[]'),
	(6, NULL, 'lawyer', 0, 'job', '[]'),
	(7, NULL, 'cardealer', 0, 'job', '[]'),
	(8, NULL, 'reporter', 0, 'job', '[]'),
	(9, NULL, 'police', 0, 'job', '[]'),
	(10, NULL, 'vineyard', 0, 'job', '[]'),
	(11, NULL, 'taxi', 0, 'job', '[]'),
	(12, NULL, 'judge', 0, 'job', '[]'),
	(13, NULL, 'mechanic2', 0, 'job', '[]'),
	(14, NULL, 'tow', 0, 'job', '[]'),
	(15, NULL, 'realestate', 0, 'job', '[]'),
	(16, NULL, 'mechanic', 0, 'job', '[]'),
	(17, NULL, 'garbage', 0, 'job', '[]'),
	(18, NULL, 'trucker', 0, 'job', '[]'),
	(19, NULL, 'bus', 0, 'job', '[]'),
	(20, NULL, 'beeker', 0, 'job', '[]');

-- tablo yapısı dökülüyor qbcoreframework_469ad4.bank_statements
CREATE TABLE IF NOT EXISTS `bank_statements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT 'checking',
  `amount` int(11) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `statement_type` enum('deposit','withdraw') DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- qbcoreframework_469ad4.bank_statements: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor qbcoreframework_469ad4.bans
CREATE TABLE IF NOT EXISTS `bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `discord` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `expire` int(11) DEFAULT NULL,
  `bannedby` varchar(255) NOT NULL DEFAULT 'LeBanhammer',
  PRIMARY KEY (`id`),
  KEY `license` (`license`),
  KEY `discord` (`discord`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- qbcoreframework_469ad4.bans: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor qbcoreframework_469ad4.crypto
CREATE TABLE IF NOT EXISTS `crypto` (
  `crypto` varchar(50) NOT NULL DEFAULT 'qbit',
  `worth` int(11) NOT NULL DEFAULT 0,
  `history` text DEFAULT NULL,
  PRIMARY KEY (`crypto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- qbcoreframework_469ad4.crypto: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
REPLACE INTO `crypto` (`crypto`, `worth`, `history`) VALUES
	('qbit', 1001, '[{"PreviousWorth":1000,"NewWorth":1001}]');

-- tablo yapısı dökülüyor qbcoreframework_469ad4.crypto_transactions
CREATE TABLE IF NOT EXISTS `crypto_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- qbcoreframework_469ad4.crypto_transactions: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor qbcoreframework_469ad4.dealers
CREATE TABLE IF NOT EXISTS `dealers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `coords` longtext DEFAULT NULL,
  `time` longtext DEFAULT NULL,
  `createdby` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- qbcoreframework_469ad4.dealers: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor qbcoreframework_469ad4.houselocations
CREATE TABLE IF NOT EXISTS `houselocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `owned` tinyint(1) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tier` tinyint(4) DEFAULT NULL,
  `garage` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- qbcoreframework_469ad4.houselocations: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor qbcoreframework_469ad4.house_plants
CREATE TABLE IF NOT EXISTS `house_plants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building` varchar(50) DEFAULT NULL,
  `stage` int(11) DEFAULT 1,
  `sort` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `food` int(11) DEFAULT 100,
  `health` int(11) DEFAULT 100,
  `progress` int(11) DEFAULT 0,
  `coords` text DEFAULT NULL,
  `plantid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `building` (`building`),
  KEY `plantid` (`plantid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- qbcoreframework_469ad4.house_plants: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor qbcoreframework_469ad4.inventories
CREATE TABLE IF NOT EXISTS `inventories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL,
  `items` longtext DEFAULT '[]',
  PRIMARY KEY (`identifier`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- qbcoreframework_469ad4.inventories: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor qbcoreframework_469ad4.lapraces
CREATE TABLE IF NOT EXISTS `lapraces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `checkpoints` text DEFAULT NULL,
  `records` text DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `raceid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `raceid` (`raceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- qbcoreframework_469ad4.lapraces: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor qbcoreframework_469ad4.occasion_vehicles
CREATE TABLE IF NOT EXISTS `occasion_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `mods` text DEFAULT NULL,
  `occasionid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `occasionId` (`occasionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- qbcoreframework_469ad4.occasion_vehicles: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor qbcoreframework_469ad4.ox_inventory
CREATE TABLE IF NOT EXISTS `ox_inventory` (
  `owner` varchar(60) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `data` longtext DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  UNIQUE KEY `owner` (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- qbcoreframework_469ad4.ox_inventory: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor qbcoreframework_469ad4.phone_gallery
CREATE TABLE IF NOT EXISTS `phone_gallery` (
  `citizenid` varchar(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- qbcoreframework_469ad4.phone_gallery: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor qbcoreframework_469ad4.phone_invoices
CREATE TABLE IF NOT EXISTS `phone_invoices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `society` tinytext DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `sendercitizenid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- qbcoreframework_469ad4.phone_invoices: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor qbcoreframework_469ad4.phone_messages
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `messages` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `number` (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- qbcoreframework_469ad4.phone_messages: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor qbcoreframework_469ad4.phone_tweets
CREATE TABLE IF NOT EXISTS `phone_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `firstName` varchar(25) DEFAULT NULL,
  `lastName` varchar(25) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `url` text DEFAULT NULL,
  `picture` varchar(512) DEFAULT './img/default.png',
  `tweetId` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- qbcoreframework_469ad4.phone_tweets: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor qbcoreframework_469ad4.players
CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `license` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` text NOT NULL,
  `charinfo` text DEFAULT NULL,
  `job` text NOT NULL,
  `gang` text DEFAULT NULL,
  `position` text NOT NULL,
  `metadata` text NOT NULL,
  `inventory` longtext DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`citizenid`),
  KEY `id` (`id`),
  KEY `last_updated` (`last_updated`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- qbcoreframework_469ad4.players: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
REPLACE INTO `players` (`id`, `citizenid`, `cid`, `license`, `name`, `money`, `charinfo`, `job`, `gang`, `position`, `metadata`, `inventory`, `last_updated`) VALUES
	(1, 'XJE80771', 1, 'license:55aee489dfc2c58dd18c7e112c042f7fd40e4314', 'M5//PEEK//RuqeoN', '{"bank":5000,"crypto":0,"cash":1100}', '{"lastname":"asdasd","phone":"7235857253","firstname":"asdasd","nationality":"Afghanistan","cid":1,"gender":0,"birthdate":"2024-11-27","account":"US06QBCore1295669477"}', '{"onduty":false,"grade":{"level":0,"isboss":false,"name":"Freelancer"},"type":"none","isboss":false,"label":"Civilian","payment":10,"name":"unemployed"}', '{"isboss":false,"label":"No Gang","grade":{"level":0,"isboss":false,"name":"Unaffiliated"},"name":"none"}', '{"x":-1287.032958984375,"y":-437.4857177734375,"z":6.195556640625}', '{"ishandcuffed":false,"inlaststand":false,"fingerprint":"bI426r41eis5637","hunger":70.59999999999998,"bloodtype":"O+","phone":[],"thirst":73.40000000000002,"armor":0,"currentapartment":"apartment23861","status":[],"walletid":"QB-25751451","tracker":false,"stress":0,"isdead":false,"callsign":"NO CALLSIGN","phonedata":{"InstalledApps":[],"SerialNumber":63916233},"rep":[],"jailitems":[],"inside":{"apartment":{"apartmentId":"apartment23861","apartmentType":"apartment2"}},"criminalrecord":{"hasRecord":false},"licences":{"driver":true,"business":false,"weapon":false},"injail":0}', '[{"name":"phone","count":1,"slot":12},{"name":"money","count":1100,"slot":18}]', '2024-11-28 06:32:48');

-- tablo yapısı dökülüyor qbcoreframework_469ad4.playerskins
CREATE TABLE IF NOT EXISTS `playerskins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- qbcoreframework_469ad4.playerskins: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
REPLACE INTO `playerskins` (`id`, `citizenid`, `model`, `skin`, `active`) VALUES
	(1, 'XJE80771', '1885233650', '{"moles":{"defaultTexture":0,"texture":0,"defaultItem":-1,"item":-1},"blush":{"defaultTexture":1,"texture":1,"defaultItem":-1,"item":-1},"torso2":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"nose_3":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"ear":{"defaultTexture":0,"texture":0,"defaultItem":-1,"item":-1},"pants":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"nose_0":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"face2":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"nose_2":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"cheek_1":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"shoes":{"defaultTexture":0,"texture":0,"defaultItem":1,"item":1},"bag":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"nose_4":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"chimp_bone_lenght":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"accessory":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"vest":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"face":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"t-shirt":{"defaultTexture":0,"texture":0,"defaultItem":1,"item":1},"makeup":{"defaultTexture":1,"texture":1,"defaultItem":-1,"item":-1},"eye_opening":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"arms":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"eyebrows":{"defaultTexture":1,"texture":1,"defaultItem":-1,"item":-1},"hat":{"defaultTexture":0,"texture":0,"defaultItem":-1,"item":-1},"hair":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"glass":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"neck_thikness":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"facemix":{"defaultSkinMix":0.0,"shapeMix":0,"defaultShapeMix":0.0,"skinMix":0},"chimp_hole":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"chimp_bone_width":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"chimp_bone_lowering":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"decals":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"eyebrown_forward":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"eyebrown_high":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"nose_1":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"jaw_bone_width":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"lips_thickness":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"cheek_3":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"cheek_2":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"eye_color":{"defaultTexture":0,"texture":0,"defaultItem":-1,"item":-1},"nose_5":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"lipstick":{"defaultTexture":1,"texture":1,"defaultItem":-1,"item":-1},"jaw_bone_back_lenght":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"bracelet":{"defaultTexture":0,"texture":0,"defaultItem":-1,"item":-1},"beard":{"defaultTexture":1,"texture":1,"defaultItem":-1,"item":-1},"mask":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"watch":{"defaultTexture":0,"texture":0,"defaultItem":-1,"item":-1},"ageing":{"defaultTexture":0,"texture":0,"defaultItem":-1,"item":-1}}', 1);

-- tablo yapısı dökülüyor qbcoreframework_469ad4.player_contacts
CREATE TABLE IF NOT EXISTS `player_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `iban` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- qbcoreframework_469ad4.player_contacts: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor qbcoreframework_469ad4.player_houses
CREATE TABLE IF NOT EXISTS `player_houses` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `house` varchar(50) NOT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `citizenid` varchar(11) DEFAULT NULL,
  `keyholders` text DEFAULT NULL,
  `decorations` text DEFAULT NULL,
  `stash` text DEFAULT NULL,
  `outfit` text DEFAULT NULL,
  `logout` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `house` (`house`),
  KEY `citizenid` (`citizenid`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- qbcoreframework_469ad4.player_houses: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor qbcoreframework_469ad4.player_mails
CREATE TABLE IF NOT EXISTS `player_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `read` tinyint(4) DEFAULT 0,
  `mailid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `button` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- qbcoreframework_469ad4.player_mails: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor qbcoreframework_469ad4.player_outfits
CREATE TABLE IF NOT EXISTS `player_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `skin` text DEFAULT NULL,
  `outfitId` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `outfitId` (`outfitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- qbcoreframework_469ad4.player_outfits: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor qbcoreframework_469ad4.player_vehicles
CREATE TABLE IF NOT EXISTS `player_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) DEFAULT NULL,
  `citizenid` varchar(11) DEFAULT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `mods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `plate` varchar(8) NOT NULL,
  `fakeplate` varchar(8) DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL,
  `fuel` int(11) DEFAULT 100,
  `engine` float DEFAULT 1000,
  `body` float DEFAULT 1000,
  `state` int(11) DEFAULT 1,
  `depotprice` int(11) NOT NULL DEFAULT 0,
  `drivingdistance` int(50) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `paymentamount` int(11) NOT NULL DEFAULT 0,
  `paymentsleft` int(11) NOT NULL DEFAULT 0,
  `financetime` int(11) NOT NULL DEFAULT 0,
  `glovebox` longtext DEFAULT NULL,
  `trunk` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plate` (`plate`),
  KEY `citizenid` (`citizenid`),
  KEY `license` (`license`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- qbcoreframework_469ad4.player_vehicles: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor qbcoreframework_469ad4.player_warns
CREATE TABLE IF NOT EXISTS `player_warns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `senderIdentifier` varchar(50) DEFAULT NULL,
  `targetIdentifier` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `warnId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- qbcoreframework_469ad4.player_warns: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
