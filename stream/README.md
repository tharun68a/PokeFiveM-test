# PokeFiveM 3D Pokémon Asset Streaming & Optimization Guide
**Framework:** PokeFiveM by Pika Studio  
**Curated Collection:** [Sketchfab Pokémon 3D Collection (account24332)](https://sketchfab.com/account24332/collections/pokemon-41added501ab4230a2ec613f4f72c0d8)

---

## 1. Collection Overview & Analysis
The Sketchfab collection provides **616 total 3D models** (**612 downloadable**) spanning Generations 1 through 9:
- **Average Vertex Count:** ~5,011 vertices per model (highly optimized for GTA V).
- **Average Face Count:** ~9,800 polygons per model.
- **Rigs & Animations:** 66 animated models and rigged meshes.
- **Pre-configured `peds.meta`:** All 590 unique creature ped archetypes are pre-registered in [`stream/peds.meta`](./peds.meta).

---

## 2. Automated Importer CLI Tool
We provide a dedicated batch importer and optimizer located in [`tools/sketchfab_importer.py`](../tools/sketchfab_importer.py).

### How to use:
1. Obtain your free Sketchfab API Token from [Sketchfab Settings](https://sketchfab.com/settings/password) (under **API Token**).
2. Run the importer tool from your project root:
   ```bash
   python tools/sketchfab_importer.py <YOUR_SKETCHFAB_API_TOKEN>
   ```
3. The tool will:
   - Verify downloadable permissions for all 612 models.
   - Batch download the glTF archives into `stream/downloads/`.
   - Update [`stream/pokemon_models_manifest.json`](./pokemon_models_manifest.json) with exact UIDs, vertex budgets, and stream filenames.

---

## 3. FiveM Streaming Optimization Standards
To ensure locked 60+ FPS without texture loss or streaming memory warnings:
1. **Geometry Budget:**
   - **LOD 0 (High):** < 15,000 vertices (Collection average is ~5,000 vertices).
   - **LOD 1 (Medium):** < 5,000 vertices.
   - **LOD 2 (Low):** < 1,500 vertices.
2. **Texture Dictionaries (`.ytd`):**
   - Maximum texture resolution: **1024x1024** (or **512x512** for smaller companions).
   - Format: DirectDraw Surface (**DDS**) with **BC1 / DXT1** (opaque) or **BC3 / DXT5** (alpha).
   - Mipmaps: **Required** to prevent distance shimmering.
   - Size Limit: Total `.ytd` file size must remain **under 8 MB** per Pokémon.
3. **Collision & Skeleton:**
   - Pre-configured ped capsules in `stream/peds.meta` handle raycasts, ox_target interaction, and Pokéball projectile collisions.

---

## 4. Dual-Fallback Crash-Proof Architecture
PokeFiveM features a native dual-fallback resolver (`PokeUtils.GetPokemonModel(pokedexId)`):
- **Priority 1 (Streamed 3D Model):** If `<model_name>.ydr`/`.yft` exists in `stream/`, the game mounts and displays the custom 3D Pokémon model.
- **Priority 2 (Native Animal Ped):** If a model is not yet placed in `stream/`, the framework automatically renders a companion animal ped with floating 3D nameplates, type badges, level, and health bars.
- **Result:** Players and servers experience zero crashes or missing ped glitches regardless of which models are installed.
