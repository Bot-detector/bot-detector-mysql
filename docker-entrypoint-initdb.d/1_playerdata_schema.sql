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
CREATE DATABASE IF NOT EXISTS `playerdata` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `playerdata`;

-- --------------------------------------------------------

--
-- Stand-in structure for view `feedbackstats`
-- (See below for the actual view)
--
CREATE TABLE `feedbackstats` (
`classification` varchar(8)
,`count` bigint
,`prediction` varchar(50)
,`ts_date` date
,`vote` varchar(7)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `hiscoreTableLatest`
-- (See below for the actual view)
--
CREATE TABLE `hiscoreTableLatest` (
`abyssal_sire` int
,`agility` int
,`alchemical_hydra` int
,`attack` int
,`barrows_chests` int
,`bounty_hunter_hunter` int
,`bounty_hunter_rogue` int
,`bryophyta` int
,`callisto` int
,`cerberus` int
,`chambers_of_xeric` int
,`chambers_of_xeric_challenge_mode` int
,`chaos_elemental` int
,`chaos_fanatic` int
,`commander_zilyana` int
,`construction` int
,`cooking` int
,`corporeal_beast` int
,`crafting` int
,`crazy_archaeologist` int
,`cs_all` int
,`cs_beginner` int
,`cs_easy` int
,`cs_elite` int
,`cs_hard` int
,`cs_master` int
,`cs_medium` int
,`dagannoth_prime` int
,`dagannoth_rex` int
,`dagannoth_supreme` int
,`defence` int
,`deranged_archaeologist` int
,`farming` int
,`firemaking` int
,`fishing` int
,`fletching` int
,`general_graardor` int
,`giant_mole` int
,`grotesque_guardians` int
,`herblore` int
,`hespori` int
,`hitpoints` int
,`hunter` int
,`id` int
,`kalphite_queen` int
,`king_black_dragon` int
,`kraken` int
,`kreearra` int
,`kril_tsutsaroth` int
,`league` int
,`lms_rank` int
,`magic` int
,`mimic` int
,`mining` int
,`name` text
,`nightmare` int
,`obor` int
,`Player_id` int
,`prayer` int
,`ranged` int
,`runecraft` int
,`sarachnis` int
,`scorpia` int
,`skotizo` int
,`slayer` int
,`smithing` int
,`soul_wars_zeal` int
,`strength` int
,`the_corrupted_gauntlet` int
,`the_gauntlet` int
,`theatre_of_blood` int
,`thermonuclear_smoke_devil` int
,`thieving` int
,`timestamp` datetime
,`total` bigint
,`ts_date` date
,`tzkal_zuk` int
,`tztok_jad` int
,`venenatis` int
,`vetion` int
,`vorkath` int
,`wintertodt` int
,`woodcutting` int
,`zalcano` int
,`zulrah` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `hiscoreTableLatestDiff`
-- (See below for the actual view)
--
CREATE TABLE `hiscoreTableLatestDiff` (
`abyssal_sire_diff` bigint
,`agility_diff` bigint
,`alchemical_hydra_diff` bigint
,`attack_diff` bigint
,`barrows_chests_diff` bigint
,`bounty_hunter_hunter_diff` bigint
,`bounty_hunter_rogue_diff` bigint
,`bryophyta_diff` bigint
,`callisto_diff` bigint
,`cerberus_diff` bigint
,`chambers_of_xeric_challenge_mode_diff` bigint
,`chambers_of_xeric_diff` bigint
,`chaos_elemental_diff` bigint
,`chaos_fanatic_diff` bigint
,`commander_zilyana_diff` bigint
,`construction_diff` bigint
,`cooking_diff` bigint
,`corporeal_beast_diff` bigint
,`crafting_diff` bigint
,`crazy_archaeologist_diff` bigint
,`cs_all_diff` bigint
,`cs_beginner_diff` bigint
,`cs_easy_diff` bigint
,`cs_elite_diff` bigint
,`cs_hard_diff` bigint
,`cs_master_diff` bigint
,`cs_medium_diff` bigint
,`dagannoth_prime_diff` bigint
,`dagannoth_rex_diff` bigint
,`dagannoth_supreme_diff` bigint
,`defence_diff` bigint
,`deranged_archaeologist_diff` bigint
,`farming_diff` bigint
,`firemaking_diff` bigint
,`fishing_diff` bigint
,`fletching_diff` bigint
,`general_graardor_diff` bigint
,`giant_mole_diff` bigint
,`grotesque_guardians_diff` bigint
,`herblore_diff` bigint
,`hespori_diff` bigint
,`hitpoints_diff` bigint
,`hunter_diff` bigint
,`kalphite_queen_diff` bigint
,`king_black_dragon_diff` bigint
,`kraken_diff` bigint
,`kreearra_diff` bigint
,`kril_tsutsaroth_diff` bigint
,`league_diff` bigint
,`lms_rank_diff` bigint
,`magic_diff` bigint
,`mimic_diff` bigint
,`mining_diff` bigint
,`name` text
,`nightmare_diff` bigint
,`obor_diff` bigint
,`Player_id` int
,`prayer_diff` bigint
,`ranged_diff` bigint
,`runecraft_diff` bigint
,`sarachnis_diff` bigint
,`scorpia_diff` bigint
,`skotizo_diff` bigint
,`slayer_diff` bigint
,`smithing_diff` bigint
,`soul_wars_zeal_diff` bigint
,`strength_diff` bigint
,`the_corrupted_gauntlet_diff` bigint
,`the_gauntlet_diff` bigint
,`theatre_of_blood_diff` bigint
,`thermonuclear_smoke_devil_diff` bigint
,`thieving_diff` bigint
,`total_diff` bigint
,`ts_date` date
,`tzkal_zuk_diff` bigint
,`tztok_jad_diff` bigint
,`venenatis_diff` bigint
,`vetion_diff` bigint
,`vorkath_diff` bigint
,`wintertodt_diff` bigint
,`woodcutting_diff` bigint
,`zalcano_diff` bigint
,`zulrah_diff` bigint
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `hiscoreTableStats`
-- (See below for the actual view)
--
CREATE TABLE `hiscoreTableStats` (
`hiscore_checked_date` date
,`hiscore_Players_checked` bigint
);

-- --------------------------------------------------------

--
-- Table structure for table `LabelJagex`
--

CREATE TABLE `LabelJagex` (
  `id` int NOT NULL,
  `label` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `labelParents`
-- (See below for the actual view)
--
CREATE TABLE `labelParents` (
`child_label` varchar(50)
,`parent_label` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `Labels`
--

CREATE TABLE `Labels` (
  `id` int NOT NULL,
  `label` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `LabelSubGroup`
--

CREATE TABLE `LabelSubGroup` (
  `id` int NOT NULL,
  `parent_label` int NOT NULL,
  `child_label` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PlayerBotConfirmation`
--

CREATE TABLE `PlayerBotConfirmation` (
  `id` int NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `player_id` int NOT NULL,
  `label_id` int NOT NULL,
  `bot` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playerChatHistory`
--

CREATE TABLE `playerChatHistory` (
  `entry_id` int NOT NULL,
  `reportedID` int NOT NULL,
  `chat` tinytext NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reportingID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playerHiscoreData`
--

CREATE TABLE `playerHiscoreData` (
  `id` int NOT NULL,
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
  `nightmare` int DEFAULT NULL,
  `phosanis_nightmare` int DEFAULT NULL,
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
  `zulrah` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Triggers `playerHiscoreData`
--
DELIMITER $$
CREATE TRIGGER `hiscore_date_OnInsert` BEFORE INSERT ON `playerHiscoreData` FOR EACH ROW SET new.ts_date = DATE(curdate())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hiscore_latest_AfterInsert` AFTER INSERT ON `playerHiscoreData` FOR EACH ROW BEGIN
insert INTO playerHiscoreDataLatest
    (
        Player_id,
        ts_date,
        total,
        attack,
        defence,
        strength,
        hitpoints,
        ranged,
        prayer,
        magic,
        cooking,
        woodcutting,
        fletching,
        fishing,
        firemaking,
        crafting,
        smithing,
        mining,
        herblore,
        agility,
        thieving,
        slayer,
        farming,
        runecraft,
        hunter,
        construction,
        league,
        bounty_hunter_hunter,
        bounty_hunter_rogue,
        cs_all,
        cs_beginner,
        cs_easy,
        cs_medium,
        cs_hard,
        cs_elite,
        cs_master,
        lms_rank,
        soul_wars_zeal,
        abyssal_sire,
        alchemical_hydra,
        barrows_chests,
        bryophyta,
        callisto,
        cerberus,
        chambers_of_xeric,
        chambers_of_xeric_challenge_mode,
        chaos_elemental,
        chaos_fanatic,
        commander_zilyana,
        corporeal_beast,
        crazy_archaeologist,
        dagannoth_prime,
        dagannoth_rex,
        dagannoth_supreme,
        deranged_archaeologist,
        general_graardor,
        giant_mole,
        grotesque_guardians,
        hespori,
        kalphite_queen,
        king_black_dragon,
        kraken,
        kreearra,
        kril_tsutsaroth,
        mimic,
        nightmare,
        obor,
        sarachnis,
        scorpia,
        skotizo,
        Tempoross,
        the_gauntlet,
        the_corrupted_gauntlet,
        theatre_of_blood,
        theatre_of_blood_hard,
        thermonuclear_smoke_devil,
        tzkal_zuk,
        tztok_jad,
        venenatis,
        vetion,
        vorkath,
        wintertodt,
        zalcano,
        zulrah
    )
    VALUES (
        new.Player_id,
        new.ts_date,
        new.total,
        new.attack,
        new.defence,
        new.strength,
        new.hitpoints,
        new.ranged,
        new.prayer,
        new.magic,
        new.cooking,
        new.woodcutting,
        new.fletching,
        new.fishing,
        new.firemaking,
        new.crafting,
        new.smithing,
        new.mining,
        new.herblore,
        new.agility,
        new.thieving,
        new.slayer,
        new.farming,
        new.runecraft,
        new.hunter,
        new.construction,
        new.league,
        new.bounty_hunter_hunter,
        new.bounty_hunter_rogue,
        new.cs_all,
        new.cs_beginner,
        new.cs_easy,
        new.cs_medium,
        new.cs_hard,
        new.cs_elite,
        new.cs_master,
        new.lms_rank,
        new.soul_wars_zeal,
        new.abyssal_sire,
        new.alchemical_hydra,
        new.barrows_chests,
        new.bryophyta,
        new.callisto,
        new.cerberus,
        new.chambers_of_xeric,
        new.chambers_of_xeric_challenge_mode,
        new.chaos_elemental,
        new.chaos_fanatic,
        new.commander_zilyana,
        new.corporeal_beast,
        new.crazy_archaeologist,
        new.dagannoth_prime,
        new.dagannoth_rex,
        new.dagannoth_supreme,
        new.deranged_archaeologist,
        new.general_graardor,
        new.giant_mole,
        new.grotesque_guardians,
        new.hespori,
        new.kalphite_queen,
        new.king_black_dragon,
        new.kraken,
        new.kreearra,
        new.kril_tsutsaroth,
        new.mimic,
        new.nightmare,
        new.obor,
        new.sarachnis,
        new.scorpia,
        new.skotizo,
        new.Tempoross,
        new.the_gauntlet,
        new.the_corrupted_gauntlet,
        new.theatre_of_blood,
        new.theatre_of_blood_hard,
        new.thermonuclear_smoke_devil,
        new.tzkal_zuk,
        new.tztok_jad,
        new.venenatis,
        new.vetion,
        new.vorkath,
        new.wintertodt,
        new.zalcano,
        new.zulrah
    )
on duplicate key update
	Player_id = new.Player_id,
	ts_date = new.ts_date,
	total = new.total,
	attack = new.attack,
	defence = new.defence,
	strength = new.strength,
	hitpoints = new.hitpoints,
	ranged = new.ranged,
	prayer = new.prayer,
	magic = new.magic,
	cooking = new.cooking,
	woodcutting = new.woodcutting,
	fletching = new.fletching,
	fishing = new.fishing,
	firemaking = new.firemaking,
	crafting = new.crafting,
	smithing = new.smithing,
	mining = new.mining,
	herblore = new.herblore,
	agility = new.agility,
	thieving = new.thieving,
	slayer = new.slayer,
	farming = new.farming,
	runecraft = new.runecraft,
	hunter = new.hunter,
	construction = new.construction,
	league = new.league,
	bounty_hunter_hunter = new.bounty_hunter_hunter,
	bounty_hunter_rogue = new.bounty_hunter_rogue,
	cs_all = new.cs_all,
	cs_beginner = new.cs_beginner,
	cs_easy = new.cs_easy,
	cs_medium = new.cs_medium,
	cs_hard = new.cs_hard,
	cs_elite = new.cs_elite,
	cs_master = new.cs_master,
	lms_rank = new.lms_rank,
	soul_wars_zeal = new.soul_wars_zeal,
	abyssal_sire = new.abyssal_sire,
	alchemical_hydra = new.alchemical_hydra,
	barrows_chests = new.barrows_chests,
	bryophyta = new.bryophyta,
	callisto = new.callisto,
	cerberus = new.cerberus,
	chambers_of_xeric = new.chambers_of_xeric,
	chambers_of_xeric_challenge_mode = new.chambers_of_xeric_challenge_mode,
	chaos_elemental = new.chaos_elemental,
	chaos_fanatic = new.chaos_fanatic,
	commander_zilyana = new.commander_zilyana,
	corporeal_beast = new.corporeal_beast,
	crazy_archaeologist = new.crazy_archaeologist,
	dagannoth_prime = new.dagannoth_prime,
	dagannoth_rex = new.dagannoth_rex,
	dagannoth_supreme = new.dagannoth_supreme,
	deranged_archaeologist = new.deranged_archaeologist,
	general_graardor = new.general_graardor,
	giant_mole = new.giant_mole,
	grotesque_guardians = new.grotesque_guardians,
	hespori = new.hespori,
	kalphite_queen = new.kalphite_queen,
	king_black_dragon = new.king_black_dragon,
	kraken = new.kraken,
	kreearra = new.kreearra,
	kril_tsutsaroth = new.kril_tsutsaroth,
	mimic = new.mimic,
	nightmare = new.nightmare,
	obor = new.obor,
	sarachnis = new.sarachnis,
	scorpia = new.scorpia,
	skotizo = new.skotizo,
	Tempoross = new.Tempoross,
	the_gauntlet = new.the_gauntlet,
	the_corrupted_gauntlet = new.the_corrupted_gauntlet,
	theatre_of_blood = new.theatre_of_blood,
	theatre_of_blood_hard = new.theatre_of_blood_hard,
	thermonuclear_smoke_devil = new.thermonuclear_smoke_devil,
	tzkal_zuk = new.tzkal_zuk,
	tztok_jad = new.tztok_jad,
	venenatis = new.venenatis,
	vetion = new.vetion,
	vorkath = new.vorkath,
	wintertodt = new.wintertodt,
	zalcano = new.zalcano,
	zulrah = new.zulrah
;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hiscore_update` AFTER UPDATE ON `playerHiscoreData` FOR EACH ROW BEGIN
    IF OLD.total <> new.total OR old.player_id <> new.player_id THEN
        INSERT INTO playerHiscoreDataChanges (playerHiscoreDataID, old_player_id, new_player_id ,old_total, new_total)
        VALUES(old.id, old.player_id, new.player_id, old.total, new.total);
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `playerHiscoreDataChanges`
--

CREATE TABLE `playerHiscoreDataChanges` (
  `id` int NOT NULL,
  `playerHiscoreDataID` int NOT NULL,
  `old_player_id` int NOT NULL,
  `new_player_id` int NOT NULL,
  `old_total` int NOT NULL,
  `new_total` int NOT NULL,
  `change_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playerHiscoreDataLatest`
--

CREATE TABLE `playerHiscoreDataLatest` (
  `id` int NOT NULL,
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
  `zulrah` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Triggers `playerHiscoreDataLatest`
--
DELIMITER $$
CREATE TRIGGER `after_playerHiscoreDataLatest_update` AFTER UPDATE ON `playerHiscoreDataLatest` FOR EACH ROW BEGIN
	INSERT IGNORE INTO playerHiscoreDataXPChange
    (
        Player_id,
        ts_date,
        total,
        attack,
        defence,
        strength,
        hitpoints,
        ranged,
        prayer,
        magic,
        cooking,
        woodcutting,
        fletching,
        fishing,
        firemaking,
        crafting,
        smithing,
        mining,
        herblore,
        agility,
        thieving,
        slayer,
        farming,
        runecraft,
        hunter,
        construction,
        league,
        bounty_hunter_hunter,
        bounty_hunter_rogue,
        cs_all,
        cs_beginner,
        cs_easy,
        cs_medium,
        cs_hard,
        cs_elite,
        cs_master,
        lms_rank,
        soul_wars_zeal,
        abyssal_sire,
        alchemical_hydra,
        barrows_chests,
        bryophyta,
        callisto,
        cerberus,
        chambers_of_xeric,
        chambers_of_xeric_challenge_mode,
        chaos_elemental,
        chaos_fanatic,
        commander_zilyana,
        corporeal_beast,
        crazy_archaeologist,
        dagannoth_prime,
        dagannoth_rex,
        dagannoth_supreme,
        deranged_archaeologist,
        general_graardor,
        giant_mole,
        grotesque_guardians,
        hespori,
        kalphite_queen,
        king_black_dragon,
        kraken,
        kreearra,
        kril_tsutsaroth,
        mimic,
        nightmare,
        obor,
        sarachnis,
        scorpia,
        skotizo,
        Tempoross,
        the_gauntlet,
        the_corrupted_gauntlet,
        theatre_of_blood,
        theatre_of_blood_hard,
        thermonuclear_smoke_devil,
        tzkal_zuk,
        tztok_jad,
        venenatis,
        vetion,
        vorkath,
        wintertodt,
        zalcano,
        zulrah
    ) 
    VALUES
    (
        new.Player_id,
        new.ts_date,
        new.total - old.total,
        new.attack - old.attack,
        new.defence - old.defence,
        new.strength - old.strength,
        new.hitpoints - old.hitpoints,
        new.ranged - old.ranged,
        new.prayer - old.prayer,
        new.magic - old.magic,
        new.cooking - old.cooking,
        new.woodcutting - old.woodcutting,
        new.fletching - old.fletching,
        new.fishing - old.fishing,
        new.firemaking - old.firemaking,
        new.crafting - old.crafting,
        new.smithing - old.smithing,
        new.mining - old.mining,
        new.herblore - old.herblore,
        new.agility - old.agility,
        new.thieving - old.thieving,
        new.slayer - old.slayer,
        new.farming - old.farming,
        new.runecraft - old.runecraft,
        new.hunter - old.hunter,
        new.construction - old.construction,
        new.league - old.league,
        new.bounty_hunter_hunter - old.bounty_hunter_hunter,
        new.bounty_hunter_rogue - old.bounty_hunter_rogue,
        new.cs_all - old.cs_all,
        new.cs_beginner - old.cs_beginner,
        new.cs_easy - old.cs_easy,
        new.cs_medium - old.cs_medium,
        new.cs_hard - old.cs_hard,
        new.cs_elite - old.cs_elite,
        new.cs_master - old.cs_master,
        new.lms_rank - old.lms_rank,
        new.soul_wars_zeal - old.soul_wars_zeal,
        new.abyssal_sire - old.abyssal_sire,
        new.alchemical_hydra - old.alchemical_hydra,
        new.barrows_chests - old.barrows_chests,
        new.bryophyta - old.bryophyta,
        new.callisto - old.callisto,
        new.cerberus - old.cerberus,
        new.chambers_of_xeric - old.chambers_of_xeric,
        new.chambers_of_xeric_challenge_mode - old.chambers_of_xeric_challenge_mode,
        new.chaos_elemental - old.chaos_elemental,
        new.chaos_fanatic - old.chaos_fanatic,
        new.commander_zilyana - old.commander_zilyana,
        new.corporeal_beast - old.corporeal_beast,
        new.crazy_archaeologist - old.crazy_archaeologist,
        new.dagannoth_prime - old.dagannoth_prime,
        new.dagannoth_rex - old.dagannoth_rex,
        new.dagannoth_supreme - old.dagannoth_supreme,
        new.deranged_archaeologist - old.deranged_archaeologist,
        new.general_graardor - old.general_graardor,
        new.giant_mole - old.giant_mole,
        new.grotesque_guardians - old.grotesque_guardians,
        new.hespori - old.hespori,
        new.kalphite_queen - old.kalphite_queen,
        new.king_black_dragon - old.king_black_dragon,
        new.kraken - old.kraken,
        new.kreearra - old.kreearra,
        new.kril_tsutsaroth - old.kril_tsutsaroth,
        new.mimic - old.mimic,
        new.nightmare - old.nightmare,
        new.obor - old.obor,
        new.sarachnis - old.sarachnis,
        new.scorpia - old.scorpia,
        new.skotizo - old.skotizo,
        new.Tempoross - old.Tempoross,
        new.the_gauntlet - old.the_gauntlet,
        new.the_corrupted_gauntlet - old.the_corrupted_gauntlet,
        new.theatre_of_blood - old.theatre_of_blood,
        new.theatre_of_blood_hard - old.theatre_of_blood_hard,
        new.thermonuclear_smoke_devil - old.thermonuclear_smoke_devil,
        new.tzkal_zuk - old.tzkal_zuk,
        new.tztok_jad - old.tztok_jad,
        new.venenatis - old.venenatis,
        new.vetion - old.vetion,
        new.vorkath - old.vorkath,
        new.wintertodt - old.wintertodt,
        new.zalcano - old.zalcano,
        new.zulrah - old.zulrah
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `playerHiscoreDataXPChange`
--

CREATE TABLE `playerHiscoreDataXPChange` (
  `id` int NOT NULL,
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
  `nightmare` int DEFAULT NULL,
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
  `zulrah` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `playerPossibleBanPrediction`
-- (See below for the actual view)
--
CREATE TABLE `playerPossibleBanPrediction` (
`confirmed_ban` tinyint(1)
,`confirmed_player` tinyint(1)
,`created_at` datetime
,`id` int
,`label_id` int
,`label_jagex` int
,`name` text
,`possible_ban` tinyint(1)
,`prediction` varchar(50)
,`updated_at` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `Players`
--

CREATE TABLE `Players` (
  `id` int NOT NULL,
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
  `ultimate_ironman` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Triggers `Players`
--
DELIMITER $$
CREATE TRIGGER `trg_insertBotConf_after_update_player` AFTER UPDATE ON `Players` FOR EACH ROW BEGIN
    IF new.confirmed_ban = 1 THEN
    	INSERT IGNORE INTO PlayerBotConfirmation (player_id, label_id, bot)
        VALUES (new.id, new.label_id, 1);
    ELSEIF new.confirmed_player = 1 THEN
    	INSERT IGNORE INTO PlayerBotConfirmation (player_id, label_id, bot)
        VALUES (new.id, new.label_id, 0);

    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_players_changes` AFTER UPDATE ON `Players` FOR EACH ROW BEGIN
    IF 1=2 
    	or new.possible_ban != old.possible_ban 
        or new.confirmed_ban != old.confirmed_ban
        or new.confirmed_player != old.confirmed_player
        or new.label_id != old.label_id
        or new.label_jagex != old.label_jagex
	THEN
       INSERT ignore INTO PlayersChanges 
        (player_id, name, created_at, updated_at, possible_ban, confirmed_ban, confirmed_player, label_id, label_jagex) 
        VALUES 
        (new.id, new.name, new.created_at, new.updated_at, new.possible_ban, new.confirmed_ban, new.confirmed_player, new.label_id, new.label_jagex);
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `PlayersChanges`
--

CREATE TABLE `PlayersChanges` (
  `id` int NOT NULL,
  `ChangeDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `player_id` int NOT NULL,
  `name` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `possible_ban` tinyint(1) NOT NULL DEFAULT '0',
  `confirmed_ban` tinyint(1) NOT NULL DEFAULT '0',
  `confirmed_player` tinyint(1) NOT NULL DEFAULT '0',
  `label_id` int NOT NULL DEFAULT '0',
  `label_jagex` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `playersJagexLabeledWrong`
-- (See below for the actual view)
--
CREATE TABLE `playersJagexLabeledWrong` (
`confirmed_ban` tinyint(1)
,`confirmed_player` tinyint(1)
,`created_at` datetime
,`id` int
,`label_id` int
,`label_jagex` int
,`name` text
,`possible_ban` tinyint(1)
,`updated_at` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `playersOfInterest`
-- (See below for the actual view)
--
CREATE TABLE `playersOfInterest` (
`confirmed_ban` tinyint(1)
,`confirmed_player` tinyint(1)
,`created_at` datetime
,`id` int
,`label_id` int
,`name` text
,`possible_ban` tinyint(1)
,`updated_at` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `playersToBan`
-- (See below for the actual view)
--
CREATE TABLE `playersToBan` (
`abyssal_sire` int
,`agility` int
,`alchemical_hydra` int
,`attack` int
,`barrows_chests` int
,`bounty_hunter_hunter` int
,`bounty_hunter_rogue` int
,`bryophyta` int
,`callisto` int
,`cerberus` int
,`chambers_of_xeric` int
,`chambers_of_xeric_challenge_mode` int
,`chaos_elemental` int
,`chaos_fanatic` int
,`commander_zilyana` int
,`confirmed_ban` tinyint(1)
,`construction` int
,`cooking` int
,`corporeal_beast` int
,`crafting` int
,`crazy_archaeologist` int
,`cs_all` int
,`cs_beginner` int
,`cs_easy` int
,`cs_elite` int
,`cs_hard` int
,`cs_master` int
,`cs_medium` int
,`dagannoth_prime` int
,`dagannoth_rex` int
,`dagannoth_supreme` int
,`defence` int
,`deranged_archaeologist` int
,`farming` int
,`firemaking` int
,`fishing` int
,`fletching` int
,`general_graardor` int
,`giant_mole` int
,`grotesque_guardians` int
,`herblore` int
,`hespori` int
,`hitpoints` int
,`hunter` int
,`kalphite_queen` int
,`king_black_dragon` int
,`kraken` int
,`kreearra` int
,`kril_tsutsaroth` int
,`label_jagex` int
,`Last_Seen_region` text
,`Last_Seen_Time` timestamp
,`Last_Seen_unix` bigint
,`league` int
,`lms_rank` int
,`magic` int
,`mimic` int
,`mining` int
,`name` text
,`nightmare` int
,`obor` int
,`player_id` int
,`possible_ban` tinyint(1)
,`prayer` int
,`Predicted_confidence` decimal(5,2)
,`prediction` varchar(50)
,`ranged` int
,`region_ID` int
,`runecraft` int
,`sarachnis` int
,`scorpia` int
,`skotizo` int
,`slayer` int
,`smithing` int
,`soul_wars_zeal` int
,`strength` int
,`Tempoross` int
,`the_corrupted_gauntlet` int
,`the_gauntlet` int
,`theatre_of_blood` int
,`thermonuclear_smoke_devil` int
,`thieving` int
,`total` bigint
,`tzkal_zuk` int
,`tztok_jad` int
,`venenatis` int
,`vetion` int
,`vorkath` int
,`wintertodt` int
,`woodcutting` int
,`zalcano` int
,`zulrah` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `playersToReport`
-- (See below for the actual view)
--
CREATE TABLE `playersToReport` (
`abyssal_sire` int
,`agility` int
,`alchemical_hydra` int
,`attack` int
,`barrows_chests` int
,`bounty_hunter_hunter` int
,`bounty_hunter_rogue` int
,`bryophyta` int
,`callisto` int
,`cerberus` int
,`chambers_of_xeric` int
,`chambers_of_xeric_challenge_mode` int
,`chaos_elemental` int
,`chaos_fanatic` int
,`commander_zilyana` int
,`confirmed_ban` tinyint(1)
,`construction` int
,`cooking` int
,`corporeal_beast` int
,`crafting` int
,`crazy_archaeologist` int
,`created_at` datetime
,`cs_all` int
,`cs_beginner` int
,`cs_easy` int
,`cs_elite` int
,`cs_hard` int
,`cs_master` int
,`cs_medium` int
,`dagannoth_prime` int
,`dagannoth_rex` int
,`dagannoth_supreme` int
,`defence` int
,`deranged_archaeologist` int
,`farming` int
,`firemaking` int
,`fishing` int
,`fletching` int
,`general_graardor` int
,`giant_mole` int
,`grotesque_guardians` int
,`herblore` int
,`hespori` int
,`hitpoints` int
,`hunter` int
,`id` int
,`kalphite_queen` int
,`king_black_dragon` int
,`kraken` int
,`kreearra` int
,`kril_tsutsaroth` int
,`league` int
,`lms_rank` int
,`magic` int
,`mimic` int
,`mining` int
,`name` text
,`nightmare` int
,`obor` int
,`Player_id` int
,`possible_ban` tinyint(1)
,`prayer` int
,`Predicted_confidence` decimal(5,2)
,`prediction` varchar(50)
,`ranged` int
,`runecraft` int
,`sarachnis` int
,`scorpia` int
,`skotizo` int
,`slayer` int
,`smithing` int
,`soul_wars_zeal` int
,`strength` int
,`Tempoross` int
,`the_corrupted_gauntlet` int
,`the_gauntlet` int
,`theatre_of_blood` int
,`thermonuclear_smoke_devil` int
,`thieving` int
,`timestamp` datetime
,`total` bigint
,`ts_date` date
,`tzkal_zuk` int
,`tztok_jad` int
,`updated_at` datetime
,`venenatis` int
,`vetion` int
,`vorkath` int
,`wintertodt` int
,`woodcutting` int
,`zalcano` int
,`zulrah` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `playersToReview`
-- (See below for the actual view)
--
CREATE TABLE `playersToReview` (
`abyssal_sire` int
,`agility` int
,`agility_ratio` decimal(14,4)
,`alchemical_hydra` int
,`attack` int
,`attack_ratio` decimal(14,4)
,`barrows_chests` int
,`bounty_hunter_hunter` int
,`bounty_hunter_rogue` int
,`bryophyta` int
,`callisto` int
,`cerberus` int
,`chambers_of_xeric` int
,`chambers_of_xeric_challenge_mode` int
,`chaos_elemental` int
,`chaos_fanatic` int
,`commander_zilyana` int
,`confirmed_ban` tinyint(1)
,`confirmed_player` tinyint(1)
,`construction` int
,`construction_ratio` decimal(14,4)
,`cooking` int
,`cooking_ratio` decimal(14,4)
,`corporeal_beast` int
,`crafting` int
,`crafting_ratio` decimal(14,4)
,`crazy_archaeologist` int
,`created_at` datetime
,`cs_all` int
,`cs_beginner` int
,`cs_easy` int
,`cs_elite` int
,`cs_hard` int
,`cs_master` int
,`cs_medium` int
,`dagannoth_prime` int
,`dagannoth_rex` int
,`dagannoth_supreme` int
,`defence` int
,`defence_ratio` decimal(14,4)
,`deranged_archaeologist` int
,`farming` int
,`farming_ratio` decimal(14,4)
,`firemaking` int
,`firemaking_ratio` decimal(14,4)
,`fishing` int
,`fishing_ratio` decimal(14,4)
,`fletching` int
,`fletching_ratio` decimal(14,4)
,`general_graardor` int
,`giant_mole` int
,`grotesque_guardians` int
,`herblore` int
,`herblore_ratio` decimal(14,4)
,`hespori` int
,`hitpoints` int
,`hitpoints_ratio` decimal(14,4)
,`hunter` int
,`hunter_ratio` decimal(14,4)
,`id` int
,`kalphite_queen` int
,`king_black_dragon` int
,`kraken` int
,`kreearra` int
,`kril_tsutsaroth` int
,`label_id` int
,`label_jagex` int
,`league` int
,`lms_rank` int
,`magic` int
,`magic_ratio` decimal(14,4)
,`mimic` int
,`mining` int
,`mining_ratio` decimal(14,4)
,`name` text
,`nightmare` int
,`obor` int
,`possible_ban` tinyint(1)
,`prayer` int
,`prayer_ratio` decimal(14,4)
,`Predicted_confidence` decimal(5,2)
,`prediction` varchar(50)
,`ranged` int
,`ranged_ratio` decimal(14,4)
,`runecraft` int
,`runecrafting_ratio` decimal(14,4)
,`sarachnis` int
,`scorpia` int
,`skotizo` int
,`slayer` int
,`slayer_ratio` decimal(14,4)
,`smithing` int
,`smithing_ratio` decimal(14,4)
,`soul_wars_zeal` int
,`strength` int
,`strength_ratio` decimal(14,4)
,`Tempoross` int
,`the_corrupted_gauntlet` int
,`the_gauntlet` int
,`theatre_of_blood` int
,`thermonuclear_smoke_devil` int
,`thieving` int
,`thieving_ratio` decimal(14,4)
,`total` bigint
,`tzkal_zuk` int
,`tztok_jad` int
,`updated_at` datetime
,`venenatis` int
,`vetion` int
,`vorkath` int
,`wintertodt` int
,`woodcutting` int
,`woodcutting_ratio` decimal(14,4)
,`zalcano` int
,`zulrah` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `playersToScrape`
-- (See below for the actual view)
--
CREATE TABLE `playersToScrape` (
`confirmed_ban` tinyint(1)
,`confirmed_player` tinyint(1)
,`created_at` datetime
,`id` int
,`label_id` int
,`label_jagex` int
,`name` text
,`possible_ban` tinyint(1)
,`updated_at` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `playerTableStats`
-- (See below for the actual view)
--
CREATE TABLE `playerTableStats` (
`last_checked_date` date
,`Players_checked` bigint
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `player_updates_hour`
-- (See below for the actual view)
--
CREATE TABLE `player_updates_hour` (
`date` date
,`hour` int
,`player_updated_at` bigint
);

-- --------------------------------------------------------

--
-- Table structure for table `Predictions`
--

CREATE TABLE `Predictions` (
  `name` varchar(12) DEFAULT NULL,
  `prediction` varchar(50) DEFAULT NULL,
  `id` int DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `Predicted_confidence` decimal(5,2) DEFAULT NULL,
  `Agility_Thieving_bot` decimal(5,2) DEFAULT NULL,
  `Agility_bot` decimal(5,2) DEFAULT NULL,
  `Construction_Magic_bot` decimal(5,2) DEFAULT NULL,
  `Construction_Prayer_bot` decimal(5,2) DEFAULT NULL,
  `Cooking_bot` decimal(5,2) DEFAULT NULL,
  `Crafting_bot` decimal(5,2) DEFAULT NULL,
  `Fishing_Cooking_bot` decimal(5,2) DEFAULT NULL,
  `Fishing_bot` decimal(5,2) DEFAULT NULL,
  `Fletching_bot` decimal(5,2) DEFAULT NULL,
  `Herblore_bot` decimal(5,2) DEFAULT NULL,
  `Hunter_bot` decimal(5,2) DEFAULT NULL,
  `Magic_bot` decimal(5,2) DEFAULT NULL,
  `Mining_bot` decimal(5,2) DEFAULT NULL,
  `PVM_Melee_bot` decimal(5,2) DEFAULT NULL,
  `PVM_Ranged_Magic_bot` decimal(5,2) DEFAULT NULL,
  `PVM_Ranged_bot` decimal(5,2) DEFAULT NULL,
  `Real_Player` decimal(5,2) DEFAULT NULL,
  `Runecrafting_bot` decimal(5,2) DEFAULT NULL,
  `Smithing_bot` decimal(5,2) DEFAULT NULL,
  `Thieving_bot` decimal(5,2) DEFAULT NULL,
  `Woodcutting_bot` decimal(5,2) DEFAULT NULL,
  `Zalcano_bot` decimal(5,2) DEFAULT NULL,
  `mort_myre_fungus_bot` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PredictionsFeedback`
--

CREATE TABLE `PredictionsFeedback` (
  `id` int NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `voter_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `prediction` varchar(50) NOT NULL,
  `confidence` float NOT NULL,
  `vote` int NOT NULL DEFAULT '0',
  `feedback_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `reviewed` tinyint NOT NULL DEFAULT '0',
  `reviewer_id` int DEFAULT NULL,
  `user_notified` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `regionIDNames`
--

CREATE TABLE `regionIDNames` (
  `entry_ID` int NOT NULL,
  `region_ID` int NOT NULL,
  `z_axis` int DEFAULT '0',
  `region_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `regionTrainingData`
-- (See below for the actual view)
--
CREATE TABLE `regionTrainingData` (
`confirmed_ban` tinyint(1)
,`confirmed_player` tinyint(1)
,`COUNT(rp.region_id)` bigint
,`id` int
,`label_id` int
,`possible_ban` tinyint(1)
,`region_id` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `reportBanLocations`
-- (See below for the actual view)
--
CREATE TABLE `reportBanLocations` (
`confirmed_ban` tinyint(1)
,`confirmed_player` tinyint(1)
,`COUNT(rp.region_id)` bigint
,`id` int
,`label_id` int
,`possible_ban` tinyint(1)
,`region_id` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `reportedRegion`
-- (See below for the actual view)
--
CREATE TABLE `reportedRegion` (
`confirmed_ban` tinyint(1)
,`confirmed_player` tinyint(1)
,`possible_ban` tinyint(1)
,`region_id` int
,`reports` bigint
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `reportingScores`
-- (See below for the actual view)
--
CREATE TABLE `reportingScores` (
`confirmed_ban` tinyint(1)
,`confirmed_player` tinyint(1)
,`possible_ban` tinyint(1)
,`reported` bigint
,`reporter` text
);

-- --------------------------------------------------------

--
-- Table structure for table `reportLatest`
--

CREATE TABLE `reportLatest` (
  `report_id` int DEFAULT NULL,
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
  `equip_ge_value` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Reports`
--

CREATE TABLE `Reports` (
  `ID` int NOT NULL,
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
  `equip_ge_value` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Triggers `Reports`
--
DELIMITER $$
CREATE TRIGGER `report_latest_AfterInsert` AFTER INSERT ON `Reports` FOR EACH ROW BEGIN
    insert INTO reportLatest(
		report_id, 
		reported_id, 
		region_id, 
		x_coord, 
		y_coord, 
		z_coord, 
		timestamp, 
		on_members_world,
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
	values (
		new.ID, 
		new.reportedID, 
		new.region_id, 
		new.x_coord, 
		new.y_coord, 
		new.z_coord, 
		new.timestamp, 
		new.on_members_world,
		new.world_number,
		new.equip_head_id,
		new.equip_amulet_id,
		new.equip_torso_id,
		new.equip_legs_id,
		new.equip_boots_id,
		new.equip_cape_id,
		new.equip_hands_id,
		new.equip_weapon_id,
		new.equip_shield_id,
		new.equip_ge_value
	)
	on duplicate key update
		report_id  = new.ID,
		reported_id  = new.reportedID ,
		region_id  = new.region_id ,
		x_coord  = new.x_coord ,
		y_coord  = new.y_coord ,
		z_coord  = new.z_coord ,
		timestamp  = new.timestamp ,
		on_members_world = new.on_members_world,
		world_number = new.world_number,
		equip_head_id = new.equip_head_id,
		equip_amulet_id = new.equip_amulet_id,
		equip_torso_id = new.equip_torso_id,
		equip_legs_id = new.equip_legs_id,
		equip_boots_id = new.equip_boots_id,
		equip_cape_id = new.equip_cape_id,
		equip_hands_id = new.equip_hands_id,
		equip_weapon_id = new.equip_weapon_id,
		equip_shield_id = new.equip_shield_id,
		equip_ge_value = new.equip_ge_value
	;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `ReportTabelStats`
-- (See below for the actual view)
--
CREATE TABLE `ReportTabelStats` (
`COUNT(ID)` bigint
,`DATE(created_at)` date
);

-- --------------------------------------------------------

--
-- Table structure for table `sentToJagex`
--

CREATE TABLE `sentToJagex` (
  `entry` int NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Tokens`
--

CREATE TABLE `Tokens` (
  `id` int NOT NULL,
  `player_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `token` varchar(50) NOT NULL,
  `request_highscores` tinyint(1) NOT NULL DEFAULT '0',
  `verify_ban` tinyint(1) NOT NULL DEFAULT '0',
  `create_token` tinyint(1) NOT NULL DEFAULT '0',
  `verify_players` tinyint(1) NOT NULL DEFAULT '0',
  `discord_general` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `topLocationData`
--

CREATE TABLE `topLocationData` (
  `name` text NOT NULL,
  `label_id` int NOT NULL DEFAULT '0',
  `player_id` int NOT NULL,
  `x1` decimal(18,8) DEFAULT NULL,
  `y1` decimal(18,8) DEFAULT NULL,
  `x2` decimal(18,8) DEFAULT NULL,
  `y2` decimal(18,8) DEFAULT NULL,
  `x3` decimal(18,8) DEFAULT NULL,
  `y3` decimal(18,8) DEFAULT NULL,
  `x4` decimal(18,8) DEFAULT NULL,
  `y4` decimal(18,8) DEFAULT NULL,
  `x5` decimal(18,8) DEFAULT NULL,
  `y5` decimal(18,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xpWeekDiff`
--

CREATE TABLE `xpWeekDiff` (
  `Player_id` int NOT NULL DEFAULT '0',
  `name` text NOT NULL,
  `confirmed_ban` tinyint(1) NOT NULL DEFAULT '0',
  `confirmed_player` tinyint(1) NOT NULL DEFAULT '0',
  `possible_ban` tinyint(1) NOT NULL DEFAULT '0',
  `label_id` int NOT NULL DEFAULT '0',
  `label_jagex` int NOT NULL DEFAULT '0',
  `ts_date` date DEFAULT NULL,
  `total_diff` decimal(24,4) DEFAULT NULL,
  `attack_diff` decimal(15,4) DEFAULT NULL,
  `defence_diff` decimal(15,4) DEFAULT NULL,
  `strength_diff` decimal(15,4) DEFAULT NULL,
  `hitpoints_diff` decimal(15,4) DEFAULT NULL,
  `ranged_diff` decimal(15,4) DEFAULT NULL,
  `prayer_diff` decimal(15,4) DEFAULT NULL,
  `magic_diff` decimal(15,4) DEFAULT NULL,
  `cooking_diff` decimal(15,4) DEFAULT NULL,
  `woodcutting_diff` decimal(15,4) DEFAULT NULL,
  `fletching_diff` decimal(15,4) DEFAULT NULL,
  `fishing_diff` decimal(15,4) DEFAULT NULL,
  `firemaking_diff` decimal(15,4) DEFAULT NULL,
  `crafting_diff` decimal(15,4) DEFAULT NULL,
  `smithing_diff` decimal(15,4) DEFAULT NULL,
  `mining_diff` decimal(15,4) DEFAULT NULL,
  `herblore_diff` decimal(15,4) DEFAULT NULL,
  `agility_diff` decimal(15,4) DEFAULT NULL,
  `thieving_diff` decimal(15,4) DEFAULT NULL,
  `slayer_diff` decimal(15,4) DEFAULT NULL,
  `farming_diff` decimal(15,4) DEFAULT NULL,
  `runecraft_diff` decimal(15,4) DEFAULT NULL,
  `hunter_diff` decimal(15,4) DEFAULT NULL,
  `construction_diff` decimal(15,4) DEFAULT NULL,
  `league_diff` decimal(15,4) DEFAULT NULL,
  `bounty_hunter_hunter_diff` decimal(15,4) DEFAULT NULL,
  `bounty_hunter_rogue_diff` decimal(15,4) DEFAULT NULL,
  `cs_all_diff` decimal(15,4) DEFAULT NULL,
  `cs_beginner_diff` decimal(15,4) DEFAULT NULL,
  `cs_easy_diff` decimal(15,4) DEFAULT NULL,
  `cs_medium_diff` decimal(15,4) DEFAULT NULL,
  `cs_hard_diff` decimal(15,4) DEFAULT NULL,
  `cs_elite_diff` decimal(15,4) DEFAULT NULL,
  `cs_master_diff` decimal(15,4) DEFAULT NULL,
  `lms_rank_diff` decimal(15,4) DEFAULT NULL,
  `soul_wars_zeal_diff` decimal(15,4) DEFAULT NULL,
  `abyssal_sire_diff` decimal(15,4) DEFAULT NULL,
  `alchemical_hydra_diff` decimal(15,4) DEFAULT NULL,
  `barrows_chests_diff` decimal(15,4) DEFAULT NULL,
  `bryophyta_diff` decimal(15,4) DEFAULT NULL,
  `callisto_diff` decimal(15,4) DEFAULT NULL,
  `cerberus_diff` decimal(15,4) DEFAULT NULL,
  `chambers_of_xeric_diff` decimal(15,4) DEFAULT NULL,
  `chambers_of_xeric_challenge_mode_diff` decimal(15,4) DEFAULT NULL,
  `chaos_elemental_diff` decimal(15,4) DEFAULT NULL,
  `chaos_fanatic_diff` decimal(15,4) DEFAULT NULL,
  `commander_zilyana_diff` decimal(15,4) DEFAULT NULL,
  `corporeal_beast_diff` decimal(15,4) DEFAULT NULL,
  `crazy_archaeologist_diff` decimal(15,4) DEFAULT NULL,
  `dagannoth_prime_diff` decimal(15,4) DEFAULT NULL,
  `dagannoth_rex_diff` decimal(15,4) DEFAULT NULL,
  `dagannoth_supreme_diff` decimal(15,4) DEFAULT NULL,
  `deranged_archaeologist_diff` decimal(15,4) DEFAULT NULL,
  `general_graardor_diff` decimal(15,4) DEFAULT NULL,
  `giant_mole_diff` decimal(15,4) DEFAULT NULL,
  `grotesque_guardians_diff` decimal(15,4) DEFAULT NULL,
  `hespori_diff` decimal(15,4) DEFAULT NULL,
  `kalphite_queen_diff` decimal(15,4) DEFAULT NULL,
  `king_black_dragon_diff` decimal(15,4) DEFAULT NULL,
  `kraken_diff` decimal(15,4) DEFAULT NULL,
  `kreearra_diff` decimal(15,4) DEFAULT NULL,
  `kril_tsutsaroth_diff` decimal(15,4) DEFAULT NULL,
  `mimic_diff` decimal(15,4) DEFAULT NULL,
  `nightmare_diff` decimal(15,4) DEFAULT NULL,
  `obor_diff` decimal(15,4) DEFAULT NULL,
  `sarachnis_diff` decimal(15,4) DEFAULT NULL,
  `scorpia_diff` decimal(15,4) DEFAULT NULL,
  `skotizo_diff` decimal(15,4) DEFAULT NULL,
  `the_gauntlet_diff` decimal(15,4) DEFAULT NULL,
  `the_corrupted_gauntlet_diff` decimal(15,4) DEFAULT NULL,
  `theatre_of_blood_diff` decimal(15,4) DEFAULT NULL,
  `thermonuclear_smoke_devil_diff` decimal(15,4) DEFAULT NULL,
  `tzkal_zuk_diff` decimal(15,4) DEFAULT NULL,
  `tztok_jad_diff` decimal(15,4) DEFAULT NULL,
  `venenatis_diff` decimal(15,4) DEFAULT NULL,
  `vetion_diff` decimal(15,4) DEFAULT NULL,
  `vorkath_diff` decimal(15,4) DEFAULT NULL,
  `wintertodt_diff` decimal(15,4) DEFAULT NULL,
  `zalcano_diff` decimal(15,4) DEFAULT NULL,
  `zulrah_diff` decimal(15,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `xp_banned`
-- (See below for the actual view)
--
CREATE TABLE `xp_banned` (
`Agility` decimal(32,0)
,`Attack` decimal(32,0)
,`Construction` decimal(32,0)
,`Cooking` decimal(32,0)
,`Crafting` decimal(32,0)
,`Defence` decimal(32,0)
,`Farming` decimal(32,0)
,`Firemaking` decimal(32,0)
,`Fishing` decimal(32,0)
,`Fletching` decimal(32,0)
,`Herblore` decimal(32,0)
,`Hitpoints` decimal(32,0)
,`Hunter` decimal(32,0)
,`Magic` decimal(32,0)
,`Mining` decimal(32,0)
,`Prayer` decimal(32,0)
,`Ranged` decimal(32,0)
,`Runecraft` decimal(32,0)
,`Slayer` decimal(32,0)
,`Smithing` decimal(32,0)
,`Strength` decimal(32,0)
,`Thieving` decimal(32,0)
,`total_xp_banned` decimal(54,0)
,`Woodcutting` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Structure for view `feedbackstats`
--
DROP TABLE IF EXISTS `feedbackstats`;

CREATE  VIEW `feedbackstats`  AS SELECT `a`.`ts_date` AS `ts_date`, `a`.`prediction` AS `prediction`, `a`.`classification` AS `classification`, (case when (`a`.`vote` = 1) then 'correct' when (`a`.`vote` = -(1)) then 'wrong' end) AS `vote`, count(0) AS `count` FROM (select distinct cast(`pf`.`ts` as date) AS `ts_date`,`pf`.`voter_id` AS `voter_id`,`pf`.`subject_id` AS `subject_id`,`pf`.`prediction` AS `prediction`,`pf`.`vote` AS `vote`,(case when (`pf`.`confidence` between 0.00 and 0.25) then 'very_low' when (`pf`.`confidence` between 0.25 and 0.50) then 'low' when (`pf`.`confidence` between 0.50 and 0.75) then 'medium' when (`pf`.`confidence` between 0.75 and 1.00) then 'high' end) AS `classification` from `PredictionsFeedback` `pf`) AS `a` GROUP BY `a`.`ts_date`, `a`.`prediction`, `a`.`classification`, `a`.`vote` ;

-- --------------------------------------------------------

--
-- Structure for view `hiscoreTableLatest`
--
DROP TABLE IF EXISTS `hiscoreTableLatest`;

CREATE  VIEW `hiscoreTableLatest`  AS SELECT `a`.`id` AS `id`, `a`.`timestamp` AS `timestamp`, `a`.`ts_date` AS `ts_date`, `a`.`Player_id` AS `Player_id`, `a`.`total` AS `total`, `a`.`attack` AS `attack`, `a`.`defence` AS `defence`, `a`.`strength` AS `strength`, `a`.`hitpoints` AS `hitpoints`, `a`.`ranged` AS `ranged`, `a`.`prayer` AS `prayer`, `a`.`magic` AS `magic`, `a`.`cooking` AS `cooking`, `a`.`woodcutting` AS `woodcutting`, `a`.`fletching` AS `fletching`, `a`.`fishing` AS `fishing`, `a`.`firemaking` AS `firemaking`, `a`.`crafting` AS `crafting`, `a`.`smithing` AS `smithing`, `a`.`mining` AS `mining`, `a`.`herblore` AS `herblore`, `a`.`agility` AS `agility`, `a`.`thieving` AS `thieving`, `a`.`slayer` AS `slayer`, `a`.`farming` AS `farming`, `a`.`runecraft` AS `runecraft`, `a`.`hunter` AS `hunter`, `a`.`construction` AS `construction`, `a`.`league` AS `league`, `a`.`bounty_hunter_hunter` AS `bounty_hunter_hunter`, `a`.`bounty_hunter_rogue` AS `bounty_hunter_rogue`, `a`.`cs_all` AS `cs_all`, `a`.`cs_beginner` AS `cs_beginner`, `a`.`cs_easy` AS `cs_easy`, `a`.`cs_medium` AS `cs_medium`, `a`.`cs_hard` AS `cs_hard`, `a`.`cs_elite` AS `cs_elite`, `a`.`cs_master` AS `cs_master`, `a`.`lms_rank` AS `lms_rank`, `a`.`soul_wars_zeal` AS `soul_wars_zeal`, `a`.`abyssal_sire` AS `abyssal_sire`, `a`.`alchemical_hydra` AS `alchemical_hydra`, `a`.`barrows_chests` AS `barrows_chests`, `a`.`bryophyta` AS `bryophyta`, `a`.`callisto` AS `callisto`, `a`.`cerberus` AS `cerberus`, `a`.`chambers_of_xeric` AS `chambers_of_xeric`, `a`.`chambers_of_xeric_challenge_mode` AS `chambers_of_xeric_challenge_mode`, `a`.`chaos_elemental` AS `chaos_elemental`, `a`.`chaos_fanatic` AS `chaos_fanatic`, `a`.`commander_zilyana` AS `commander_zilyana`, `a`.`corporeal_beast` AS `corporeal_beast`, `a`.`crazy_archaeologist` AS `crazy_archaeologist`, `a`.`dagannoth_prime` AS `dagannoth_prime`, `a`.`dagannoth_rex` AS `dagannoth_rex`, `a`.`dagannoth_supreme` AS `dagannoth_supreme`, `a`.`deranged_archaeologist` AS `deranged_archaeologist`, `a`.`general_graardor` AS `general_graardor`, `a`.`giant_mole` AS `giant_mole`, `a`.`grotesque_guardians` AS `grotesque_guardians`, `a`.`hespori` AS `hespori`, `a`.`kalphite_queen` AS `kalphite_queen`, `a`.`king_black_dragon` AS `king_black_dragon`, `a`.`kraken` AS `kraken`, `a`.`kreearra` AS `kreearra`, `a`.`kril_tsutsaroth` AS `kril_tsutsaroth`, `a`.`mimic` AS `mimic`, `a`.`nightmare` AS `nightmare`, `a`.`obor` AS `obor`, `a`.`sarachnis` AS `sarachnis`, `a`.`scorpia` AS `scorpia`, `a`.`skotizo` AS `skotizo`, `a`.`the_gauntlet` AS `the_gauntlet`, `a`.`the_corrupted_gauntlet` AS `the_corrupted_gauntlet`, `a`.`theatre_of_blood` AS `theatre_of_blood`, `a`.`thermonuclear_smoke_devil` AS `thermonuclear_smoke_devil`, `a`.`tzkal_zuk` AS `tzkal_zuk`, `a`.`tztok_jad` AS `tztok_jad`, `a`.`venenatis` AS `venenatis`, `a`.`vetion` AS `vetion`, `a`.`vorkath` AS `vorkath`, `a`.`wintertodt` AS `wintertodt`, `a`.`zalcano` AS `zalcano`, `a`.`zulrah` AS `zulrah`, `c`.`name` AS `name` FROM (`playerHiscoreData` `a` left join `Players` `c` on((`a`.`Player_id` = `c`.`id`))) WHERE ((1 = 1) AND (`a`.`ts_date` = (select max(`b`.`ts_date`) from `playerHiscoreData` `b` where (`a`.`Player_id` = `b`.`Player_id`) group by `b`.`Player_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `hiscoreTableLatestDiff`
--
DROP TABLE IF EXISTS `hiscoreTableLatestDiff`;

CREATE  VIEW `hiscoreTableLatestDiff`  AS SELECT `p`.`id` AS `Player_id`, `p`.`name` AS `name`, `phd`.`ts_date` AS `ts_date`, (`phd`.`total` - `phd2`.`total`) AS `total_diff`, (`phd`.`attack` - `phd2`.`attack`) AS `attack_diff`, (`phd`.`defence` - `phd2`.`defence`) AS `defence_diff`, (`phd`.`strength` - `phd2`.`strength`) AS `strength_diff`, (`phd`.`hitpoints` - `phd2`.`hitpoints`) AS `hitpoints_diff`, (`phd`.`ranged` - `phd2`.`ranged`) AS `ranged_diff`, (`phd`.`prayer` - `phd2`.`prayer`) AS `prayer_diff`, (`phd`.`magic` - `phd2`.`magic`) AS `magic_diff`, (`phd`.`cooking` - `phd2`.`cooking`) AS `cooking_diff`, (`phd`.`woodcutting` - `phd2`.`woodcutting`) AS `woodcutting_diff`, (`phd`.`fletching` - `phd2`.`fletching`) AS `fletching_diff`, (`phd`.`fishing` - `phd2`.`fishing`) AS `fishing_diff`, (`phd`.`firemaking` - `phd2`.`firemaking`) AS `firemaking_diff`, (`phd`.`crafting` - `phd2`.`crafting`) AS `crafting_diff`, (`phd`.`smithing` - `phd2`.`smithing`) AS `smithing_diff`, (`phd`.`mining` - `phd2`.`mining`) AS `mining_diff`, (`phd`.`herblore` - `phd2`.`herblore`) AS `herblore_diff`, (`phd`.`agility` - `phd2`.`agility`) AS `agility_diff`, (`phd`.`thieving` - `phd2`.`thieving`) AS `thieving_diff`, (`phd`.`slayer` - `phd2`.`slayer`) AS `slayer_diff`, (`phd`.`farming` - `phd2`.`farming`) AS `farming_diff`, (`phd`.`runecraft` - `phd2`.`runecraft`) AS `runecraft_diff`, (`phd`.`hunter` - `phd2`.`hunter`) AS `hunter_diff`, (`phd`.`construction` - `phd2`.`construction`) AS `construction_diff`, (`phd`.`league` - `phd2`.`league`) AS `league_diff`, (`phd`.`bounty_hunter_hunter` - `phd2`.`bounty_hunter_hunter`) AS `bounty_hunter_hunter_diff`, (`phd`.`bounty_hunter_rogue` - `phd2`.`bounty_hunter_rogue`) AS `bounty_hunter_rogue_diff`, (`phd`.`cs_all` - `phd2`.`cs_all`) AS `cs_all_diff`, (`phd`.`cs_beginner` - `phd2`.`cs_beginner`) AS `cs_beginner_diff`, (`phd`.`cs_easy` - `phd2`.`cs_easy`) AS `cs_easy_diff`, (`phd`.`cs_medium` - `phd2`.`cs_medium`) AS `cs_medium_diff`, (`phd`.`cs_hard` - `phd2`.`cs_hard`) AS `cs_hard_diff`, (`phd`.`cs_elite` - `phd2`.`cs_elite`) AS `cs_elite_diff`, (`phd`.`cs_master` - `phd2`.`cs_master`) AS `cs_master_diff`, (`phd`.`lms_rank` - `phd2`.`lms_rank`) AS `lms_rank_diff`, (`phd`.`soul_wars_zeal` - `phd2`.`soul_wars_zeal`) AS `soul_wars_zeal_diff`, (`phd`.`abyssal_sire` - `phd2`.`abyssal_sire`) AS `abyssal_sire_diff`, (`phd`.`alchemical_hydra` - `phd2`.`alchemical_hydra`) AS `alchemical_hydra_diff`, (`phd`.`barrows_chests` - `phd2`.`barrows_chests`) AS `barrows_chests_diff`, (`phd`.`bryophyta` - `phd2`.`bryophyta`) AS `bryophyta_diff`, (`phd`.`callisto` - `phd2`.`callisto`) AS `callisto_diff`, (`phd`.`cerberus` - `phd2`.`cerberus`) AS `cerberus_diff`, (`phd`.`chambers_of_xeric` - `phd2`.`chambers_of_xeric`) AS `chambers_of_xeric_diff`, (`phd`.`chambers_of_xeric_challenge_mode` - `phd2`.`chambers_of_xeric_challenge_mode`) AS `chambers_of_xeric_challenge_mode_diff`, (`phd`.`chaos_elemental` - `phd2`.`chaos_elemental`) AS `chaos_elemental_diff`, (`phd`.`chaos_fanatic` - `phd2`.`chaos_fanatic`) AS `chaos_fanatic_diff`, (`phd`.`commander_zilyana` - `phd2`.`commander_zilyana`) AS `commander_zilyana_diff`, (`phd`.`corporeal_beast` - `phd2`.`corporeal_beast`) AS `corporeal_beast_diff`, (`phd`.`crazy_archaeologist` - `phd2`.`crazy_archaeologist`) AS `crazy_archaeologist_diff`, (`phd`.`dagannoth_prime` - `phd2`.`dagannoth_prime`) AS `dagannoth_prime_diff`, (`phd`.`dagannoth_rex` - `phd2`.`dagannoth_rex`) AS `dagannoth_rex_diff`, (`phd`.`dagannoth_supreme` - `phd2`.`dagannoth_supreme`) AS `dagannoth_supreme_diff`, (`phd`.`deranged_archaeologist` - `phd2`.`deranged_archaeologist`) AS `deranged_archaeologist_diff`, (`phd`.`general_graardor` - `phd2`.`general_graardor`) AS `general_graardor_diff`, (`phd`.`giant_mole` - `phd2`.`giant_mole`) AS `giant_mole_diff`, (`phd`.`grotesque_guardians` - `phd2`.`grotesque_guardians`) AS `grotesque_guardians_diff`, (`phd`.`hespori` - `phd2`.`hespori`) AS `hespori_diff`, (`phd`.`kalphite_queen` - `phd2`.`kalphite_queen`) AS `kalphite_queen_diff`, (`phd`.`king_black_dragon` - `phd2`.`king_black_dragon`) AS `king_black_dragon_diff`, (`phd`.`kraken` - `phd2`.`kraken`) AS `kraken_diff`, (`phd`.`kreearra` - `phd2`.`kreearra`) AS `kreearra_diff`, (`phd`.`kril_tsutsaroth` - `phd2`.`kril_tsutsaroth`) AS `kril_tsutsaroth_diff`, (`phd`.`mimic` - `phd2`.`mimic`) AS `mimic_diff`, (`phd`.`nightmare` - `phd2`.`nightmare`) AS `nightmare_diff`, (`phd`.`obor` - `phd2`.`obor`) AS `obor_diff`, (`phd`.`sarachnis` - `phd2`.`sarachnis`) AS `sarachnis_diff`, (`phd`.`scorpia` - `phd2`.`scorpia`) AS `scorpia_diff`, (`phd`.`skotizo` - `phd2`.`skotizo`) AS `skotizo_diff`, (`phd`.`the_gauntlet` - `phd2`.`the_gauntlet`) AS `the_gauntlet_diff`, (`phd`.`the_corrupted_gauntlet` - `phd2`.`the_corrupted_gauntlet`) AS `the_corrupted_gauntlet_diff`, (`phd`.`theatre_of_blood` - `phd2`.`theatre_of_blood`) AS `theatre_of_blood_diff`, (`phd`.`thermonuclear_smoke_devil` - `phd2`.`thermonuclear_smoke_devil`) AS `thermonuclear_smoke_devil_diff`, (`phd`.`tzkal_zuk` - `phd2`.`tzkal_zuk`) AS `tzkal_zuk_diff`, (`phd`.`tztok_jad` - `phd2`.`tztok_jad`) AS `tztok_jad_diff`, (`phd`.`venenatis` - `phd2`.`venenatis`) AS `venenatis_diff`, (`phd`.`vetion` - `phd2`.`vetion`) AS `vetion_diff`, (`phd`.`vorkath` - `phd2`.`vorkath`) AS `vorkath_diff`, (`phd`.`wintertodt` - `phd2`.`wintertodt`) AS `wintertodt_diff`, (`phd`.`zalcano` - `phd2`.`zalcano`) AS `zalcano_diff`, (`phd`.`zulrah` - `phd2`.`zulrah`) AS `zulrah_diff` FROM ((`Players` `p` join `hiscoreTableLatest` `phd` on((`p`.`id` = `phd`.`Player_id`))) join `playerHiscoreData` `phd2` on(((`p`.`id` = `phd2`.`Player_id`) and ((`phd`.`ts_date` - 1) = `phd2`.`ts_date`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `hiscoreTableStats`
--
DROP TABLE IF EXISTS `hiscoreTableStats`;

CREATE  VIEW `hiscoreTableStats`  AS SELECT count(0) AS `hiscore_Players_checked`, cast(`playerHiscoreData`.`timestamp` as date) AS `hiscore_checked_date` FROM `playerHiscoreData` GROUP BY cast(`playerHiscoreData`.`timestamp` as date) ORDER BY cast(`playerHiscoreData`.`timestamp` as date) DESC ;

-- --------------------------------------------------------

--
-- Structure for view `labelParents`
--
DROP TABLE IF EXISTS `labelParents`;

CREATE  VIEW `labelParents`  AS SELECT `lbl`.`label` AS `child_label`, (case when (`lblp`.`label` is null) then `lbl`.`label` else `lblp`.`label` end) AS `parent_label` FROM ((`Labels` `lbl` left join `LabelSubGroup` `lsgc` on((`lbl`.`id` = `lsgc`.`child_label`))) left join `Labels` `lblp` on((`lsgc`.`parent_label` = `lblp`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `playerPossibleBanPrediction`
--
DROP TABLE IF EXISTS `playerPossibleBanPrediction`;

CREATE  VIEW `playerPossibleBanPrediction`  AS SELECT `pl`.`id` AS `id`, `pl`.`name` AS `name`, `pl`.`created_at` AS `created_at`, `pl`.`updated_at` AS `updated_at`, `pl`.`possible_ban` AS `possible_ban`, `pl`.`confirmed_ban` AS `confirmed_ban`, `pl`.`confirmed_player` AS `confirmed_player`, `pl`.`label_id` AS `label_id`, `pl`.`label_jagex` AS `label_jagex`, `pr`.`prediction` AS `prediction` FROM (`Players` `pl` join `Predictions` `pr` on((`pl`.`id` = `pr`.`id`))) WHERE ((1 = 1) AND (`pl`.`possible_ban` = 1)) ;

-- --------------------------------------------------------

--
-- Structure for view `playersJagexLabeledWrong`
--
DROP TABLE IF EXISTS `playersJagexLabeledWrong`;

CREATE  VIEW `playersJagexLabeledWrong`  AS SELECT `pl`.`id` AS `id`, `pl`.`name` AS `name`, `pl`.`created_at` AS `created_at`, `pl`.`updated_at` AS `updated_at`, `pl`.`possible_ban` AS `possible_ban`, `pl`.`confirmed_ban` AS `confirmed_ban`, `pl`.`confirmed_player` AS `confirmed_player`, `pl`.`label_id` AS `label_id`, `pl`.`label_jagex` AS `label_jagex` FROM `Players` AS `pl` WHERE ((1 = 1) AND (`pl`.`confirmed_player` = 1) AND (`pl`.`possible_ban` = 1) AND (`pl`.`label_id` <> 2)) ;

-- --------------------------------------------------------

--
-- Structure for view `playersOfInterest`
--
DROP TABLE IF EXISTS `playersOfInterest`;

CREATE  VIEW `playersOfInterest`  AS SELECT `pl`.`id` AS `id`, `pl`.`name` AS `name`, `pl`.`created_at` AS `created_at`, `pl`.`updated_at` AS `updated_at`, `pl`.`possible_ban` AS `possible_ban`, `pl`.`confirmed_ban` AS `confirmed_ban`, `pl`.`confirmed_player` AS `confirmed_player`, `pl`.`label_id` AS `label_id` FROM `Players` AS `pl` WHERE ((1 = 1) AND ((`pl`.`confirmed_ban` = 1) OR (`pl`.`confirmed_player` = 1)) AND (`pl`.`label_id` not in (59,0))) ;

-- --------------------------------------------------------

--
-- Structure for view `playersToBan`
--
DROP TABLE IF EXISTS `playersToBan`;

CREATE  VIEW `playersToBan`  AS SELECT DISTINCT `pl`.`id` AS `player_id`, `pl`.`name` AS `name`, `pl`.`possible_ban` AS `possible_ban`, `pl`.`label_jagex` AS `label_jagex`, `pl`.`confirmed_ban` AS `confirmed_ban`, `rl`.`timestamp` AS `Last_Seen_Time`, (unix_timestamp(`rl`.`timestamp`) * 1000) AS `Last_Seen_unix`, `rid`.`region_name` AS `Last_Seen_region`, `rid`.`region_ID` AS `region_ID`, `pr`.`prediction` AS `prediction`, `pr`.`Predicted_confidence` AS `Predicted_confidence`, `htl`.`total` AS `total`, `htl`.`attack` AS `attack`, `htl`.`defence` AS `defence`, `htl`.`strength` AS `strength`, `htl`.`hitpoints` AS `hitpoints`, `htl`.`ranged` AS `ranged`, `htl`.`prayer` AS `prayer`, `htl`.`magic` AS `magic`, `htl`.`cooking` AS `cooking`, `htl`.`woodcutting` AS `woodcutting`, `htl`.`fletching` AS `fletching`, `htl`.`fishing` AS `fishing`, `htl`.`firemaking` AS `firemaking`, `htl`.`crafting` AS `crafting`, `htl`.`smithing` AS `smithing`, `htl`.`mining` AS `mining`, `htl`.`herblore` AS `herblore`, `htl`.`agility` AS `agility`, `htl`.`thieving` AS `thieving`, `htl`.`slayer` AS `slayer`, `htl`.`farming` AS `farming`, `htl`.`runecraft` AS `runecraft`, `htl`.`hunter` AS `hunter`, `htl`.`construction` AS `construction`, `htl`.`league` AS `league`, `htl`.`bounty_hunter_hunter` AS `bounty_hunter_hunter`, `htl`.`bounty_hunter_rogue` AS `bounty_hunter_rogue`, `htl`.`cs_all` AS `cs_all`, `htl`.`cs_beginner` AS `cs_beginner`, `htl`.`cs_easy` AS `cs_easy`, `htl`.`cs_medium` AS `cs_medium`, `htl`.`cs_hard` AS `cs_hard`, `htl`.`cs_elite` AS `cs_elite`, `htl`.`cs_master` AS `cs_master`, `htl`.`lms_rank` AS `lms_rank`, `htl`.`soul_wars_zeal` AS `soul_wars_zeal`, `htl`.`abyssal_sire` AS `abyssal_sire`, `htl`.`alchemical_hydra` AS `alchemical_hydra`, `htl`.`barrows_chests` AS `barrows_chests`, `htl`.`bryophyta` AS `bryophyta`, `htl`.`callisto` AS `callisto`, `htl`.`cerberus` AS `cerberus`, `htl`.`chambers_of_xeric` AS `chambers_of_xeric`, `htl`.`chambers_of_xeric_challenge_mode` AS `chambers_of_xeric_challenge_mode`, `htl`.`chaos_elemental` AS `chaos_elemental`, `htl`.`chaos_fanatic` AS `chaos_fanatic`, `htl`.`commander_zilyana` AS `commander_zilyana`, `htl`.`corporeal_beast` AS `corporeal_beast`, `htl`.`crazy_archaeologist` AS `crazy_archaeologist`, `htl`.`dagannoth_prime` AS `dagannoth_prime`, `htl`.`dagannoth_rex` AS `dagannoth_rex`, `htl`.`dagannoth_supreme` AS `dagannoth_supreme`, `htl`.`deranged_archaeologist` AS `deranged_archaeologist`, `htl`.`general_graardor` AS `general_graardor`, `htl`.`giant_mole` AS `giant_mole`, `htl`.`grotesque_guardians` AS `grotesque_guardians`, `htl`.`hespori` AS `hespori`, `htl`.`kalphite_queen` AS `kalphite_queen`, `htl`.`king_black_dragon` AS `king_black_dragon`, `htl`.`kraken` AS `kraken`, `htl`.`kreearra` AS `kreearra`, `htl`.`kril_tsutsaroth` AS `kril_tsutsaroth`, `htl`.`mimic` AS `mimic`, `htl`.`nightmare` AS `nightmare`, `htl`.`obor` AS `obor`, `htl`.`sarachnis` AS `sarachnis`, `htl`.`scorpia` AS `scorpia`, `htl`.`skotizo` AS `skotizo`, `htl`.`Tempoross` AS `Tempoross`, `htl`.`the_gauntlet` AS `the_gauntlet`, `htl`.`the_corrupted_gauntlet` AS `the_corrupted_gauntlet`, `htl`.`theatre_of_blood` AS `theatre_of_blood`, `htl`.`thermonuclear_smoke_devil` AS `thermonuclear_smoke_devil`, `htl`.`tzkal_zuk` AS `tzkal_zuk`, `htl`.`tztok_jad` AS `tztok_jad`, `htl`.`venenatis` AS `venenatis`, `htl`.`vetion` AS `vetion`, `htl`.`vorkath` AS `vorkath`, `htl`.`wintertodt` AS `wintertodt`, `htl`.`zalcano` AS `zalcano`, `htl`.`zulrah` AS `zulrah` FROM ((((`reportLatest` `rl` join `regionIDNames` `rid` on((`rl`.`region_id` = `rid`.`region_ID`))) join `Players` `pl` on((`rl`.`reported_id` = `pl`.`id`))) join `Predictions` `pr` on((`rl`.`reported_id` = `pr`.`id`))) join `playerHiscoreDataLatest` `htl` on((`rl`.`reported_id` = `htl`.`Player_id`))) WHERE ((1 = 1) AND (`pr`.`Predicted_confidence` > 90) AND (`pr`.`prediction` <> 'Real_Player') AND (`pl`.`label_jagex` <> 2) AND (`pl`.`confirmed_ban` = 0)) ORDER BY `pr`.`prediction` ASC, `pr`.`Predicted_confidence` DESC, `pl`.`name` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `playersToReport`
--
DROP TABLE IF EXISTS `playersToReport`;

CREATE  VIEW `playersToReport`  AS SELECT `pl`.`name` AS `name`, `pl`.`created_at` AS `created_at`, `pl`.`updated_at` AS `updated_at`, `pl`.`possible_ban` AS `possible_ban`, `pl`.`confirmed_ban` AS `confirmed_ban`, `pr`.`prediction` AS `prediction`, `pr`.`Predicted_confidence` AS `Predicted_confidence`, `hdl`.`id` AS `id`, `hdl`.`timestamp` AS `timestamp`, `hdl`.`ts_date` AS `ts_date`, `hdl`.`Player_id` AS `Player_id`, `hdl`.`total` AS `total`, `hdl`.`attack` AS `attack`, `hdl`.`defence` AS `defence`, `hdl`.`strength` AS `strength`, `hdl`.`hitpoints` AS `hitpoints`, `hdl`.`ranged` AS `ranged`, `hdl`.`prayer` AS `prayer`, `hdl`.`magic` AS `magic`, `hdl`.`cooking` AS `cooking`, `hdl`.`woodcutting` AS `woodcutting`, `hdl`.`fletching` AS `fletching`, `hdl`.`fishing` AS `fishing`, `hdl`.`firemaking` AS `firemaking`, `hdl`.`crafting` AS `crafting`, `hdl`.`smithing` AS `smithing`, `hdl`.`mining` AS `mining`, `hdl`.`herblore` AS `herblore`, `hdl`.`agility` AS `agility`, `hdl`.`thieving` AS `thieving`, `hdl`.`slayer` AS `slayer`, `hdl`.`farming` AS `farming`, `hdl`.`runecraft` AS `runecraft`, `hdl`.`hunter` AS `hunter`, `hdl`.`construction` AS `construction`, `hdl`.`league` AS `league`, `hdl`.`bounty_hunter_hunter` AS `bounty_hunter_hunter`, `hdl`.`bounty_hunter_rogue` AS `bounty_hunter_rogue`, `hdl`.`cs_all` AS `cs_all`, `hdl`.`cs_beginner` AS `cs_beginner`, `hdl`.`cs_easy` AS `cs_easy`, `hdl`.`cs_medium` AS `cs_medium`, `hdl`.`cs_hard` AS `cs_hard`, `hdl`.`cs_elite` AS `cs_elite`, `hdl`.`cs_master` AS `cs_master`, `hdl`.`lms_rank` AS `lms_rank`, `hdl`.`soul_wars_zeal` AS `soul_wars_zeal`, `hdl`.`abyssal_sire` AS `abyssal_sire`, `hdl`.`alchemical_hydra` AS `alchemical_hydra`, `hdl`.`barrows_chests` AS `barrows_chests`, `hdl`.`bryophyta` AS `bryophyta`, `hdl`.`callisto` AS `callisto`, `hdl`.`cerberus` AS `cerberus`, `hdl`.`chambers_of_xeric` AS `chambers_of_xeric`, `hdl`.`chambers_of_xeric_challenge_mode` AS `chambers_of_xeric_challenge_mode`, `hdl`.`chaos_elemental` AS `chaos_elemental`, `hdl`.`chaos_fanatic` AS `chaos_fanatic`, `hdl`.`commander_zilyana` AS `commander_zilyana`, `hdl`.`corporeal_beast` AS `corporeal_beast`, `hdl`.`crazy_archaeologist` AS `crazy_archaeologist`, `hdl`.`dagannoth_prime` AS `dagannoth_prime`, `hdl`.`dagannoth_rex` AS `dagannoth_rex`, `hdl`.`dagannoth_supreme` AS `dagannoth_supreme`, `hdl`.`deranged_archaeologist` AS `deranged_archaeologist`, `hdl`.`general_graardor` AS `general_graardor`, `hdl`.`giant_mole` AS `giant_mole`, `hdl`.`grotesque_guardians` AS `grotesque_guardians`, `hdl`.`hespori` AS `hespori`, `hdl`.`kalphite_queen` AS `kalphite_queen`, `hdl`.`king_black_dragon` AS `king_black_dragon`, `hdl`.`kraken` AS `kraken`, `hdl`.`kreearra` AS `kreearra`, `hdl`.`kril_tsutsaroth` AS `kril_tsutsaroth`, `hdl`.`mimic` AS `mimic`, `hdl`.`nightmare` AS `nightmare`, `hdl`.`obor` AS `obor`, `hdl`.`sarachnis` AS `sarachnis`, `hdl`.`scorpia` AS `scorpia`, `hdl`.`skotizo` AS `skotizo`, `hdl`.`Tempoross` AS `Tempoross`, `hdl`.`the_gauntlet` AS `the_gauntlet`, `hdl`.`the_corrupted_gauntlet` AS `the_corrupted_gauntlet`, `hdl`.`theatre_of_blood` AS `theatre_of_blood`, `hdl`.`thermonuclear_smoke_devil` AS `thermonuclear_smoke_devil`, `hdl`.`tzkal_zuk` AS `tzkal_zuk`, `hdl`.`tztok_jad` AS `tztok_jad`, `hdl`.`venenatis` AS `venenatis`, `hdl`.`vetion` AS `vetion`, `hdl`.`vorkath` AS `vorkath`, `hdl`.`wintertodt` AS `wintertodt`, `hdl`.`zalcano` AS `zalcano`, `hdl`.`zulrah` AS `zulrah` FROM ((`Predictions` `pr` join `playerHiscoreDataLatest` `hdl` on((`pr`.`id` = `hdl`.`Player_id`))) join `Players` `pl` on((`pr`.`id` = `pl`.`id`))) WHERE ((1 = 1) AND (`pr`.`prediction` <> 'Real_Player') AND (`pr`.`Predicted_confidence` > 75) AND (`pl`.`confirmed_ban` = 0)) ORDER BY `pr`.`prediction` ASC, `pr`.`Predicted_confidence` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `playersToReview`
--
DROP TABLE IF EXISTS `playersToReview`;

CREATE  VIEW `playersToReview`  AS SELECT `pl`.`id` AS `id`, `pl`.`name` AS `name`, `pl`.`created_at` AS `created_at`, `pl`.`updated_at` AS `updated_at`, `pl`.`possible_ban` AS `possible_ban`, `pl`.`confirmed_ban` AS `confirmed_ban`, `pl`.`confirmed_player` AS `confirmed_player`, `pl`.`label_id` AS `label_id`, `pl`.`label_jagex` AS `label_jagex`, `pr`.`prediction` AS `prediction`, `pr`.`Predicted_confidence` AS `Predicted_confidence`, `phd`.`mytotal` AS `total`, `phd`.`attack` AS `attack`, `phd`.`defence` AS `defence`, `phd`.`strength` AS `strength`, `phd`.`hitpoints` AS `hitpoints`, `phd`.`ranged` AS `ranged`, `phd`.`prayer` AS `prayer`, `phd`.`magic` AS `magic`, `phd`.`cooking` AS `cooking`, `phd`.`woodcutting` AS `woodcutting`, `phd`.`fletching` AS `fletching`, `phd`.`fishing` AS `fishing`, `phd`.`firemaking` AS `firemaking`, `phd`.`crafting` AS `crafting`, `phd`.`smithing` AS `smithing`, `phd`.`mining` AS `mining`, `phd`.`herblore` AS `herblore`, `phd`.`agility` AS `agility`, `phd`.`thieving` AS `thieving`, `phd`.`slayer` AS `slayer`, `phd`.`farming` AS `farming`, `phd`.`runecraft` AS `runecraft`, `phd`.`hunter` AS `hunter`, `phd`.`construction` AS `construction`, (`phd`.`attack` / `phd`.`mytotal`) AS `attack_ratio`, (`phd`.`defence` / `phd`.`mytotal`) AS `defence_ratio`, (`phd`.`strength` / `phd`.`mytotal`) AS `strength_ratio`, (`phd`.`hitpoints` / `phd`.`mytotal`) AS `hitpoints_ratio`, (`phd`.`ranged` / `phd`.`mytotal`) AS `ranged_ratio`, (`phd`.`prayer` / `phd`.`mytotal`) AS `prayer_ratio`, (`phd`.`magic` / `phd`.`mytotal`) AS `magic_ratio`, (`phd`.`cooking` / `phd`.`mytotal`) AS `cooking_ratio`, (`phd`.`woodcutting` / `phd`.`mytotal`) AS `woodcutting_ratio`, (`phd`.`fletching` / `phd`.`mytotal`) AS `fletching_ratio`, (`phd`.`fishing` / `phd`.`mytotal`) AS `fishing_ratio`, (`phd`.`firemaking` / `phd`.`mytotal`) AS `firemaking_ratio`, (`phd`.`crafting` / `phd`.`mytotal`) AS `crafting_ratio`, (`phd`.`smithing` / `phd`.`mytotal`) AS `smithing_ratio`, (`phd`.`mining` / `phd`.`mytotal`) AS `mining_ratio`, (`phd`.`herblore` / `phd`.`mytotal`) AS `herblore_ratio`, (`phd`.`agility` / `phd`.`mytotal`) AS `agility_ratio`, (`phd`.`thieving` / `phd`.`mytotal`) AS `thieving_ratio`, (`phd`.`slayer` / `phd`.`mytotal`) AS `slayer_ratio`, (`phd`.`farming` / `phd`.`mytotal`) AS `farming_ratio`, (`phd`.`runecraft` / `phd`.`mytotal`) AS `runecrafting_ratio`, (`phd`.`hunter` / `phd`.`mytotal`) AS `hunter_ratio`, (`phd`.`construction` / `phd`.`mytotal`) AS `construction_ratio`, `phd`.`league` AS `league`, `phd`.`bounty_hunter_hunter` AS `bounty_hunter_hunter`, `phd`.`bounty_hunter_rogue` AS `bounty_hunter_rogue`, `phd`.`cs_all` AS `cs_all`, `phd`.`cs_beginner` AS `cs_beginner`, `phd`.`cs_easy` AS `cs_easy`, `phd`.`cs_medium` AS `cs_medium`, `phd`.`cs_hard` AS `cs_hard`, `phd`.`cs_elite` AS `cs_elite`, `phd`.`cs_master` AS `cs_master`, `phd`.`lms_rank` AS `lms_rank`, `phd`.`soul_wars_zeal` AS `soul_wars_zeal`, `phd`.`abyssal_sire` AS `abyssal_sire`, `phd`.`alchemical_hydra` AS `alchemical_hydra`, `phd`.`barrows_chests` AS `barrows_chests`, `phd`.`bryophyta` AS `bryophyta`, `phd`.`callisto` AS `callisto`, `phd`.`cerberus` AS `cerberus`, `phd`.`chambers_of_xeric` AS `chambers_of_xeric`, `phd`.`chambers_of_xeric_challenge_mode` AS `chambers_of_xeric_challenge_mode`, `phd`.`chaos_elemental` AS `chaos_elemental`, `phd`.`chaos_fanatic` AS `chaos_fanatic`, `phd`.`commander_zilyana` AS `commander_zilyana`, `phd`.`corporeal_beast` AS `corporeal_beast`, `phd`.`crazy_archaeologist` AS `crazy_archaeologist`, `phd`.`dagannoth_prime` AS `dagannoth_prime`, `phd`.`dagannoth_rex` AS `dagannoth_rex`, `phd`.`dagannoth_supreme` AS `dagannoth_supreme`, `phd`.`deranged_archaeologist` AS `deranged_archaeologist`, `phd`.`general_graardor` AS `general_graardor`, `phd`.`giant_mole` AS `giant_mole`, `phd`.`grotesque_guardians` AS `grotesque_guardians`, `phd`.`hespori` AS `hespori`, `phd`.`kalphite_queen` AS `kalphite_queen`, `phd`.`king_black_dragon` AS `king_black_dragon`, `phd`.`kraken` AS `kraken`, `phd`.`kreearra` AS `kreearra`, `phd`.`kril_tsutsaroth` AS `kril_tsutsaroth`, `phd`.`mimic` AS `mimic`, `phd`.`nightmare` AS `nightmare`, `phd`.`obor` AS `obor`, `phd`.`sarachnis` AS `sarachnis`, `phd`.`scorpia` AS `scorpia`, `phd`.`skotizo` AS `skotizo`, `phd`.`Tempoross` AS `Tempoross`, `phd`.`the_gauntlet` AS `the_gauntlet`, `phd`.`the_corrupted_gauntlet` AS `the_corrupted_gauntlet`, `phd`.`theatre_of_blood` AS `theatre_of_blood`, `phd`.`thermonuclear_smoke_devil` AS `thermonuclear_smoke_devil`, `phd`.`tzkal_zuk` AS `tzkal_zuk`, `phd`.`tztok_jad` AS `tztok_jad`, `phd`.`venenatis` AS `venenatis`, `phd`.`vetion` AS `vetion`, `phd`.`vorkath` AS `vorkath`, `phd`.`wintertodt` AS `wintertodt`, `phd`.`zalcano` AS `zalcano`, `phd`.`zulrah` AS `zulrah` FROM (((select `playerHiscoreDataLatest`.`id` AS `id`,`playerHiscoreDataLatest`.`timestamp` AS `timestamp`,`playerHiscoreDataLatest`.`ts_date` AS `ts_date`,`playerHiscoreDataLatest`.`Player_id` AS `Player_id`,`playerHiscoreDataLatest`.`total` AS `total`,`playerHiscoreDataLatest`.`attack` AS `attack`,`playerHiscoreDataLatest`.`defence` AS `defence`,`playerHiscoreDataLatest`.`strength` AS `strength`,`playerHiscoreDataLatest`.`hitpoints` AS `hitpoints`,`playerHiscoreDataLatest`.`ranged` AS `ranged`,`playerHiscoreDataLatest`.`prayer` AS `prayer`,`playerHiscoreDataLatest`.`magic` AS `magic`,`playerHiscoreDataLatest`.`cooking` AS `cooking`,`playerHiscoreDataLatest`.`woodcutting` AS `woodcutting`,`playerHiscoreDataLatest`.`fletching` AS `fletching`,`playerHiscoreDataLatest`.`fishing` AS `fishing`,`playerHiscoreDataLatest`.`firemaking` AS `firemaking`,`playerHiscoreDataLatest`.`crafting` AS `crafting`,`playerHiscoreDataLatest`.`smithing` AS `smithing`,`playerHiscoreDataLatest`.`mining` AS `mining`,`playerHiscoreDataLatest`.`herblore` AS `herblore`,`playerHiscoreDataLatest`.`agility` AS `agility`,`playerHiscoreDataLatest`.`thieving` AS `thieving`,`playerHiscoreDataLatest`.`slayer` AS `slayer`,`playerHiscoreDataLatest`.`farming` AS `farming`,`playerHiscoreDataLatest`.`runecraft` AS `runecraft`,`playerHiscoreDataLatest`.`hunter` AS `hunter`,`playerHiscoreDataLatest`.`construction` AS `construction`,`playerHiscoreDataLatest`.`league` AS `league`,`playerHiscoreDataLatest`.`bounty_hunter_hunter` AS `bounty_hunter_hunter`,`playerHiscoreDataLatest`.`bounty_hunter_rogue` AS `bounty_hunter_rogue`,`playerHiscoreDataLatest`.`cs_all` AS `cs_all`,`playerHiscoreDataLatest`.`cs_beginner` AS `cs_beginner`,`playerHiscoreDataLatest`.`cs_easy` AS `cs_easy`,`playerHiscoreDataLatest`.`cs_medium` AS `cs_medium`,`playerHiscoreDataLatest`.`cs_hard` AS `cs_hard`,`playerHiscoreDataLatest`.`cs_elite` AS `cs_elite`,`playerHiscoreDataLatest`.`cs_master` AS `cs_master`,`playerHiscoreDataLatest`.`lms_rank` AS `lms_rank`,`playerHiscoreDataLatest`.`soul_wars_zeal` AS `soul_wars_zeal`,`playerHiscoreDataLatest`.`abyssal_sire` AS `abyssal_sire`,`playerHiscoreDataLatest`.`alchemical_hydra` AS `alchemical_hydra`,`playerHiscoreDataLatest`.`barrows_chests` AS `barrows_chests`,`playerHiscoreDataLatest`.`bryophyta` AS `bryophyta`,`playerHiscoreDataLatest`.`callisto` AS `callisto`,`playerHiscoreDataLatest`.`cerberus` AS `cerberus`,`playerHiscoreDataLatest`.`chambers_of_xeric` AS `chambers_of_xeric`,`playerHiscoreDataLatest`.`chambers_of_xeric_challenge_mode` AS `chambers_of_xeric_challenge_mode`,`playerHiscoreDataLatest`.`chaos_elemental` AS `chaos_elemental`,`playerHiscoreDataLatest`.`chaos_fanatic` AS `chaos_fanatic`,`playerHiscoreDataLatest`.`commander_zilyana` AS `commander_zilyana`,`playerHiscoreDataLatest`.`corporeal_beast` AS `corporeal_beast`,`playerHiscoreDataLatest`.`crazy_archaeologist` AS `crazy_archaeologist`,`playerHiscoreDataLatest`.`dagannoth_prime` AS `dagannoth_prime`,`playerHiscoreDataLatest`.`dagannoth_rex` AS `dagannoth_rex`,`playerHiscoreDataLatest`.`dagannoth_supreme` AS `dagannoth_supreme`,`playerHiscoreDataLatest`.`deranged_archaeologist` AS `deranged_archaeologist`,`playerHiscoreDataLatest`.`general_graardor` AS `general_graardor`,`playerHiscoreDataLatest`.`giant_mole` AS `giant_mole`,`playerHiscoreDataLatest`.`grotesque_guardians` AS `grotesque_guardians`,`playerHiscoreDataLatest`.`hespori` AS `hespori`,`playerHiscoreDataLatest`.`kalphite_queen` AS `kalphite_queen`,`playerHiscoreDataLatest`.`king_black_dragon` AS `king_black_dragon`,`playerHiscoreDataLatest`.`kraken` AS `kraken`,`playerHiscoreDataLatest`.`kreearra` AS `kreearra`,`playerHiscoreDataLatest`.`kril_tsutsaroth` AS `kril_tsutsaroth`,`playerHiscoreDataLatest`.`mimic` AS `mimic`,`playerHiscoreDataLatest`.`nightmare` AS `nightmare`,`playerHiscoreDataLatest`.`obor` AS `obor`,`playerHiscoreDataLatest`.`sarachnis` AS `sarachnis`,`playerHiscoreDataLatest`.`scorpia` AS `scorpia`,`playerHiscoreDataLatest`.`skotizo` AS `skotizo`,`playerHiscoreDataLatest`.`Tempoross` AS `Tempoross`,`playerHiscoreDataLatest`.`the_gauntlet` AS `the_gauntlet`,`playerHiscoreDataLatest`.`the_corrupted_gauntlet` AS `the_corrupted_gauntlet`,`playerHiscoreDataLatest`.`theatre_of_blood` AS `theatre_of_blood`,`playerHiscoreDataLatest`.`theatre_of_blood_hard` AS `theatre_of_blood_hard`,`playerHiscoreDataLatest`.`thermonuclear_smoke_devil` AS `thermonuclear_smoke_devil`,`playerHiscoreDataLatest`.`tzkal_zuk` AS `tzkal_zuk`,`playerHiscoreDataLatest`.`tztok_jad` AS `tztok_jad`,`playerHiscoreDataLatest`.`venenatis` AS `venenatis`,`playerHiscoreDataLatest`.`vetion` AS `vetion`,`playerHiscoreDataLatest`.`vorkath` AS `vorkath`,`playerHiscoreDataLatest`.`wintertodt` AS `wintertodt`,`playerHiscoreDataLatest`.`zalcano` AS `zalcano`,`playerHiscoreDataLatest`.`zulrah` AS `zulrah`,((((((((((((((((((((((`playerHiscoreDataLatest`.`attack` + `playerHiscoreDataLatest`.`defence`) + `playerHiscoreDataLatest`.`strength`) + `playerHiscoreDataLatest`.`hitpoints`) + `playerHiscoreDataLatest`.`ranged`) + `playerHiscoreDataLatest`.`prayer`) + `playerHiscoreDataLatest`.`magic`) + `playerHiscoreDataLatest`.`cooking`) + `playerHiscoreDataLatest`.`woodcutting`) + `playerHiscoreDataLatest`.`fletching`) + `playerHiscoreDataLatest`.`fishing`) + `playerHiscoreDataLatest`.`firemaking`) + `playerHiscoreDataLatest`.`crafting`) + `playerHiscoreDataLatest`.`smithing`) + `playerHiscoreDataLatest`.`mining`) + `playerHiscoreDataLatest`.`herblore`) + `playerHiscoreDataLatest`.`agility`) + `playerHiscoreDataLatest`.`thieving`) + `playerHiscoreDataLatest`.`slayer`) + `playerHiscoreDataLatest`.`farming`) + `playerHiscoreDataLatest`.`runecraft`) + `playerHiscoreDataLatest`.`hunter`) + `playerHiscoreDataLatest`.`construction`) AS `mytotal` from `playerHiscoreDataLatest`) `phd` join `Players` `pl` on((`phd`.`Player_id` = `pl`.`id`))) join `Predictions` `pr` on((`phd`.`Player_id` = `pr`.`id`))) WHERE ((1 = 1) AND (`pl`.`possible_ban` = 1) AND (`pl`.`label_id` = 0) AND (`pl`.`label_jagex` = 2)) ;

-- --------------------------------------------------------

--
-- Structure for view `playersToScrape`
--
DROP TABLE IF EXISTS `playersToScrape`;

CREATE  VIEW `playersToScrape`  AS SELECT `Players`.`id` AS `id`, `Players`.`name` AS `name`, `Players`.`created_at` AS `created_at`, `Players`.`updated_at` AS `updated_at`, `Players`.`possible_ban` AS `possible_ban`, `Players`.`confirmed_ban` AS `confirmed_ban`, `Players`.`confirmed_player` AS `confirmed_player`, `Players`.`label_id` AS `label_id`, `Players`.`label_jagex` AS `label_jagex` FROM `Players` WHERE ((1 = 1) AND (`Players`.`confirmed_ban` = 0) AND ((cast(`Players`.`updated_at` as date) < cast(curdate() as date)) OR (`Players`.`updated_at` is null))) ORDER BY `Players`.`updated_at` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `playerTableStats`
--
DROP TABLE IF EXISTS `playerTableStats`;

CREATE  VIEW `playerTableStats`  AS SELECT count(0) AS `Players_checked`, cast(`Players`.`updated_at` as date) AS `last_checked_date` FROM `Players` GROUP BY cast(`Players`.`updated_at` as date) ORDER BY cast(`Players`.`updated_at` as date) DESC ;

-- --------------------------------------------------------

--
-- Structure for view `player_updates_hour`
--
DROP TABLE IF EXISTS `player_updates_hour`;

CREATE  VIEW `player_updates_hour`  AS SELECT cast(`Players`.`updated_at` as date) AS `date`, hour(`Players`.`updated_at`) AS `hour`, count(0) AS `player_updated_at` FROM `Players` GROUP BY cast(`Players`.`updated_at` as date), hour(`Players`.`updated_at`) ORDER BY cast(`Players`.`updated_at` as date) DESC, hour(`Players`.`updated_at`) DESC ;

-- --------------------------------------------------------

--
-- Structure for view `regionTrainingData`
--
DROP TABLE IF EXISTS `regionTrainingData`;

CREATE  VIEW `regionTrainingData`  AS SELECT `pl`.`id` AS `id`, `pl`.`confirmed_ban` AS `confirmed_ban`, `pl`.`confirmed_player` AS `confirmed_player`, `pl`.`possible_ban` AS `possible_ban`, `pl`.`label_id` AS `label_id`, `rp`.`region_id` AS `region_id`, count(`rp`.`region_id`) AS `COUNT(rp.region_id)` FROM (`Reports` `rp` join `Players` `pl` on((`pl`.`id` = `rp`.`reportedID`))) WHERE (((1 = 1) AND (`pl`.`confirmed_ban` = 1)) OR (`pl`.`possible_ban` = 1) OR (`pl`.`confirmed_player` = 1)) GROUP BY `rp`.`region_id`, `rp`.`region_id`, `pl`.`id`, `pl`.`confirmed_ban`, `pl`.`possible_ban`, `pl`.`confirmed_player`, `pl`.`label_id` ORDER BY `pl`.`id` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `reportBanLocations`
--
DROP TABLE IF EXISTS `reportBanLocations`;

CREATE  VIEW `reportBanLocations`  AS SELECT `pl`.`id` AS `id`, `pl`.`confirmed_ban` AS `confirmed_ban`, `pl`.`confirmed_player` AS `confirmed_player`, `pl`.`possible_ban` AS `possible_ban`, `pl`.`label_id` AS `label_id`, `rp`.`region_id` AS `region_id`, count(`rp`.`region_id`) AS `COUNT(rp.region_id)` FROM (`Reports` `rp` join `Players` `pl` on((`pl`.`id` = `rp`.`reportedID`))) WHERE (((1 = 1) AND (`pl`.`confirmed_ban` = 1)) OR (`pl`.`possible_ban` = 1) OR (`pl`.`confirmed_player` = 1)) GROUP BY `rp`.`region_id`, `rp`.`region_id`, `pl`.`id`, `pl`.`confirmed_ban`, `pl`.`possible_ban`, `pl`.`confirmed_player`, `pl`.`label_id` ORDER BY `pl`.`id` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `reportedRegion`
--
DROP TABLE IF EXISTS `reportedRegion`;

CREATE  VIEW `reportedRegion`  AS SELECT `rep`.`region_id` AS `region_id`, count(distinct `rep`.`reportedID`) AS `reports`, `rptd`.`possible_ban` AS `possible_ban`, `rptd`.`confirmed_ban` AS `confirmed_ban`, `rptd`.`confirmed_player` AS `confirmed_player` FROM (`Reports` `rep` join `Players` `rptd` on((`rep`.`reportedID` = `rptd`.`id`))) GROUP BY `rep`.`region_id`, `rptd`.`possible_ban`, `rptd`.`confirmed_ban`, `rptd`.`confirmed_player` ORDER BY `rptd`.`possible_ban` DESC, `reports` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `reportingScores`
--
DROP TABLE IF EXISTS `reportingScores`;

CREATE  VIEW `reportingScores`  AS SELECT `rpt`.`name` AS `reporter`, count(distinct `rptd`.`name`) AS `reported`, `rptd`.`possible_ban` AS `possible_ban`, `rptd`.`confirmed_ban` AS `confirmed_ban`, `rptd`.`confirmed_player` AS `confirmed_player` FROM ((`Reports` `rep` join `Players` `rpt` on((`rep`.`reportingID` = `rpt`.`id`))) join `Players` `rptd` on((`rep`.`reportedID` = `rptd`.`id`))) GROUP BY `rpt`.`name`, `rptd`.`possible_ban`, `rptd`.`confirmed_ban`, `rptd`.`confirmed_player` ORDER BY `rptd`.`possible_ban` DESC, `reported` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `ReportTabelStats`
--
DROP TABLE IF EXISTS `ReportTabelStats`;

CREATE  VIEW `ReportTabelStats`  AS SELECT cast(`rp`.`created_at` as date) AS `DATE(created_at)`, count(`rp`.`ID`) AS `COUNT(ID)` FROM `Reports` AS `rp` GROUP BY cast(`rp`.`created_at` as date) ORDER BY cast(`rp`.`created_at` as date) DESC ;

-- --------------------------------------------------------

--
-- Structure for view `xp_banned`
--
DROP TABLE IF EXISTS `xp_banned`;

CREATE  VIEW `xp_banned`  AS SELECT sum(`b`.`attack`) AS `Attack`, sum(`b`.`defence`) AS `Defence`, sum(`b`.`strength`) AS `Strength`, sum(`b`.`hitpoints`) AS `Hitpoints`, sum(`b`.`ranged`) AS `Ranged`, sum(`b`.`prayer`) AS `Prayer`, sum(`b`.`magic`) AS `Magic`, sum(`b`.`cooking`) AS `Cooking`, sum(`b`.`woodcutting`) AS `Woodcutting`, sum(`b`.`fletching`) AS `Fletching`, sum(`b`.`fishing`) AS `Fishing`, sum(`b`.`firemaking`) AS `Firemaking`, sum(`b`.`crafting`) AS `Crafting`, sum(`b`.`smithing`) AS `Smithing`, sum(`b`.`mining`) AS `Mining`, sum(`b`.`herblore`) AS `Herblore`, sum(`b`.`agility`) AS `Agility`, sum(`b`.`thieving`) AS `Thieving`, sum(`b`.`slayer`) AS `Slayer`, sum(`b`.`farming`) AS `Farming`, sum(`b`.`runecraft`) AS `Runecraft`, sum(`b`.`hunter`) AS `Hunter`, sum(`b`.`construction`) AS `Construction`, ((((((((((((((((((((((sum(`b`.`attack`) + sum(`b`.`defence`)) + sum(`b`.`strength`)) + sum(`b`.`hitpoints`)) + sum(`b`.`ranged`)) + sum(`b`.`prayer`)) + sum(`b`.`magic`)) + sum(`b`.`cooking`)) + sum(`b`.`woodcutting`)) + sum(`b`.`fletching`)) + sum(`b`.`fishing`)) + sum(`b`.`firemaking`)) + sum(`b`.`crafting`)) + sum(`b`.`smithing`)) + sum(`b`.`mining`)) + sum(`b`.`herblore`)) + sum(`b`.`agility`)) + sum(`b`.`thieving`)) + sum(`b`.`slayer`)) + sum(`b`.`farming`)) + sum(`b`.`runecraft`)) + sum(`b`.`hunter`)) + sum(`b`.`construction`)) AS `total_xp_banned` FROM (`Players` `a` join `hiscoreTableLatest` `b` on((`a`.`id` = `b`.`Player_id`))) WHERE ((1 = 1) AND (`a`.`confirmed_ban` = 1)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `LabelJagex`
--
ALTER TABLE `LabelJagex`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Labels`
--
ALTER TABLE `Labels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Unique_label` (`id`);

--
-- Indexes for table `LabelSubGroup`
--
ALTER TABLE `LabelSubGroup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_lbl_lblsub_parent` (`parent_label`),
  ADD KEY `FK_lbl_lblsub_child` (`child_label`);

--
-- Indexes for table `PlayerBotConfirmation`
--
ALTER TABLE `PlayerBotConfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Unique_player_label_bot` (`player_id`,`label_id`,`bot`);

--
-- Indexes for table `playerChatHistory`
--
ALTER TABLE `playerChatHistory`
  ADD PRIMARY KEY (`entry_id`),
  ADD KEY `reportedID` (`reportedID`),
  ADD KEY `reportingID` (`reportingID`);

--
-- Indexes for table `playerHiscoreData`
--
ALTER TABLE `playerHiscoreData`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Unique_player_time` (`timestamp`,`Player_id`),
  ADD UNIQUE KEY `Unique_player_date` (`Player_id`,`ts_date`);

--
-- Indexes for table `playerHiscoreDataChanges`
--
ALTER TABLE `playerHiscoreDataChanges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playerHiscoreDataLatest`
--
ALTER TABLE `playerHiscoreDataLatest`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Unique_player` (`Player_id`) USING BTREE;

--
-- Indexes for table `playerHiscoreDataXPChange`
--
ALTER TABLE `playerHiscoreDataXPChange`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_phd_xp_pl` (`Player_id`);

--
-- Indexes for table `Players`
--
ALTER TABLE `Players`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Unique_name` (`name`(50)),
  ADD KEY `FK_label_id` (`label_id`),
  ADD KEY `confirmed_ban_idx` (`confirmed_ban`);

--
-- Indexes for table `PlayersChanges`
--
ALTER TABLE `PlayersChanges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_label_id` (`label_id`);

--
-- Indexes for table `Predictions`
--
ALTER TABLE `Predictions`
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `FK_pred_player_id` (`id`);

--
-- Indexes for table `PredictionsFeedback`
--
ALTER TABLE `PredictionsFeedback`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Unique_Vote` (`prediction`,`subject_id`,`voter_id`) USING BTREE,
  ADD KEY `Voter_ID` (`voter_id`),
  ADD KEY `Subject_ID` (`subject_id`),
  ADD KEY `Reviewer_ID` (`reviewer_id`);

--
-- Indexes for table `regionIDNames`
--
ALTER TABLE `regionIDNames`
  ADD PRIMARY KEY (`entry_ID`),
  ADD UNIQUE KEY `region_ID` (`region_ID`);

--
-- Indexes for table `reportLatest`
--
ALTER TABLE `reportLatest`
  ADD PRIMARY KEY (`reported_id`);

--
-- Indexes for table `Reports`
--
ALTER TABLE `Reports`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Unique_Report` (`reportedID`,`reportingID`,`region_id`,`manual_detect`),
  ADD KEY `reportingID_idx` (`reportingID`),
  ADD KEY `reportedID_idx` (`reportedID`),
  ADD KEY `reportedID` (`reportedID`,`region_id`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `world_number` (`world_number`);

--
-- Indexes for table `sentToJagex`
--
ALTER TABLE `sentToJagex`
  ADD PRIMARY KEY (`entry`);

--
-- Indexes for table `Tokens`
--
ALTER TABLE `Tokens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `LabelJagex`
--
ALTER TABLE `LabelJagex`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Labels`
--
ALTER TABLE `Labels`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `LabelSubGroup`
--
ALTER TABLE `LabelSubGroup`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PlayerBotConfirmation`
--
ALTER TABLE `PlayerBotConfirmation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playerChatHistory`
--
ALTER TABLE `playerChatHistory`
  MODIFY `entry_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playerHiscoreData`
--
ALTER TABLE `playerHiscoreData`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playerHiscoreDataChanges`
--
ALTER TABLE `playerHiscoreDataChanges`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playerHiscoreDataLatest`
--
ALTER TABLE `playerHiscoreDataLatest`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playerHiscoreDataXPChange`
--
ALTER TABLE `playerHiscoreDataXPChange`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Players`
--
ALTER TABLE `Players`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PlayersChanges`
--
ALTER TABLE `PlayersChanges`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PredictionsFeedback`
--
ALTER TABLE `PredictionsFeedback`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regionIDNames`
--
ALTER TABLE `regionIDNames`
  MODIFY `entry_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Reports`
--
ALTER TABLE `Reports`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sentToJagex`
--
ALTER TABLE `sentToJagex`
  MODIFY `entry` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Tokens`
--
ALTER TABLE `Tokens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `LabelSubGroup`
--
ALTER TABLE `LabelSubGroup`
  ADD CONSTRAINT `FK_lbl_lblsub_child` FOREIGN KEY (`child_label`) REFERENCES `Labels` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_lbl_lblsub_parent` FOREIGN KEY (`parent_label`) REFERENCES `Labels` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `playerChatHistory`
--
ALTER TABLE `playerChatHistory`
  ADD CONSTRAINT `playerChatHistory_ibfk_1` FOREIGN KEY (`reportedID`) REFERENCES `Players` (`id`),
  ADD CONSTRAINT `playerChatHistory_ibfk_2` FOREIGN KEY (`reportingID`) REFERENCES `Players` (`id`);

--
-- Constraints for table `playerHiscoreData`
--
ALTER TABLE `playerHiscoreData`
  ADD CONSTRAINT `FK_Players_id` FOREIGN KEY (`Player_id`) REFERENCES `Players` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `playerHiscoreDataLatest`
--
ALTER TABLE `playerHiscoreDataLatest`
  ADD CONSTRAINT `FK_latest_player` FOREIGN KEY (`Player_id`) REFERENCES `Players` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `playerHiscoreDataXPChange`
--
ALTER TABLE `playerHiscoreDataXPChange`
  ADD CONSTRAINT `fk_phd_xp_pl` FOREIGN KEY (`Player_id`) REFERENCES `Players` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `Players`
--
ALTER TABLE `Players`
  ADD CONSTRAINT `FK_label_id` FOREIGN KEY (`label_id`) REFERENCES `Labels` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `Predictions`
--
ALTER TABLE `Predictions`
  ADD CONSTRAINT `FK_pred_player_id` FOREIGN KEY (`id`) REFERENCES `Players` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `PredictionsFeedback`
--
ALTER TABLE `PredictionsFeedback`
  ADD CONSTRAINT `Reviewer_ID` FOREIGN KEY (`reviewer_id`) REFERENCES `Tokens` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `Subject_ID` FOREIGN KEY (`subject_id`) REFERENCES `Players` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `Voter_ID` FOREIGN KEY (`voter_id`) REFERENCES `Players` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `Reports`
--
ALTER TABLE `Reports`
  ADD CONSTRAINT `FK_Reported_Players_id` FOREIGN KEY (`reportedID`) REFERENCES `Players` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_Reporting_Players_id` FOREIGN KEY (`reportingID`) REFERENCES `Players` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
