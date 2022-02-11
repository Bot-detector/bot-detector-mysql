-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 07, 2021 at 02:46 AM
-- Server version: 8.0.25-0ubuntu0.20.10.1
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `playerdata`
--
CREATE DATABASE IF NOT EXISTS `playerdata`;
USE `playerdata`;

/*
  API permissions
*/
CREATE TABLE `apiPermissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `permission` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `apiUser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` tinytext NOT NULL,
  `token` tinytext NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_used` datetime DEFAULT NULL,
  `ratelimit` int NOT NULL DEFAULT '100',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `apiUsage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `route` text,
  PRIMARY KEY (`id`),
  KEY `FK_apiUsage_apiUser` (`user_id`),
  CONSTRAINT `FK_apiUsage_apiUser` FOREIGN KEY (`user_id`) REFERENCES `apiUser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=50173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `apiUserPerms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_apiUserPerms_apiUser` (`user_id`),
  KEY `FK_apiUserPerms_apiPermission` (`permission_id`),
  CONSTRAINT `FK_apiUserPerms_apiPermission` FOREIGN KEY (`permission_id`) REFERENCES `apiPermissions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_apiUserPerms_apiUser` FOREIGN KEY (`user_id`) REFERENCES `apiUser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `player_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `token` varchar(50) NOT NULL,
  `request_highscores` tinyint(1) NOT NULL DEFAULT '0',
  `verify_ban` tinyint(1) NOT NULL DEFAULT '0',
  `create_token` tinyint(1) NOT NULL DEFAULT '0',
  `verify_players` tinyint(1) NOT NULL DEFAULT '0',
  `discord_general` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Labels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Unique_label` (`label`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `labelsJagex` (
  `id` int NOT NULL DEFAULT '0',
  `label` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `regionIDNames` (
  `entry_ID` int NOT NULL AUTO_INCREMENT,
  `region_ID` int NOT NULL,
  `z_axis` int DEFAULT '0',
  `region_name` text NOT NULL,
  PRIMARY KEY (`entry_ID`),
  UNIQUE KEY `region_ID` (`region_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*
  tables with references
