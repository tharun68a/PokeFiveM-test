# 🚀 PokeFiveM — Getting Started Guide

> **Official Comprehensive Setup & Administrator Guide for PokeFiveM**  
> **Author:** Pika Studio  
> **Framework:** Standalone Autonomous Pokémon RPG (Zero ESX Dependency)  
> **Reference:** Inspired by the architecture of [Fivemon](https://wiki.fivemon.gg/latest/guides/getting-started/)

---

## 📋 System Prerequisites

Before starting your server, ensure you have the following requirements:

| Component | Minimum Required | Recommended |
| :--- | :--- | :--- |
| **FiveM Server Artifacts** | Build `13068`+ | Latest Recommended (*Avoid unstable build `7290`*) |
| **Database Server** | MySQL 5.7+ / MariaDB 10.4+ | MariaDB 10.6+ with `utf8mb4_unicode_ci` |
| **txAdmin Version** | v7.0.0+ | v8.0.0+ |
| **OneSync** | Required | `set onesync on` |
| **Game Build** | Enforced Build 3258 | `sv_enforceGameBuild 3258` |

---

## 🛠️ Step 1: Choose Your Installation Method

Just like Fivemon, PokeFiveM offers two deployment methods:
- **Method 1: txAdmin Recipe (Recommended)** — Automated 1-click installer that downloads all resources, builds the server config, and migrates the database.
- **Method 2: Manual / Container Setup (Pterodactyl / Docker)** — Direct control over files, configurations, and database imports.

---

### Method 1: txAdmin Recipe (1-Click Automated Setup)

1. **Launch txAdmin**:
   - Start your FiveM server (`run.sh` on Linux or `FXServer.exe` on Windows).
   - Enter your server console PIN in your browser (`http://<server-ip>:40120/`) and link your Cfx.re account.
2. **Select Deployment Type**:
   - On Step 2, choose **Remote URL Template** (or **Custom Template** to paste directly without CDN cache delays).
3. **Recipe URL**:
   - Paste the official raw recipe URL:
     ```text
     https://raw.githubusercontent.com/tharun68a/PokeFiveM-test/main/recipe.yaml
     ```
4. **Deployer Configuration**:
   - **Data Location:** Select your server directory (e.g. `/home/container`).
   - **Database Access:** Enter your MySQL/MariaDB Host (`127.0.0.1`), Port (`3306`), Username, Password, and Database Name (`s15_pikabase`).
   - **Server Keys:** Enter your FiveM Server License Key (`sv_licenseKey`).
5. **Run Recipe**:
   - Click **Run Recipe**. txAdmin will automatically:
     - Download CFX base resources (`[cfx-default]`)
     - Download prebuilt Overextended Suite (`oxmysql`, `ox_lib`, `ox_inventory`, `ox_target`)
     - Download `pma-voice` and `bob74_ipl`
     - Clone `PokeFiveM` framework core
     - Automatically execute [`database/schema.sql`](database/schema.sql)
     - Generate executive modular configs (`server.cfg`, `permissions.cfg`, `voice.cfg`, `ox.cfg`)
6. **Start Server**:
   - Click **Save and Run Server**.

---

### Method 2: Manual / Pterodactyl Container Setup

If deploying directly into a hosting panel (Pterodactyl, cPanel, or VPS):

#### 1. Directory Layout
Ensure your `./resources/` directory is organized as follows:
```
resources/
├── [cfx-default]/       # mapmanager, chat, spawnmanager
├── [ox]/                # oxmysql, ox_lib, ox_target, ox_inventory
├── [voice]/             # pma-voice
├── [standalone]/        # bob74_ipl, scully_emotemenu
└── PokeFiveM/           # Complete Autonomous Pokémon Framework Core
```

#### 2. Database Migration
Open your database management tool (HeidiSQL, phpMyAdmin, or Navicat) and execute [`database/schema.sql`](database/schema.sql) on your database (`s15_pikabase`).

#### 3. Server Configuration (`server.cfg`)
Create or edit your `server.cfg` with the following configuration:

```cfg
endpoint_add_tcp "0.0.0.0:30120"
endpoint_add_udp "0.0.0.0:30120"

sv_maxclients 48
set steam_webApiKey "none"
set sv_licenseKey "cfxk_your_license_here"

set mysql_connection_string "mysql://user:password@127.0.0.1:3306/s15_pikabase?charset=utf8mb4"
set mysql_slow_query_warning 150
set mysql_ui true

sv_enforceGameBuild 3258
set resources_useSystemChat true
set onesync on
set gamename "gta5"
setr sv_stateBagStrictMode true

sv_hostname "PokeFiveM - Pokémon RPG Server [Pika Studio]"
sets sv_projectName "PokeFiveM Framework"
sets sv_projectDesc "Advanced Pokémon RPG with turn-based battles, mounts, buddy AI, PC storage, ox_inventory & ox_target!"
sets tags "pokemon, rpg, standalone, pokefivem, pika, battles, companion, mounts, pokedex"
sets locale "en-US"

exec permissions.cfg
exec voice.cfg
exec ox.cfg

sv_scriptHookAllowed 0

## Core Startup Order
ensure mapmanager
ensure chat
ensure spawnmanager

ensure oxmysql
ensure ox_lib
ensure ox_target
ensure ox_inventory

ensure pma-voice
ensure bob74_ipl
ensure scully_emotemenu

ensure PokeFiveM
```

---

## 🎮 Step 2: First Steps In Game

Once your server is running, launch FiveM and join your server (`connect localhost` or via server browser).

### 1. Starter Pokémon Claiming
- On first join, you will be prompted with the Starter Selection UI.
- Choose between **Bulbasaur** (Grass/Poison), **Charmander** (Fire), or **Squirtle** (Water).
- Your starter Pokémon will be created with random Gen 8 IVs (0-31), authentic base stats, nature modifiers, and initial moves.
- Can also be re-opened by administrators via `/starter`.

### 2. Controls & HUD Interface
- **`[F6]` Party Team Menu:** View your 6 active Pokémon, their current HP, level, moves, types, IVs, and EVs.
- **`[F7]` Pokédex:** View your caught and seen encyclopedia entries across the Kanto region.
- **`[K]` Buddy Companion:** Summon your lead Pokémon to walk beside you in the overworld with dynamic navmesh pathfinding. Press `[K]` again to recall.
- **`[G]` Throw Pokéball:** Aim with your crosshair and throw a Pokéball with real-time 3D parabolic physics toward wild Pokémon.
- **`[E]` Contextual Interact:** Talk to Nurse Joy at PokéCenters, shop at PokéMarts, or initiate wild battles.

### 3. Mounts & Movement
Mount your lead Pokémon for accelerated travel across San Andreas:
- **Ground Mounts:** `/mount` while having Arcanine, Rapidash, or Tauros in lead (Speed boost + `[SPACE]` jump).
- **Water Surfing:** Walk into ocean/river with Lapras or Gyarados in lead (Glides across water surface).
- **Aerial Sky Flight:** `/mount` with Charizard or Dragonite (Pitch & yaw with `[W]`/`[S]`, ascend with `[SPACE]`, descend with `[SHIFT]`).

---

## 🏥 World Facilities & NPCs

### PokéCenters & Nurse Joy
- Located across the map (marked by red blips).
- Walk to the counter or eye-target Nurse Joy (`ox_target`).
- Press **`[E]`** to trigger the healing sequence (restores all party Pokémon HP, status conditions, and PP) with authentic 6-note chime audio.
- Press **`[G]`** to access your **30 PC Storage Boxes** (900 total Pokémon capacity).

### PokéMarts
- Located at 24/7 convenience stores across Los Santos (marked by blue blips).
- Walk to the clerk or eye-target the cashier (`ox_target`).
- Press **`[E]`** to open the PokéMart shopping cart interface.
- Purchase Pokéballs, Great Balls, Ultra Balls, Potions, Revives, and Evolution Stones using **Pokédollars (₽)**.

---

## 📦 Custom 3D Assets ([`stream/`](stream/))

PokeFiveM supports drop-in custom 3D Pokémon ped models, Pokéballs, and props:
1. Place custom streamed `.ydr`, `.yft`, and `.ytd` files into `./resources/PokeFiveM/stream/`:
   - `stream/pika.ydr`, `stream/pika.ytd`
   - `stream/charizard.ydr`, `stream/charizard.ytd`
2. Update the model name in [`config.lua`](config.lua) under `Config.Pokedex[id].Model`.
3. If no custom models are added, the framework gracefully falls back to native GTA animal and pet peds with floating 3D nameplates and health bars.

---

## 🛡️ Administrative Commands

| Command | Arguments | Permission | Description |
| :--- | :--- | :---: | :--- |
| `/givemoney` | `[id] [account] [amount]` | `admin` | Grant cash, bank, or pokedollars (`/givemoney 1 pokedollars 5000`) |
| `/setjob` | `[id] [job] [grade]` | `admin` | Set player's job (`trainer`, `gymleader`, `police`, `medic`) |
| `/spawnwild` | `[pokedexId] [level] [isShiny]` | `admin` | Spawn a wild Pokémon in front of you (`/spawnwild 25 15 true`) |
| `/givepokemon` | `[id] [pokedexId] [level] [shiny]`| `admin` | Give Pokémon directly to player's party or PC |
| `/giveball` | `[id] [ballType] [amount]` | `admin` | Give Pokéballs (`pokeball`, `greatball`, `ultraball`, `masterball`) |
| `/giveitem` | `[id] [itemKey] [count]` | `admin` | Give item (`potion`, `revive`, `firestone`, `pokedex`) |
| `/healteam` | None | `admin` | Immediately heal all 6 party Pokémon to full health |
| `/pc` | None | `admin` | Immediately open the 30 PC Storage Boxes from anywhere |

---

## ❓ Troubleshooting & Common Errors

### 1. `Error 1045: Access denied for user`
- Verify that your MySQL credentials in `set mysql_connection_string` match your Pterodactyl/host database credentials.
- Ensure your database user has permission to connect from the server IP.

### 2. `Table 'owned_vehicles' doesn't exist`
- Ensure you have executed the complete [`database/schema.sql`](database/schema.sql), which contains compatibility tables for `owned_vehicles`, `users`, and `pokefivem_vehicles`.

### 3. `sv_stateBagStrictMode is currently DISABLED`
- Add `setr sv_stateBagStrictMode true` to your `server.cfg` to enable strict state bag security.

---

© 2026 **Pika Studio**. Developed for the FiveM Pokémon community.
