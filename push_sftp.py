import os
import sys
import json
import paramiko

# Ensure UTF-8 output on Windows
if sys.platform == "win32":
    sys.stdout.reconfigure(encoding='utf-8', errors='replace')
    sys.stderr.reconfigure(encoding='utf-8', errors='replace')

def get_config():
    config_path = os.path.join(os.path.dirname(__file__), ".vscode", "sftp.json")
    if os.path.exists(config_path):
        try:
            with open(config_path, "r", encoding="utf-8") as f:
                return json.load(f)
        except Exception:
            pass
    return {
        "host": "pikachu.pikanodes.xyz",
        "port": 2022,
        "username": "pika.8ec7cd61",
        "remotePath": "/resources/PokeFiveM"
    }

def sftp_mkdir_p(sftp, remote_directory):
    dirs = []
    head, tail = os.path.split(remote_directory)
    while len(tail) > 0:
        dirs.insert(0, tail)
        head, tail = os.path.split(head)
    if head:
        dirs.insert(0, head)

    current_path = ""
    for d in dirs:
        if not d or d == "/" or d == "\\":
            current_path = "/"
            continue
        current_path = os.path.join(current_path, d).replace("\\", "/")
        try:
            sftp.stat(current_path)
        except IOError:
            try:
                sftp.mkdir(current_path)
            except Exception:
                pass

def push_project(password=None):
    cfg = get_config()
    host = cfg.get("host", "pikachu.pikanodes.xyz")
    port = int(cfg.get("port", 2022))
    username = cfg.get("username", "pika.8ec7cd61")
    remote_root = cfg.get("remotePath", "/resources/PokeFiveM")
    if remote_root == "/":
        remote_root = "/resources/PokeFiveM"

    pwd = password or cfg.get("password")
    if not pwd:
        if len(sys.argv) > 1:
            pwd = sys.argv[1]
        else:
            import getpass
            print(f"Connecting to {username}@{host}:{port}...")
            pwd = getpass.getpass("Enter your PikaNodes SFTP Password: ")

    local_root = os.path.dirname(os.path.abspath(__file__))
    ignored = set(cfg.get("ignore", [".vscode", ".git", ".github", "*.log", "*.tmp"]))

    print(f"\n[+] Connecting to SFTP [{host}:{port}] as {username}...")
    transport = paramiko.Transport((host, port))
    try:
        transport.connect(username=username, password=pwd)
        sftp = paramiko.SFTPClient.from_transport(transport)
        print("[+] Connected successfully!")

        print(f"[+] Uploading PokeFiveM files to remote path: {remote_root}...")
        sftp_mkdir_p(sftp, remote_root)

        total_uploaded = 0
        for root, dirs, files in os.walk(local_root):
            rel_dir = os.path.relpath(root, local_root)
            if rel_dir == ".":
                rel_dir = ""

            # Check ignore
            first_part = rel_dir.split(os.sep)[0] if rel_dir else ""
            if first_part in ignored or first_part.startswith("."):
                continue

            remote_dir = os.path.join(remote_root, rel_dir).replace("\\", "/")
            sftp_mkdir_p(sftp, remote_dir)

            for file in files:
                if file.startswith(".") or file == "push_sftp.py":
                    continue
                local_file = os.path.join(root, file)
                remote_file = os.path.join(remote_dir, file).replace("\\", "/")
                print(f"  -> Uploading: {file} to {remote_dir}")
                sftp.put(local_file, remote_file)
                total_uploaded += 1

        print(f"\n[SUCCESS] Successfully uploaded {total_uploaded} files to {remote_root}!")
        sftp.close()
        transport.close()
    except Exception as e:
        print(f"\n[ERROR] SFTP Error: {e}")
        print("\nNote: Make sure your server is online in the PikaNodes panel and your password is correct.")

if __name__ == "__main__":
    pwd_arg = sys.argv[1] if len(sys.argv) > 1 else None
    push_project(pwd_arg)
