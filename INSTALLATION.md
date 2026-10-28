# PokeFiveM Framework Installation & Deployment Guide 📦
**Author:** Pika Studio  
**Architecture:** Autonomous Standalone Framework (Zero ESX Dependency)

---

### Step 1: Database Migration
Open your database management tool (HeidiSQL, phpMyAdmin, or Navicat):
1. Open [`database/schema.sql`](file:///c:/Users/NEW/Downloads/PokeFiveM/database/schema.sql).
2. Execute the migration. This installs:
   - `pokefivem_users` (Player licenses & permissions)
   - `pokefivem_characters` (Citizen profiles, job, cash/bank/pokedollars, position, metadata)
   - `pokefivem_inventory` (Slot-based inventory items)
   - `pokefivem_pokemon` (Full Pokémon storage: IVs, EVs, natures, stats, moves)
   - `pokefivem_pokedex` (Pokédex seen & caught records)
   - `pokefivem_gyms` (Gym leader badge tracking)

---

### Step 2: Upload Files to Server
Using our automated push script:
```powershell
python push_sftp.py "pika@321"
```
Or use VS Code SFTP (`Ctrl + Shift + P` -> `SFTP: Sync Local -> Remote`).

---

### Step 3: Configure `server.cfg`
Because PokeFiveM is an **independent framework**, you do **NOT** need `es_extended` or `[core]` or `[esx_addons]`!  
Your `server.cfg` simply needs:

```cfg
# Database Library
ensure oxmysql

# PokeFiveM Framework Core
ensure PokeFiveM

# Admin ACE Permissions
add_ace group.admin command allow
add_ace group.admin command.spawnwild allow
add_ace group.admin command.givepokemon allow
add_ace group.admin command.giveball allow
add_ace group.admin command.giveitem allow
add_ace group.admin command.givemoney allow
add_ace group.admin command.setjob allow

add_principal identifier.license:YOUR_LICENSE_HEX group.admin
```

---

### Step 4: Core Framework APIs & Usage
Any external script can interact with PokeFiveM using standard exports:

```lua
-- Retrieve Framework Core
local PokeCore = exports['PokeFiveM']:GetCoreObject()

-- Server-side: Retrieve Player Object
local Player = PokeCore.Functions.GetPlayer(source)
if Player then
    -- Accounts
    Player.Functions.AddMoney('pokedollars', 500, 'Battle Reward')
    Player.Functions.RemoveMoney('cash', 100, 'Store Purchase')

    -- Inventory
    Player.Functions.AddItem('pokeball', 5)
    Player.Functions.RemoveItem('potion', 1)

    -- Job & Duty
    Player.Functions.SetJob('gymleader', 2)
    Player.Functions.SetDuty(true)
end

-- Server-side: Register Usable Item
PokeCore.Functions.CreateUseableItem('my_custom_item', function(source, item)
    -- Your custom logic here
end)

-- Server-side: Create Callback
PokeCore.Functions.CreateCallback('my_script:getData', function(source, cb, arg1)
    cb({ success = true })
end)

-- Client-side: Trigger Callback
PokeCore.Functions.TriggerCallback('my_script:getData', function(result)
    print(json.encode(result))
end, 'arg1_value')
```
