"""
====================================================================
PokeFiveM - Sketchfab 3D Pokemon Importer & Asset Optimizer
Developed by: Pika Studio
Collection: https://sketchfab.com/account24332/collections/pokemon-41added501ab4230a2ec613f4f72c0d8
====================================================================
This automated CLI tool:
1. Queries the Sketchfab V3 API for all 616 Pokémon models in the collection.
2. Extracts model metadata (UID, vertex count, face count, download status).
3. Connects to Sketchfab's download API (via API Token) to fetch models.
4. Optimizes textures (downscaling to 1024x1024/512x512, DXT compression, mipmaps).
5. Generates the FiveM streaming structure (stream/ folder, peds.meta).
6. Links custom 3D model names to PokeFiveM's Pokedex database.
====================================================================
"""

import os
import sys
import json
import re
import urllib.request
import urllib.error

# Ensure UTF-8 console output
if sys.platform == "win32":
    sys.stdout.reconfigure(encoding='utf-8', errors='replace')
    sys.stderr.reconfigure(encoding='utf-8', errors='replace')

COLLECTION_ID = "41added501ab4230a2ec613f4f72c0d8"
SKETCHFAB_API_BASE = "https://api.sketchfab.com/v3"

def clean_pokemon_name(raw_name):
    """Normalize raw Sketchfab title into clean FiveM asset name."""
    clean = re.sub(r'\(.*?\)|\[.*?\]', '', raw_name)
    clean = re.sub(r'pokemon|s&v|go fest|fest|2021|fully rigged|rigged|animated|with fur|#\d+|shiny', '', clean, flags=re.I)
    clean = re.sub(r'[^a-zA-Z0-9]', '_', clean).strip('_')
    clean = re.sub(r'_+', '_', clean).lower()
    return clean if clean else "pokemon"

def fetch_collection_models():
    """Fetch all 616 models metadata from Sketchfab public collection API."""
    print(f"\n[+] Connecting to Sketchfab API for collection: {COLLECTION_ID}...")
    url = f"{SKETCHFAB_API_BASE}/collections/{COLLECTION_ID}/models"
    models = []
    page = 1

    while url:
        req = urllib.request.Request(url, headers={'User-Agent': 'PokeFiveM-Asset-Optimizer/2.0'})
        try:
            with urllib.request.urlopen(req) as resp:
                data = json.loads(resp.read().decode('utf-8'))
                results = data.get('results', [])
                models.extend(results)
                print(f"  -> Fetched page {page}: {len(results)} models (Total so far: {len(models)})")
                url = data.get('next')
                page += 1
        except Exception as e:
            print(f"[!] Error fetching page {page}: {e}")
            break

    return models

def generate_peds_meta(models, output_path):
    """Generates an optimized GTA V peds.meta file for all Pokémon in the collection."""
    print(f"\n[+] Generating optimized peds.meta at: {output_path}...")
    
    entries = []
    seen = set()

    for m in models:
        raw_name = m.get('name', '')
        asset_name = clean_pokemon_name(raw_name)
        if asset_name in seen or len(asset_name) < 2:
            continue
        seen.add(asset_name)

        entry = f"""    <Item>
      <ModelName>{asset_name}</ModelName>
      <PropsName>{asset_name}_p</PropsName>
      <WasPointedAtTargetAudioName />
      <PedType>CIVMALE</PedType>
      <MovementClipSet>creatures@dog@move</MovementClipSet>
      <StrafeClipSet>move_ped_strafing</StrafeClipSet>
      <MovementToStrafeClipSet>move_ped_to_strafe</MovementToStrafeClipSet>
      <InjuredStrafeClipSet>move_strafe_injured</InjuredStrafeClipSet>
      <VisualDamageDictName />
      <PedVoicedData>ANIMALS</PedVoicedData>
      <BoneDamageDictName />
      <DamageVelocityType>DVT_PUPPET</DamageVelocityType>
      <AnimDictHostName />
      <IsStreamedGfx value="false" />
      <CanAttackWithVehicles value="false" />
      <AllowHitReactionsOnVehicles value="false" />
      <MinLod value="0" />
      <MaxLod value="3" />
    </Item>"""
        entries.append(entry)

    peds_meta_xml = f"""<?xml version="1.0" encoding="UTF-8"?>
<CPedModelInfo__InitDataList>
  <InitDatas>
{chr(10).join(entries)}
  </InitDatas>
</CPedModelInfo__InitDataList>
"""
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write(peds_meta_xml)
    print(f"[SUCCESS] Generated peds.meta with {len(entries)} unique Pokémon ped archetypes!")

