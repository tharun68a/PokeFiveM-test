-- ====================================================================
-- PokeFiveM - Autonomous Standalone Pokémon RPG Framework
-- Database Schema (Zero ESX Dependency | Fully Indexed & Optimised)
-- Author: Pika Studio
-- ====================================================================

SET FOREIGN_KEY_CHECKS = 0;

-- 1. Characters Table
CREATE TABLE IF NOT EXISTS `pokefivem_characters` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `citizenid` VARCHAR(50) NOT NULL UNIQUE,
    `identifier` VARCHAR(100) NOT NULL,
    `charinfo` LONGTEXT DEFAULT NULL,
    `job` LONGTEXT DEFAULT NULL,
    `money` LONGTEXT DEFAULT NULL,
    `metadata` LONGTEXT DEFAULT NULL,
    `position` LONGTEXT DEFAULT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `last_updated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX `idx_identifier` (`identifier`),
    INDEX `idx_citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 2. Pokemon Storage & Party Table
CREATE TABLE IF NOT EXISTS `pokefivem_pokemon` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `owner` VARCHAR(50) NOT NULL,
    `pokedex_id` INT NOT NULL,
    `nickname` VARCHAR(50) DEFAULT NULL,
    `level` INT DEFAULT 5,
    `exp` INT DEFAULT 0,
    `current_hp` INT DEFAULT 20,
    `max_hp` INT DEFAULT 20,
    `stats` LONGTEXT DEFAULT NULL,
    `ivs` LONGTEXT DEFAULT NULL,
    `evs` LONGTEXT DEFAULT NULL,
    `nature` VARCHAR(30) DEFAULT 'Hardy',
    `ability` VARCHAR(50) DEFAULT NULL,
    `moves` LONGTEXT DEFAULT NULL,
    `status` VARCHAR(20) DEFAULT 'healthy',
    `storage_type` ENUM('party', 'pc', 'daycare') DEFAULT 'party',
    `storage_index` INT DEFAULT 1,
    `pokeball` VARCHAR(30) DEFAULT 'pokeball',
    `is_shiny` TINYINT(1) DEFAULT 0,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    INDEX `idx_owner` (`owner`),
    INDEX `idx_storage` (`owner`, `storage_type`, `storage_index`),
    INDEX `idx_pokedex` (`pokedex_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 3. Pokédex Tracker Table
CREATE TABLE IF NOT EXISTS `pokefivem_pokedex` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `citizenid` VARCHAR(50) NOT NULL UNIQUE,
    `seen` LONGTEXT DEFAULT NULL,
    `caught` LONGTEXT DEFAULT NULL,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX `idx_pokedex_citizen` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 4. Inventory Backup Table (Standalone fallback when ox_inventory isn't used)
CREATE TABLE IF NOT EXISTS `pokefivem_inventory` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `citizenid` VARCHAR(50) NOT NULL,
    `item` VARCHAR(50) NOT NULL,
    `count` INT DEFAULT 1,
    `metadata` LONGTEXT DEFAULT NULL,
    INDEX `idx_inventory_citizen` (`citizenid`),
    INDEX `idx_item` (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 5. Gym Badges & League Table
CREATE TABLE IF NOT EXISTS `pokefivem_gyms` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `citizenid` VARCHAR(50) NOT NULL,
    `gym_id` INT NOT NULL,
    `gym_name` VARCHAR(50) NOT NULL,
    `badge` VARCHAR(50) NOT NULL,
    `defeated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE KEY `unique_gym_badge` (`citizenid`, `gym_id`),
    INDEX `idx_gym_citizen` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 6. Quests & Missions Table
CREATE TABLE IF NOT EXISTS `pokefivem_quests` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `citizenid` VARCHAR(50) NOT NULL,
    `quest_id` VARCHAR(50) NOT NULL,
    `stage` INT DEFAULT 1,
    `completed` TINYINT(1) DEFAULT 0,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    UNIQUE KEY `unique_quest` (`citizenid`, `quest_id`),
    INDEX `idx_quest_citizen` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 7. Daycare Breeding Table
CREATE TABLE IF NOT EXISTS `pokefivem_daycare` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `citizenid` VARCHAR(50) NOT NULL,
    `pokemon_1` INT DEFAULT NULL,
    `pokemon_2` INT DEFAULT NULL,
    `has_egg` TINYINT(1) DEFAULT 0,
    `egg_steps` INT DEFAULT 0,
    `deposited_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    INDEX `idx_daycare_citizen` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;

