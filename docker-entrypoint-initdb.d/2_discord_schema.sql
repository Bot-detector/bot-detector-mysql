-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 07, 2021 at 03:18 AM
-- Server version: 8.0.25-0ubuntu0.20.10.1
-- PHP Version: 7.4.9
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;
--
-- Database: `discord`
--
CREATE DATABASE IF NOT EXISTS `discord` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `discord`;
-- --------------------------------------------------------
--
-- Table structure for table `discordVerification`
--
CREATE TABLE `discordVerification` (
    `Entry` int NOT NULL,
    `Discord_id` bigint NOT NULL,
    `Player_id` int NOT NULL,
    `primary_rsn` tinyint(1) NOT NULL DEFAULT '0',
    `Code` text NOT NULL,
    `Verified_status` tinyint(1) NOT NULL DEFAULT '0',
    `token_used` int DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
-- --------------------------------------------------------
--
-- Table structure for table `discord_slayer_task`
--
CREATE TABLE `discord_slayer_task` (
    `entry_id` int NOT NULL,
    `player_id` int NOT NULL,
    `current_slayer_task` int NOT NULL,
    `slayer_count_remaining` int NOT NULL,
    `points_for_completion` int NOT NULL,
    `total_slayer_points` int NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
-- --------------------------------------------------------
--
-- Table structure for table `export_links`
--
CREATE TABLE `export_links` (
    `id` bigint NOT NULL,
    `time_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `time_redeemed` timestamp NULL DEFAULT NULL,
    `discord_id` bigint NOT NULL,
    `url_text` varchar(12) DEFAULT NULL,
    `file_name` text,
    `is_csv` tinyint DEFAULT NULL,
    `is_excel` tinyint DEFAULT NULL,
    `is_redeemed` tinyint DEFAULT '0'
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
-- --------------------------------------------------------
--
-- Table structure for table `labels_submitted`
--
CREATE TABLE `labels_submitted` (`ID` int NOT NULL, `Label` text NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
-- --------------------------------------------------------
--
-- Table structure for table `playerlabels_submitted`
--
CREATE TABLE `playerlabels_submitted` (
    `ID` int NOT NULL,
    `Player_ID` int NOT NULL,
    `Label_ID` int NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
-- --------------------------------------------------------
--
-- Table structure for table `players_submitted`
--
CREATE TABLE `players_submitted` (`ID` int NOT NULL, `Players` text) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
-- --------------------------------------------------------
--
-- Stand-in structure for view `verified_players`
-- (See below for the actual view)
--
CREATE TABLE `verified_players` (
    `Code` text,
    `Discord_id` bigint,
    `Entry` int,
    `name` text,
    `Player_id` int,
    `primary_rsn` tinyint(1),
    `Verified_status` tinyint(1)
);
-- --------------------------------------------------------
--
-- Structure for view `verified_players`
--
DROP TABLE IF EXISTS `verified_players`;
CREATE VIEW `verified_players` AS
SELECT `dv`.`Entry` AS `Entry`,
    `dv`.`Discord_id` AS `Discord_id`,
    `dv`.`Player_id` AS `Player_id`,
    `dv`.`primary_rsn` AS `primary_rsn`,
    `dv`.`Code` AS `Code`,
    `dv`.`Verified_status` AS `Verified_status`,
    `pl`.`name` AS `name`
FROM (
        `discordVerification` `dv`
        join `playerdata`.`Players` `pl` on((`dv`.`Player_id` = `pl`.`id`))
    );
--
-- Indexes for dumped tables
--
--
-- Indexes for table `discordVerification`
--
ALTER TABLE `discordVerification`
ADD PRIMARY KEY (`Entry`),
    ADD UNIQUE KEY `idx_discordID_playerID` (`Discord_id`, `Player_id`) USING BTREE,
    ADD KEY `FK_real_players` (`Player_id`),
    ADD KEY `FK_token_used` (`token_used`);
--
-- Indexes for table `discord_slayer_task`
--
ALTER TABLE `discord_slayer_task`
ADD PRIMARY KEY (`entry_id`),
    ADD KEY `player_id` (`player_id`),
    ADD KEY `current_slayer_task` (`current_slayer_task`);
--
-- Indexes for table `export_links`
--
ALTER TABLE `export_links`
ADD PRIMARY KEY (`id`),
    ADD KEY `discord_id` (`discord_id`);
--
-- Indexes for table `labels_submitted`
--
ALTER TABLE `labels_submitted`
ADD PRIMARY KEY (`ID`),
    ADD UNIQUE KEY `idx_unique_label` (`Label`(100)) USING BTREE;
--
-- Indexes for table `playerlabels_submitted`
--
ALTER TABLE `playerlabels_submitted`
ADD PRIMARY KEY (`ID`),
    ADD UNIQUE KEY `idx_player_label` (`Player_ID`, `Label_ID`) USING BTREE,
    ADD KEY `FK_unique_labels` (`Label_ID`);
--
-- Indexes for table `players_submitted`
--
ALTER TABLE `players_submitted`
ADD PRIMARY KEY (`ID`),
    ADD UNIQUE KEY `idx_unique_players` (`Players`(12)) USING BTREE;
--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `discordVerification`
--
ALTER TABLE `discordVerification`
MODIFY `Entry` int NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `discord_slayer_task`
--
ALTER TABLE `discord_slayer_task`
MODIFY `entry_id` int NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `export_links`
--
ALTER TABLE `export_links`
MODIFY `id` bigint NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `labels_submitted`
--
ALTER TABLE `labels_submitted`
MODIFY `ID` int NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `playerlabels_submitted`
--
ALTER TABLE `playerlabels_submitted`
MODIFY `ID` int NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `players_submitted`
--
ALTER TABLE `players_submitted`
MODIFY `ID` int NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--
--
-- Constraints for table `discordVerification`
--
ALTER TABLE `discordVerification`
ADD CONSTRAINT `FK_real_players` FOREIGN KEY (`Player_id`) REFERENCES `playerdata`.`Players` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT `FK_token_used` FOREIGN KEY (`token_used`) REFERENCES `playerdata`.`Tokens` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
--
-- Constraints for table `discord_slayer_task`
--
ALTER TABLE `discord_slayer_task`
ADD CONSTRAINT `discord_slayer_task_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `playerdata`.`Players` (`id`),
    ADD CONSTRAINT `discord_slayer_task_ibfk_2` FOREIGN KEY (`current_slayer_task`) REFERENCES `playerdata`.`Labels` (`id`);
--
-- Constraints for table `export_links`
--
ALTER TABLE `export_links`
ADD CONSTRAINT `export_links_ibfk_1` FOREIGN KEY (`discord_id`) REFERENCES `discordVerification` (`Discord_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
--
-- Constraints for table `playerlabels_submitted`
--
ALTER TABLE `playerlabels_submitted`
ADD CONSTRAINT `FK_unique_labels` FOREIGN KEY (`Label_ID`) REFERENCES `labels_submitted` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT `FK_unique_players` FOREIGN KEY (`Player_ID`) REFERENCES `players_submitted` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;
