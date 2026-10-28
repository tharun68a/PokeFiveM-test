# PokeFiveM Framework ⚡
> **Advanced Autonomous Pokémon RPG Framework for FiveM**  
> **Author:** Pika Studio  
> **Architecture:** Pure Standalone Framework (Zero ESX Dependency) | Cerulean Lua54 & Vue 3 NUI

---

## 🏛️ Framework Architecture

PokeFiveM is a **self-contained FiveM framework** engineered to eliminate dependencies on legacy frameworks (such as ESX or QBCore). Inspired by top monster-taming architectures like **FiveMon** (`fivemon.gg`), PokeFiveM combines roleplay player lifecycle systems with competitive turn-based monster mechanics.

```
+-----------------------------------------------------------------------------------+
|                              PokeFiveM CORE (PokeCore)                            |
+-----------------------------------------------------------------------------------+
|  - Player Lifecycle & Identifier Resolution (Steam, License, Discord)             |
|  - Multi-Account Economy (Cash, Bank, Pokédollars ₽) & Paycheck Automation        |
|  - Native Inventory & Usable Items Engine (CreateUseableItem / CanUseItem)        |
|  - Role & Job Hierarchy (Trainer, Gym Leader, Professor, Police, Medic, Breeder)  |
|  - Two-Way Server/Client Callback Architecture (CreateCallback / TriggerCallback) |
|  - Permission & Security System (Server-side validation & ACE groups)             |
+-----------------------------------------+-----------------------------------------+
                                          |
        +---------------------------------+---------------------------------+
        |                                 |                                 |
+-------v---------------------+ +---------v-------------------+ +-----------v-------------------+
|   BATTLE SIMULATOR MODULE   | |    OVERWORLD & MOUNT MODULE | |  STORAGE & MEDICAL MODULE     |
| - IVs (0-31), EVs (0-252)   | | - Dynamic Biome Spawner     | | - 6 Party + 30 PC Storage     |
| - 25 Natures (1.1x / 0.9x)  | | - Real-time Pokéball Physics| |   Boxes (900 Pokémon slots)   |
| - 18x18 Type Matchup Chart  | | - Ground Mount Riding       | | - Pokédex (Kanto 1-151)       |
| - Turn & Priority Engine    | | - Water Mount Surfing       | | - PokéCenter Nurse Joy Healing|
| - Status Conditions         | | - Aerial Sky Flight         | | - PokéMart Shopkeeper NPCs    |
| - EXP & Evolution Trigger   | | - Active Buddy Follower     | | - Gym Progression & Badges    |
+-----------------------------+ +-----------------------------+ +-------------------------------+
```

---

## 🌟 Core Framework Features

### 1. 👤 Complete Player Lifecycle (`PokeCore.Player`)
- **Independent Identity:** Character records stored in `pokefivem_characters` with unique Citizen IDs (`PKM12345`).
- **Data Persistence:** Automatic periodic saves (every 5 minutes) and on disconnect.
- **Player Object APIs:**
  - `Player.Functions.AddMoney(account, amount, reason)`
  - `Player.Functions.RemoveMoney(account, amount, reason)`
  - `Player.Functions.SetMoney(account, amount, reason)`
  - `Player.Functions.GetMoney(account)`
  - `Player.Functions.SetJob(jobName, grade)`
  - `Player.Functions.SetDuty(onDuty)`
  - `Player.Functions.SetMetaData(key, value)`
  - `Player.Functions.GetMetaData(key)`
  - `Player.Functions.AddItem(item, count, slot, metadata)`
  - `Player.Functions.RemoveItem(item, count, slot)`
  - `Player.Functions.GetItemByName(item)`
  - `Player.Functions.Save()`

### 2. 💰 Multi-Account Economy
- **Cash:** Wallet money on person.
- **Bank:** Bank balance for wire transfers and paychecks.
- **Pokédollars (₽):** Dedicated monster economy currency for purchasing Pokéballs, Potions, and Stones at PokéMarts or won from battle victories.
- **Automated Paychecks:** Periodic salary distributed to on-duty players based on job grade.

### 3. 🎒 Native Usable Items & Inventory Engine
- Zero ESX / Ox inventory dependency required.
- **Usable Items API:**
  ```lua
  PokeCore.Functions.CreateUseableItem('water', function(source, item)
      local player = PokeCore.Functions.GetPlayer(source)
      -- logic
  end)
  ```
