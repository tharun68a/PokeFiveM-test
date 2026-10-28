-- ====================================================================
-- PokeFiveM Framework - Complete Database Schema
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- Compatible with oxmysql & MariaDB / MySQL 5.7+
-- ====================================================================

-- 1. Users Table (Core identifier and system permissions)
CREATE TABLE IF NOT EXISTS `pokefivem_users` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `identifier` VARCHAR(64) NOT NULL UNIQUE,
    `license` VARCHAR(64) NOT NULL,
    `name` VARCHAR(64) DEFAULT 'Trainer',
    `permission_group` VARCHAR(32) DEFAULT 'user',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `last_login` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX `idx_license` (`license`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 2. Characters Table (Citizen / Player Profiles)
CREATE TABLE IF NOT EXISTS `pokefivem_characters` (
    `citizenid` VARCHAR(16) NOT NULL PRIMARY KEY,
    `identifier` VARCHAR(64) NOT NULL,
    `charinfo` LONGTEXT DEFAULT '{"firstname":"Red","lastname":"Trainer","birthdate":"2000-01-01","gender":0}',
    `job` LONGTEXT DEFAULT '{"name":"trainer","label":"Pokémon Trainer","grade":0,"grade_name":"Rookie Trainer","payment":75,"onduty":true}',
    `accounts` LONGTEXT DEFAULT '{"cash":1000,"bank":5000,"pokedollars":2500}',
    `metadata` LONGTEXT DEFAULT '{"hunger":100,"thirst":100,"isdead":false,"inlaststand":false,"starter_claimed":false,"badges":[],"battles_won":0,"battles_lost":0,"pokemon_caught":0}',
    `position` LONGTEXT DEFAULT '{"x":298.54,"y":-584.43,"z":43.26,"heading":75.0}',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX `idx_char_identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 3. Native Inventory Table (Slot-based / stack-based)
CREATE TABLE IF NOT EXISTS `pokefivem_inventory` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `citizenid` VARCHAR(16) NOT NULL,
    `item` VARCHAR(32) NOT NULL,
    `count` INT NOT NULL DEFAULT 1,
    `slot` INT NOT NULL DEFAULT 1,
    `metadata` LONGTEXT DEFAULT '{}',
    UNIQUE KEY `unique_char_slot` (`citizenid`, `slot`),
    INDEX `idx_char_item` (`citizenid`, `item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 4. Pokémon Storage (Party & 30 PC Boxes)
CREATE TABLE IF NOT EXISTS `pokefivem_pokemon` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `owner` VARCHAR(64) NOT NULL COMMENT 'citizenid of owner',
    `pokedex_id` INT NOT NULL,
    `nickname` VARCHAR(32) DEFAULT NULL,
    `level` INT NOT NULL DEFAULT 5,
    `exp` INT NOT NULL DEFAULT 0,
    `nature` VARCHAR(20) NOT NULL DEFAULT 'Hardy',
    `ability` VARCHAR(32) NOT NULL DEFAULT 'Overgrow',
    `is_shiny` TINYINT(1) NOT NULL DEFAULT 0,
    `gender` TINYINT(1) NOT NULL DEFAULT 0 COMMENT '0=Male, 1=Female, 2=Genderless',
    `ivs` LONGTEXT NOT NULL COMMENT 'JSON {hp, attack, defense, sp_attack, sp_defense, speed}',
    `evs` LONGTEXT NOT NULL COMMENT 'JSON {hp, attack, defense, sp_attack, sp_defense, speed}',
    `moves` LONGTEXT NOT NULL COMMENT 'JSON array [{key, name, type, power, accuracy, pp, max_pp}]',
    `current_hp` INT NOT NULL DEFAULT 20,
    `max_hp` INT NOT NULL DEFAULT 20,
    `status` VARCHAR(20) NOT NULL DEFAULT 'none' COMMENT 'none, burn, freeze, paralysis, sleep, poison, fainted',
    `storage_type` ENUM('party', 'box', 'daycare') NOT NULL DEFAULT 'party',
    `storage_index` INT NOT NULL DEFAULT 1 COMMENT '1-6 for party, 0-29 for slot inside box',
    `box_number` INT DEFAULT 1 COMMENT '1-30 if storage_type is box',
    `held_item` VARCHAR(32) DEFAULT NULL,
    `original_trainer` VARCHAR(64) NOT NULL,
    `caught_ball` VARCHAR(32) NOT NULL DEFAULT 'pokeball',
    `caught_location` VARCHAR(64) DEFAULT 'Route 1',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    INDEX `idx_owner_storage` (`owner`, `storage_type`, `storage_index`),
    INDEX `idx_pokedex_id` (`pokedex_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 5. Pokédex Tracking Table
CREATE TABLE IF NOT EXISTS `pokefivem_pokedex` (
    `citizenid` VARCHAR(16) NOT NULL PRIMARY KEY,
    `seen` LONGTEXT DEFAULT '[]',
    `caught` LONGTEXT DEFAULT '[]',
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 6. Gym Badges & Progression Table
CREATE TABLE IF NOT EXISTS `pokefivem_gyms` (
    `gym_id` VARCHAR(32) NOT NULL PRIMARY KEY,
    `leader_name` VARCHAR(32) NOT NULL,
    `badge_name` VARCHAR(32) NOT NULL,
    `defeated_by` LONGTEXT DEFAULT '[]',
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 7. Standalone Vehicle Table (ox_inventory trunks & gloveboxes)
CREATE TABLE IF NOT EXISTS `pokefivem_vehicles` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `citizenid` VARCHAR(16) NOT NULL,
    `plate` VARCHAR(12) NOT NULL UNIQUE,
    `vehicle` LONGTEXT DEFAULT '{}',
    `glovebox` LONGTEXT NULL,
    `trunk` LONGTEXT NULL,
    INDEX `idx_veh_citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 8. Compatibility Schema for ox_inventory & Overextended Suite
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
    `owner` VARCHAR(64) DEFAULT NULL,
    `plate` VARCHAR(12) NOT NULL PRIMARY KEY,
    `vehicle` LONGTEXT DEFAULT NULL,
    `type` VARCHAR(20) DEFAULT 'car',
    `job` VARCHAR(20) DEFAULT NULL,
    `stored` TINYINT(1) DEFAULT 0,
    `glovebox` LONGTEXT NULL,
    `trunk` LONGTEXT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `users` (
    `identifier` VARCHAR(64) NOT NULL PRIMARY KEY,
    `inventory` LONGTEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
