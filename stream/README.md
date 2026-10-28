# PokeFiveM Custom 3D Asset Streaming

This directory (`stream/`) is where you place custom GTA V streamed assets for Pokémon models, Pokéballs, sounds, and custom props.

## How to add custom 3D Pokémon models:
Place your streamed `.ydr`, `.yft`, `.ytd`, or `.ydd` files directly into this `stream/` folder or subfolders:
- `stream/pika.ydr`, `stream/pika.ytd`
- `stream/charizard.ydr`, `stream/charizard.ytd`
- `stream/pokeball.ydr`, `stream/pokeball.ytd`

In [`config.lua`](../config.lua), set `Model = 'pika'` or your custom streamed model name under `Config.Pokedex[id].Model` or `Config.WildSpawns`.
When empty or using default GTA peds, the framework gracefully falls back to GTA animal and pet peds (cats, dogs, birds, boars, etc.) with custom floating 3D nameplates, type badges, levels, and health bars.
