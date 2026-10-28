# 📦 PokeFiveM — Quick Installation & Deployment Guide

> **Author:** Pika Studio  
> **Framework:** Standalone Autonomous Pokémon RPG (Zero ESX Dependency)  
> **Full Guide:** See [GETTING_STARTED.md](GETTING_STARTED.md) for full instructions matching the [Fivemon Getting Started Guide](https://wiki.fivemon.gg/latest/guides/getting-started/).

---

## ⚡ Quick 1-Click txAdmin Deployment (Recommended)

1. Launch your server and open **txAdmin**.
2. Select **Custom Template** (or **Remote URL Template**).
3. Use the official Recipe URL:
   ```text
   https://raw.githubusercontent.com/tharun68a/PokeFiveM-test/main/recipe.yaml
   ```
4. Enter your database credentials and FiveM server license key.
5. Click **Run Recipe** — txAdmin downloads all resources, migrates the database, and creates your configuration files.

---

## 🛠️ Manual / SFTP Installation

### 1. Database Setup
Import [`database/schema.sql`](database/schema.sql) into your database (`s15_pikabase`):
- Sets up user accounts, characters, 30 PC Storage Boxes (900 Pokémon slots), Pokédex tracking, and Gym badges.
- Includes compatibility tables for `owned_vehicles` and `users` to support `ox_inventory` without ESX.

### 2. Deploy Files via SFTP
Run the automated SFTP push script:
```powershell
python push_sftp.py "pika@321"
```

### 3. Server Configuration (`server.cfg`)
Ensure your `server.cfg` starts resources in the correct order:
```cfg
## Overextended Core Stack
ensure oxmysql
ensure ox_lib
ensure ox_target
ensure ox_inventory

## Voice & World
ensure pma-voice
ensure bob74_ipl
ensure scully_emotemenu

## PokeFiveM Framework Core
ensure PokeFiveM
```

---

## 🎮 Keybindings & Commands

- **`[F6]`**: Open Party Team Menu
- **`[F7]`**: Open Pokédex
- **`[G]`**: Throw Pokéball (with 3D arc trajectory physics)
- **`[K]`**: Summon / Recall Buddy Companion Pokémon
- **`[E]`**: Interact with Nurse Joy, PokéMart clerks, and wild Pokémon
- **`/starter`**: Open Starter Pokémon Selection Menu
- **`/mount`**: Mount active lead Pokémon (Ground, Surf, or Fly)
- **`/healteam`**: Full party heal (Admin)
- **`/pc`**: Access 30 PC Storage Boxes (Admin)

---

© 2026 **Pika Studio**.