*/
CREATE TABLE `Players` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `possible_ban` tinyint(1) NOT NULL DEFAULT '0',
  `confirmed_ban` tinyint(1) NOT NULL DEFAULT '0',
  `confirmed_player` tinyint(1) NOT NULL DEFAULT '0',
  `label_id` int NOT NULL DEFAULT '0',
  `label_jagex` int NOT NULL DEFAULT '0',
  `ironman` tinyint DEFAULT NULL,
  `hardcore_ironman` tinyint DEFAULT NULL,
  `ultimate_ironman` tinyint DEFAULT NULL,
  `normalized_name` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Unique_name` (`name`(50)),
  KEY `FK_label_id` (`label_id`),
  KEY `confirmed_ban_idx` (`confirmed_ban`),
  KEY `normal_name_index` (`normalized_name`(50)),
  CONSTRAINT `FK_label_id` FOREIGN KEY (`label_id`) REFERENCES `Labels` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=49350066 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `playerHiscoreData` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ts_date` date DEFAULT NULL,
  `Player_id` int NOT NULL,
  `total` bigint DEFAULT NULL,
  `attack` int DEFAULT NULL,
  `defence` int DEFAULT NULL,
  `strength` int DEFAULT NULL,
  `hitpoints` int DEFAULT NULL,
  `ranged` int DEFAULT NULL,
  `prayer` int DEFAULT NULL,
  `magic` int DEFAULT NULL,
  `cooking` int DEFAULT NULL,
  `woodcutting` int DEFAULT NULL,
  `fletching` int DEFAULT NULL,
  `fishing` int DEFAULT NULL,
  `firemaking` int DEFAULT NULL,
  `crafting` int DEFAULT NULL,
  `smithing` int DEFAULT NULL,
  `mining` int DEFAULT NULL,
  `herblore` int DEFAULT NULL,
  `agility` int DEFAULT NULL,
  `thieving` int DEFAULT NULL,
  `slayer` int DEFAULT NULL,
  `farming` int DEFAULT NULL,
  `runecraft` int DEFAULT NULL,
  `hunter` int DEFAULT NULL,
  `construction` int DEFAULT NULL,
  `league` int DEFAULT NULL,
  `bounty_hunter_hunter` int DEFAULT NULL,
  `bounty_hunter_rogue` int DEFAULT NULL,
  `cs_all` int DEFAULT NULL,
  `cs_beginner` int DEFAULT NULL,
  `cs_easy` int DEFAULT NULL,
  `cs_medium` int DEFAULT NULL,
  `cs_hard` int DEFAULT NULL,
  `cs_elite` int DEFAULT NULL,
  `cs_master` int DEFAULT NULL,
  `lms_rank` int DEFAULT NULL,
  `soul_wars_zeal` int DEFAULT NULL,
  `abyssal_sire` int DEFAULT NULL,
  `alchemical_hydra` int DEFAULT NULL,
  `barrows_chests` int DEFAULT NULL,
  `bryophyta` int DEFAULT NULL,
  `callisto` int DEFAULT NULL,
  `cerberus` int DEFAULT NULL,
  `chambers_of_xeric` int DEFAULT NULL,
  `chambers_of_xeric_challenge_mode` int DEFAULT NULL,
  `chaos_elemental` int DEFAULT NULL,
  `chaos_fanatic` int DEFAULT NULL,
  `commander_zilyana` int DEFAULT NULL,
  `corporeal_beast` int DEFAULT NULL,
  `crazy_archaeologist` int DEFAULT NULL,
  `dagannoth_prime` int DEFAULT NULL,
  `dagannoth_rex` int DEFAULT NULL,
  `dagannoth_supreme` int DEFAULT NULL,
  `deranged_archaeologist` int DEFAULT NULL,
  `general_graardor` int DEFAULT NULL,
  `giant_mole` int DEFAULT NULL,
  `grotesque_guardians` int DEFAULT NULL,
  `hespori` int DEFAULT NULL,
  `kalphite_queen` int DEFAULT NULL,
  `king_black_dragon` int DEFAULT NULL,
  `kraken` int DEFAULT NULL,
  `kreearra` int DEFAULT NULL,
  `kril_tsutsaroth` int DEFAULT NULL,
  `mimic` int DEFAULT NULL,
  `nex` int DEFAULT NULL,
  `nightmare` int DEFAULT NULL,
  `phosanis_nightmare` int DEFAULT '0',
  `obor` int DEFAULT NULL,
  `sarachnis` int DEFAULT NULL,
  `scorpia` int DEFAULT NULL,
  `skotizo` int DEFAULT NULL,
  `tempoross` int DEFAULT NULL,
  `the_gauntlet` int DEFAULT NULL,
  `the_corrupted_gauntlet` int DEFAULT NULL,
  `theatre_of_blood` int DEFAULT NULL,
  `theatre_of_blood_hard` int DEFAULT NULL,
  `thermonuclear_smoke_devil` int DEFAULT NULL,
  `tzkal_zuk` int DEFAULT NULL,
  `tztok_jad` int DEFAULT NULL,
  `venenatis` int DEFAULT NULL,
  `vetion` int DEFAULT NULL,
  `vorkath` int DEFAULT NULL,
  `wintertodt` int DEFAULT NULL,
  `zalcano` int DEFAULT NULL,
  `zulrah` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Unique_player_time` (`timestamp`,`Player_id`),
  UNIQUE KEY `Unique_player_date` (`Player_id`,`ts_date`),
  CONSTRAINT `FK_Players_id` FOREIGN KEY (`Player_id`) REFERENCES `Players` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=610901250 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `playerHiscoreDataLatest` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ts_date` date DEFAULT NULL,
  `Player_id` int NOT NULL,
  `total` bigint DEFAULT NULL,
  `attack` int DEFAULT NULL,
  `defence` int DEFAULT NULL,
  `strength` int DEFAULT NULL,
  `hitpoints` int DEFAULT NULL,
  `ranged` int DEFAULT NULL,
  `prayer` int DEFAULT NULL,
  `magic` int DEFAULT NULL,
  `cooking` int DEFAULT NULL,
  `woodcutting` int DEFAULT NULL,
  `fletching` int DEFAULT NULL,
  `fishing` int DEFAULT NULL,
  `firemaking` int DEFAULT NULL,
  `crafting` int DEFAULT NULL,
  `smithing` int DEFAULT NULL,
  `mining` int DEFAULT NULL,
  `herblore` int DEFAULT NULL,
  `agility` int DEFAULT NULL,
  `thieving` int DEFAULT NULL,
  `slayer` int DEFAULT NULL,
  `farming` int DEFAULT NULL,
  `runecraft` int DEFAULT NULL,
  `hunter` int DEFAULT NULL,
  `construction` int DEFAULT NULL,
  `league` int DEFAULT NULL,
  `bounty_hunter_hunter` int DEFAULT NULL,
  `bounty_hunter_rogue` int DEFAULT NULL,
  `cs_all` int DEFAULT NULL,
  `cs_beginner` int DEFAULT NULL,
  `cs_easy` int DEFAULT NULL,
  `cs_medium` int DEFAULT NULL,
  `cs_hard` int DEFAULT NULL,
  `cs_elite` int DEFAULT NULL,
  `cs_master` int DEFAULT NULL,
  `lms_rank` int DEFAULT NULL,
  `soul_wars_zeal` int DEFAULT NULL,
  `abyssal_sire` int DEFAULT NULL,
  `alchemical_hydra` int DEFAULT NULL,
  `barrows_chests` int DEFAULT NULL,
  `bryophyta` int DEFAULT NULL,
  `callisto` int DEFAULT NULL,
  `cerberus` int DEFAULT NULL,
  `chambers_of_xeric` int DEFAULT NULL,
  `chambers_of_xeric_challenge_mode` int DEFAULT NULL,
  `chaos_elemental` int DEFAULT NULL,
  `chaos_fanatic` int DEFAULT NULL,
  `commander_zilyana` int DEFAULT NULL,
  `corporeal_beast` int DEFAULT NULL,
  `crazy_archaeologist` int DEFAULT NULL,
  `dagannoth_prime` int DEFAULT NULL,
  `dagannoth_rex` int DEFAULT NULL,
  `dagannoth_supreme` int DEFAULT NULL,
  `deranged_archaeologist` int DEFAULT NULL,
  `general_graardor` int DEFAULT NULL,
  `giant_mole` int DEFAULT NULL,
  `grotesque_guardians` int DEFAULT NULL,
  `hespori` int DEFAULT NULL,
  `kalphite_queen` int DEFAULT NULL,
  `king_black_dragon` int DEFAULT NULL,
  `kraken` int DEFAULT NULL,
  `kreearra` int DEFAULT NULL,
  `kril_tsutsaroth` int DEFAULT NULL,
  `mimic` int DEFAULT NULL,
  `nex` int DEFAULT NULL,
  `nightmare` int DEFAULT NULL,
  `phosanis_nightmare` int DEFAULT NULL,
  `obor` int DEFAULT NULL,
  `sarachnis` int DEFAULT NULL,
  `scorpia` int DEFAULT NULL,
  `skotizo` int DEFAULT NULL,
  `Tempoross` int NOT NULL,
  `the_gauntlet` int DEFAULT NULL,
  `the_corrupted_gauntlet` int DEFAULT NULL,
  `theatre_of_blood` int DEFAULT NULL,
  `theatre_of_blood_hard` int DEFAULT NULL,
  `thermonuclear_smoke_devil` int DEFAULT NULL,
  `tzkal_zuk` int DEFAULT NULL,
  `tztok_jad` int DEFAULT NULL,
  `venenatis` int DEFAULT NULL,
  `vetion` int DEFAULT NULL,
  `vorkath` int DEFAULT NULL,
  `wintertodt` int DEFAULT NULL,
  `zalcano` int DEFAULT NULL,
  `zulrah` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Unique_player` (`Player_id`) USING BTREE,
  CONSTRAINT `FK_latest_player` FOREIGN KEY (`Player_id`) REFERENCES `Players` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=380791466 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `playerHiscoreDataXPChange` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ts_date` date DEFAULT NULL,
  `Player_id` int NOT NULL,
  `total` bigint DEFAULT NULL,
  `attack` int DEFAULT NULL,
  `defence` int DEFAULT NULL,
  `strength` int DEFAULT NULL,
  `hitpoints` int DEFAULT NULL,
  `ranged` int DEFAULT NULL,
  `prayer` int DEFAULT NULL,
  `magic` int DEFAULT NULL,
  `cooking` int DEFAULT NULL,
  `woodcutting` int DEFAULT NULL,
  `fletching` int DEFAULT NULL,
  `fishing` int DEFAULT NULL,
  `firemaking` int DEFAULT NULL,
  `crafting` int DEFAULT NULL,
  `smithing` int DEFAULT NULL,
  `mining` int DEFAULT NULL,
  `herblore` int DEFAULT NULL,
  `agility` int DEFAULT NULL,
  `thieving` int DEFAULT NULL,
  `slayer` int DEFAULT NULL,
  `farming` int DEFAULT NULL,
  `runecraft` int DEFAULT NULL,
  `hunter` int DEFAULT NULL,
  `construction` int DEFAULT NULL,
  `league` int DEFAULT NULL,
  `bounty_hunter_hunter` int DEFAULT NULL,
  `bounty_hunter_rogue` int DEFAULT NULL,
  `cs_all` int DEFAULT NULL,
  `cs_beginner` int DEFAULT NULL,
  `cs_easy` int DEFAULT NULL,
  `cs_medium` int DEFAULT NULL,
  `cs_hard` int DEFAULT NULL,
  `cs_elite` int DEFAULT NULL,
  `cs_master` int DEFAULT NULL,
  `lms_rank` int DEFAULT NULL,
  `soul_wars_zeal` int DEFAULT NULL,
  `abyssal_sire` int DEFAULT NULL,
  `alchemical_hydra` int DEFAULT NULL,
  `barrows_chests` int DEFAULT NULL,
  `bryophyta` int DEFAULT NULL,
  `callisto` int DEFAULT NULL,
  `cerberus` int DEFAULT NULL,
  `chambers_of_xeric` int DEFAULT NULL,
  `chambers_of_xeric_challenge_mode` int DEFAULT NULL,
  `chaos_elemental` int DEFAULT NULL,
  `chaos_fanatic` int DEFAULT NULL,
  `commander_zilyana` int DEFAULT NULL,
  `corporeal_beast` int DEFAULT NULL,
  `crazy_archaeologist` int DEFAULT NULL,
  `dagannoth_prime` int DEFAULT NULL,
  `dagannoth_rex` int DEFAULT NULL,
  `dagannoth_supreme` int DEFAULT NULL,
  `deranged_archaeologist` int DEFAULT NULL,
  `general_graardor` int DEFAULT NULL,
  `giant_mole` int DEFAULT NULL,
  `grotesque_guardians` int DEFAULT NULL,
  `hespori` int DEFAULT NULL,
  `kalphite_queen` int DEFAULT NULL,
  `king_black_dragon` int DEFAULT NULL,
  `kraken` int DEFAULT NULL,
  `kreearra` int DEFAULT NULL,
  `kril_tsutsaroth` int DEFAULT NULL,
  `mimic` int DEFAULT NULL,
  `nex` int DEFAULT NULL,
  `nightmare` int DEFAULT NULL,
  `obor` int DEFAULT NULL,
  `phosanis_nightmare` int DEFAULT NULL,
  `sarachnis` int DEFAULT NULL,
  `scorpia` int DEFAULT NULL,
  `skotizo` int DEFAULT NULL,
  `Tempoross` int DEFAULT NULL,
  `the_gauntlet` int DEFAULT NULL,
  `the_corrupted_gauntlet` int DEFAULT NULL,
  `theatre_of_blood` int DEFAULT NULL,
  `theatre_of_blood_hard` int DEFAULT NULL,
  `thermonuclear_smoke_devil` int DEFAULT NULL,
  `tzkal_zuk` int DEFAULT NULL,
  `tztok_jad` int DEFAULT NULL,
  `venenatis` int DEFAULT NULL,
  `vetion` int DEFAULT NULL,
  `vorkath` int DEFAULT NULL,
  `wintertodt` int DEFAULT NULL,
  `zalcano` int DEFAULT NULL,
  `zulrah` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_phd_xp_pl` (`Player_id`),
  CONSTRAINT `fk_phd_xp_pl` FOREIGN KEY (`Player_id`) REFERENCES `Players` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=310304838 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `PlayersChanges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ChangeDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `player_id` int NOT NULL,
  `name` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `possible_ban` tinyint(1) NOT NULL DEFAULT '0',
  `confirmed_ban` tinyint(1) NOT NULL DEFAULT '0',
  `confirmed_player` tinyint(1) NOT NULL DEFAULT '0',
  `label_id` int NOT NULL DEFAULT '0',
  `label_jagex` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_label_id` (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10532859 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Predictions` (
  `name` varchar(12) DEFAULT NULL,
  `prediction` varchar(50) DEFAULT NULL,
  `id` int DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `Predicted_confidence` decimal(5,2) DEFAULT NULL,
  `Real_Player` decimal(5,2) DEFAULT NULL,
  `PVM_Melee_bot` decimal(5,2) DEFAULT NULL,
  `Smithing_bot` decimal(5,2) DEFAULT NULL,
  `Magic_bot` decimal(5,2) DEFAULT NULL,
  `Fishing_bot` decimal(5,2) DEFAULT NULL,
  `Mining_bot` decimal(5,2) DEFAULT NULL,
  `Crafting_bot` decimal(5,2) DEFAULT NULL,
  `PVM_Ranged_Magic_bot` decimal(5,2) DEFAULT NULL,
  `PVM_Ranged_bot` decimal(5,2) DEFAULT NULL,
  `Hunter_bot` decimal(5,2) DEFAULT NULL,
  `Fletching_bot` decimal(5,2) DEFAULT NULL,
  `Clue_Scroll_bot` decimal(5,2) DEFAULT NULL,
  `LMS_bot` decimal(5,2) DEFAULT NULL,
  `Agility_bot` decimal(5,2) DEFAULT NULL,
  `Wintertodt_bot` decimal(5,2) DEFAULT NULL,
  `Runecrafting_bot` decimal(5,2) DEFAULT NULL,
  `Zalcano_bot` decimal(5,2) DEFAULT NULL,
  `Woodcutting_bot` decimal(5,2) DEFAULT NULL,
  `Thieving_bot` decimal(5,2) DEFAULT NULL,
  `Soul_Wars_bot` decimal(5,2) DEFAULT NULL,
  `Cooking_bot` decimal(5,2) DEFAULT NULL,
  `Vorkath_bot` decimal(5,2) DEFAULT NULL,
  `Barrows_bot` decimal(5,2) DEFAULT NULL,
  `Herblore_bot` decimal(5,2) DEFAULT NULL,
  `Zulrah_bot` decimal(5,2) DEFAULT NULL,
  UNIQUE KEY `name` (`name`),
  KEY `FK_pred_player_id` (`id`),
  CONSTRAINT `FK_pred_player_id` FOREIGN KEY (`id`) REFERENCES `Players` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `PredictionsFeedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `voter_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `prediction` varchar(50) NOT NULL,
  `confidence` float NOT NULL,
  `vote` int NOT NULL DEFAULT '0',
  `feedback_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `reviewed` tinyint NOT NULL DEFAULT '0',
  `reviewer_id` int DEFAULT NULL,
  `user_notified` tinyint NOT NULL DEFAULT '0',
  `proposed_label` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Unique_Vote` (`prediction`,`subject_id`,`voter_id`) USING BTREE,
  KEY `Voter_ID` (`voter_id`),
  KEY `Subject_ID` (`subject_id`),
  KEY `Reviewer_ID` (`reviewer_id`),
  CONSTRAINT `Reviewer_ID` FOREIGN KEY (`reviewer_id`) REFERENCES `Tokens` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Subject_ID` FOREIGN KEY (`subject_id`) REFERENCES `Players` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Voter_ID` FOREIGN KEY (`voter_id`) REFERENCES `Players` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=582901 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `reportLatest` (
  `report_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `reported_id` int NOT NULL,
  `region_id` int NOT NULL,
  `x_coord` int NOT NULL,
  `y_coord` int NOT NULL,
  `z_coord` int NOT NULL,
  `timestamp` timestamp NOT NULL,
  `on_members_world` int DEFAULT NULL,
  `world_number` int DEFAULT NULL,
  `equip_head_id` int DEFAULT NULL,
  `equip_amulet_id` int DEFAULT NULL,
  `equip_torso_id` int DEFAULT NULL,
  `equip_legs_id` int DEFAULT NULL,
  `equip_boots_id` int DEFAULT NULL,
  `equip_cape_id` int DEFAULT NULL,
  `equip_hands_id` int DEFAULT NULL,
  `equip_weapon_id` int DEFAULT NULL,
  `equip_shield_id` int DEFAULT NULL,
  `equip_ge_value` bigint DEFAULT NULL,
  PRIMARY KEY (`reported_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Reports` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reportedID` int NOT NULL,
  `reportingID` int NOT NULL,
  `region_id` int NOT NULL,
  `x_coord` int NOT NULL,
  `y_coord` int NOT NULL,
  `z_coord` int NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `manual_detect` tinyint(1) DEFAULT NULL,
  `on_members_world` int DEFAULT NULL,
  `on_pvp_world` tinyint DEFAULT NULL,
  `world_number` int DEFAULT NULL,
  `equip_head_id` int DEFAULT NULL,
  `equip_amulet_id` int DEFAULT NULL,
  `equip_torso_id` int DEFAULT NULL,
  `equip_legs_id` int DEFAULT NULL,
  `equip_boots_id` int DEFAULT NULL,
  `equip_cape_id` int DEFAULT NULL,
  `equip_hands_id` int DEFAULT NULL,
  `equip_weapon_id` int DEFAULT NULL,
  `equip_shield_id` int DEFAULT NULL,
  `equip_ge_value` bigint DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Unique_Report` (`reportedID`,`reportingID`,`region_id`,`manual_detect`),
  KEY `idx_reportingID` (`reportingID`),
  KEY `idx_reportedID_regionDI` (`reportedID`,`region_id`),
  KEY `idx_heatmap` (`reportedID`,`timestamp`,`region_id`),
  CONSTRAINT `FK_Reported_Players_id` FOREIGN KEY (`reportedID`) REFERENCES `Players` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reporting_Players_id` FOREIGN KEY (`reportingID`) REFERENCES `Players` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=7171583585 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `stgReports` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reportedID` int NOT NULL,
  `reportingID` int NOT NULL,
  `region_id` int NOT NULL,
  `x_coord` int NOT NULL,
  `y_coord` int NOT NULL,
  `z_coord` int NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `manual_detect` tinyint(1) DEFAULT NULL,
  `on_members_world` int DEFAULT NULL,
  `on_pvp_world` tinyint DEFAULT NULL,
  `world_number` int DEFAULT NULL,
  `equip_head_id` int DEFAULT NULL,
  `equip_amulet_id` int DEFAULT NULL,
  `equip_torso_id` int DEFAULT NULL,
  `equip_legs_id` int DEFAULT NULL,
  `equip_boots_id` int DEFAULT NULL,
  `equip_cape_id` int DEFAULT NULL,
  `equip_hands_id` int DEFAULT NULL,
  `equip_weapon_id` int DEFAULT NULL,
  `equip_shield_id` int DEFAULT NULL,
  `equip_ge_value` bigint DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=299822712 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `xx_stats` (
  `player_count` bigint NOT NULL DEFAULT '0',
  `confirmed_ban` tinyint(1) NOT NULL DEFAULT '0',
  `confirmed_player` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


/*
  Triggers & events
*/
CREATE DEFINER=`master_admin`@`%` EVENT `event_prune_playerHiscoreData` ON SCHEDULE EVERY 1 HOUR STARTS '2022-01-14 14:00:00' ON COMPLETION NOT PRESERVE ENABLE DO begin
delete from playerdata.playerHiscoreData
where id in (
    select * from (
        select pxp.id
        FROM playerdata.playerHiscoreData pxp
        join playerdata.playerHiscoreDataLatest phd on pxp.Player_id = phd.Player_id
        where 1=1
            and pxp.ts_date < phd.ts_date - interval 30 day
        limit 1000000 -- 1 000 000
    ) a
)
;
end

CREATE DEFINER=`serverapp`@`%` EVENT `event_prune_playerHiscoreDataXPChange` ON SCHEDULE EVERY 1 HOUR STARTS '2022-01-08 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO begin
delete from playerdata.playerHiscoreDataXPChange
where id in (
    select * from (
        select pxp.id
        FROM playerdata.playerHiscoreDataXPChange pxp
        join playerdata.playerHiscoreDataLatest phd on pxp.Player_id = phd.Player_id
        where 1=1
            and pxp.ts_date < phd.ts_date - interval 30 day
		limit 1000000 -- 1 000 000
    ) a
)
;
end

CREATE DEFINER=`serverapp`@`%` EVENT `event_xx_stats` ON SCHEDULE EVERY 1 HOUR STARTS '2021-10-25 22:00:00' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
START TRANSACTION;
	SET AUTOCOMMIT=0;
    truncate table xx_stats;
    insert into xx_stats
    select
        count(*) as player_count,
        pl.confirmed_ban,
        pl.confirmed_player,
        current_timestamp()
    from Players pl 
    where 1=1
    group by
        pl.confirmed_ban,
        pl.confirmed_player
    ;
    SET AUTOCOMMIT=1;
END

CREATE DEFINER=`serverapp`@`%` EVENT `staged_insert_reports` ON SCHEDULE EVERY 5 MINUTE STARTS '2022-01-05 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO begin
START TRANSACTION;
    INSERT IGNORE INTO Reports (
		created_at,
		reportedID,
		reportingID,
		region_id,
		x_coord,
		y_coord,
		z_coord,
		timestamp,
		manual_detect,
		on_members_world,
		on_pvp_world,
		world_number,
		equip_head_id,
		equip_amulet_id,
		equip_torso_id,
		equip_legs_id,
		equip_boots_id,
		equip_cape_id,
		equip_hands_id,
		equip_weapon_id,
		equip_shield_id,
		equip_ge_value
	)
    SELECT
		created_at,
		reportedID,
		reportingID,
		region_id,
		x_coord,
		y_coord,
		z_coord,
		timestamp,
		manual_detect,
		on_members_world,
		on_pvp_world,
		world_number,
		equip_head_id,
		equip_amulet_id,
		equip_torso_id,
		equip_legs_id,
		equip_boots_id,
		equip_cape_id,
		equip_hands_id,
		equip_weapon_id,
		equip_shield_id,
		equip_ge_value
    FROM stgReports;

    DELETE FROM stgReports 
	WHERE ID in (
		SELECT * from (SELECT ID from stgReports) r
	);
COMMIT;
end