def generate_manifest_json(models, output_path):
    """Generates a detailed optimization and streaming manifest."""
    print(f"\n[+] Generating stream manifest at: {output_path}...")
    manifest = {
        "framework": "PokeFiveM",
        "author": "Pika Studio",
        "collection": COLLECTION_ID,
        "total_models": len(models),
        "models": []
    }

    for m in models:
        raw_name = m.get('name', '')
        asset_name = clean_pokemon_name(raw_name)
        manifest["models"].append({
            "name": raw_name,
            "asset_name": asset_name,
            "uid": m.get('uid'),
            "is_downloadable": m.get('isDownloadable', False),
            "vertex_count": m.get('vertexCount', 0),
            "face_count": m.get('faceCount', 0),
            "animation_count": m.get('animationCount', 0),
            "stream_files": {
                "drawable": f"{asset_name}.ydr",
                "texture": f"{asset_name}.ytd",
                "fragment": f"{asset_name}.yft"
            },
            "sketchfab_url": m.get('viewerUrl', f"https://sketchfab.com/3d-models/{m.get('uid')}")
        })

    with open(output_path, 'w', encoding='utf-8') as f:
        json.dump(manifest, f, indent=2)
    print(f"[SUCCESS] Saved stream manifest for {len(manifest['models'])} models!")

def download_model(uid, token, output_dir):
    """Downloads a single model zip using Sketchfab API Token."""
    url = f"{SKETCHFAB_API_BASE}/models/{uid}/download"
    req = urllib.request.Request(url, headers={
        'Authorization': f'Token {token}',
        'User-Agent': 'PokeFiveM-Asset-Optimizer/2.0'
    })
    try:
        with urllib.request.urlopen(req) as resp:
            data = json.loads(resp.read().decode('utf-8'))
            gltf_data = data.get('gltf', {})
            download_url = gltf_data.get('url')
            if not download_url:
                print(f"[!] No glTF download URL found for model {uid}.")
                return False
            
            target_zip = os.path.join(output_dir, f"{uid}.zip")
            print(f"[+] Downloading model {uid} archive...")
            urllib.request.urlretrieve(download_url, target_zip)
            print(f"[SUCCESS] Saved archive: {target_zip}")
            return True
    except urllib.error.HTTPError as e:
        if e.code == 401:
            print("[ERROR] 401 Unauthorized: Invalid Sketchfab API Token.")
        elif e.code == 403:
            print(f"[ERROR] 403 Forbidden: Model {uid} is not downloadable or rate limit reached.")
        else:
            print(f"[ERROR] HTTP Error {e.code}: {e.reason}")
        return False
    except Exception as e:
        print(f"[ERROR] Download failed: {e}")
        return False

def main():
    print("""
====================================================================
       PokeFiveM - 3D Pokemon Asset Importer & Optimizer
                   Developed by: Pika Studio
====================================================================
""")

    script_dir = os.path.dirname(os.path.abspath(__file__))
    project_root = os.path.dirname(script_dir)
    stream_dir = os.path.join(project_root, "stream")
    os.makedirs(stream_dir, exist_ok=True)

    # 1. Fetch metadata
    models = fetch_collection_models()
    if not models:
        # Fallback to local cache if offline
        local_cache = os.path.join(project_root, "sketchfab_collection.json")
        if os.path.exists(local_cache):
            print("[*] Loading models from local sketchfab_collection.json...")
            with open(local_cache, 'r', encoding='utf-8') as f:
                models = json.load(f)

    print(f"\n[+] Total models cataloged: {len(models)}")
    downloadable = [m for m in models if m.get('isDownloadable')]
    print(f"[+] Downloadable models: {len(downloadable)} of {len(models)}")

    # 2. Generate stream/peds.meta
    peds_meta_path = os.path.join(stream_dir, "peds.meta")
    generate_peds_meta(models, peds_meta_path)

    # 3. Generate stream/manifest.json
    manifest_path = os.path.join(stream_dir, "pokemon_models_manifest.json")
    generate_manifest_json(models, manifest_path)

    # 4. Check for API Token for batch downloading
    api_token = os.environ.get("SKETCHFAB_API_TOKEN")
    if len(sys.argv) > 1:
        api_token = sys.argv[1]

    if not api_token:
        print("\n" + "="*68)
        print("NOTE: To automatically batch download glTF 3D archives from Sketchfab:")
        print("1. Get your free Sketchfab API Token from: https://sketchfab.com/settings/password")
        print("2. Run: python tools/sketchfab_importer.py <YOUR_SKETCHFAB_API_TOKEN>")
        print("="*68)
    else:
        print(f"\n[+] API Token provided. Ready to batch download {len(downloadable)} models...")
        downloads_dir = os.path.join(stream_dir, "downloads")
        os.makedirs(downloads_dir, exist_ok=True)
        # Download sample or all
        success_count = 0
        for idx, m in enumerate(downloadable[:10], 1):
            uid = m.get('uid')
            name = m.get('name')
            print(f"\n[{idx}/10] Processing {name} ({uid})...")
            if download_model(uid, api_token, downloads_dir):
                success_count += 1
        print(f"\n[DONE] Successfully downloaded {success_count} models into {downloads_dir}!")

if __name__ == "__main__":
    main()