- Pre-configured usable items:
  - Capture: `pokeball`, `greatball`, `ultraball`, `masterball`
  - Medicine: `potion`, `superpotion`, `hyperpotion`, `maxpotion`, `revive`, `antidote`, `paralyzeheal`, `awakening`
  - Evolution: `firestone`, `waterstone`, `thunderstone`, `leafstone`, `moonstone`
  - Utilities: `rarecandy`, `pokedex`, `phone`, `water`, `sandwich`

### 4. 📞 Server-Client Callback System
- Replaces `ESX.TriggerServerCallback` with native `PokeCore` callbacks:
  ```lua
  -- Server
  PokeCore.Functions.CreateCallback('pokefivem:getPartyData', function(source, cb)
      cb(party)
  end)

  -- Client
  PokeCore.Functions.TriggerCallback('pokefivem:getPartyData', function(party)
      -- Handle party
  end)
  ```

---

## 🎮 FiveMon-Inspired Gameplay Systems

### 1. ⚔️ Server-Authoritative Battle Engine
- Turn order calculated by Speed and Move Priority.
- Gen 8/9 damage calculation with STAB (1.5×), type effectiveness (0×, 0.5×, 1.0×, 2.0×), and critical hits.
- Real-time HP bar updates and attack logs.
- Defeated wild Pokémon yield experience and Pokédollars (₽).

### 2. ⚾ Dynamic Pokéball Throwing Physics
- Parabolic physical throw using player camera vector.
- Raycast collision detection with wild Pokémon.
- Ground wobble animation (1 to 4 shakes) driven by Gen 8 capture probability formulas.

### 3. 🐾 Active Follower (Buddy Pokémon)
- Press `[K]` to summon your lead Pokémon to walk beside you with navmesh pathfinding.
- Auto-recalls upon entering vehicles or engaging in combat.

### 4. 🦅 Mount System (Ride, Surf, Fly)
- **Ground Riders:** Arcanine, Rapidash, Tauros, Snorlax (speed boost and `[SPACE]` jumping).
- **Surfers:** Lapras, Gyarados, Blastoise (glide seamlessly on water).
- **Flyers:** Charizard, Pidgeot, Dragonite, Articuno, Zapdos, Moltres (pitch/yaw camera soaring with `[W]`, ascend `[SPACE]`, descend `[SHIFT]`).

### 5. 💾 PC Storage & Party
- 6 active party slots with real-time HUD bar.
- 30 PC Storage Boxes (30 slots per box = 900 storage capacity) with live drag-and-drop, slot swapping, deposit, withdraw, and release.

### 6. 🏥 World Facilities & NPCs
- PokéCenters with Nurse Joy NPCs, healing sequence animations, and authentic 6-note chime audio.
- PokéMart shopkeepers with purchase catalogs.

---

## ⌨️ Controls & Keybindings

| Key | Action | Description |
|---|---|---|
| `F6` | Open Party | Opens 6-slot Party Team Menu |
| `F7` | Open Pokédex | Opens Kanto Pokédex Database |
| `G` | Throw Ball | Prepares & throws Pokéball with physics trajectory |
| `K` | Companion | Summons / Recalls Buddy Pokémon |
| `E` | Contextual | Interact with wild Pokémon, Nurse Joy, or PokéMarts |
| `/mount` | Mount | Mount / Dismount active lead Pokémon |
| `/pc` | Access PC | Access 30 PC storage boxes |
| `/healteam` | Heal Team | Fully heals active Pokémon party |

---

## 🚀 Admin Commands

| Command | Arguments | Permission | Description |
|---|---|---|---|
| `/givemoney` | `[targetId] [account] [amount]` | `admin` | Grant cash, bank, or pokedollars |
| `/setjob` | `[targetId] [job] [grade]` | `admin` | Set player's job & grade |
| `/spawnwild` | `[pokedexId] [level] [isShiny]` | `admin` | Spawn wild Pokémon at coordinates |
| `/givepokemon` | `[targetId] [pokedexId] [level] [shiny]` | `admin` | Give Pokémon directly to trainer |
| `/giveitem` | `[targetId] [itemKey] [count]` | `admin` | Give items to trainer inventory |

---

## 📦 Push & Sync via SFTP

To push all updated framework files directly to your PikaNodes server:
```powershell
python push_sftp.py "pika@321"
```
Or use VS Code's built-in SFTP sync (`Ctrl + Shift + P` -> `SFTP: Sync Local -> Remote`).
