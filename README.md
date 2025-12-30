# 🟦 DockerMC
**The Zero-Clutter Minecraft Server Setup.**

DockerMC is a containerized Minecraft deployment designed to separate **Compute** (your CPU/RAM) from **Storage** (your NAS/HDD). It uses Docker to keep your system clean and Playit.gg to bypass the headache of port-forwarding.

## 🏗 Setup: The Logic (Docker)
Instead of installing Java and manual scripts, everything runs in an isolated container.

* **Isolation:** Crashes or memory leaks stay inside the container.
* **Portability:** One `docker-compose.yml` and a `.env` file define the whole build.
* **Engine:** Uses the `itzg/minecraft-server` image, supporting Forge, Fabric, Paper, and Vanilla.

### Memory Tuning
Default is set to `4G`. A good rule of thumb is to allocate half of your available system RAM. If you hit stability issues, dial it back in the `.env` file.

---

## 🚇 Networking: The Tunnel (Playit.gg)
Since port-forwarding is a pain (or impossible on some ISPs), we use an outbound tunnel.

1. **The Agent:** Runs as a sidecar service in Docker.
2. **The Secret Key:** Grab your key from the [Playit.gg Dashboard](https://playit.gg). I AM NOT AFFILIATED WITH THIS COMPANY!!!
3. **Connection:** Point the Playit dashboard to **Local Port 25565**.
4. **Traffic Flow:** Friend → Playit Cloud → Encrypted Tunnel → Docker Container.

---

## 💾 Storage: The Vault (NAS / Remote Storage)
Keep your world data off your boot drive. We map a Docker **Volume** to a network share (SMB/TrueNAS).

### Finding your DATA_PATH (macOS)
1. Mount your share in Finder (`Cmd + K` -> `smb://192.168.x.x`).
2. Open **Terminal**.
3. Drag the folder from Finder into the Terminal. It will spit out the path (e.g., `/Volumes/ShareName/Minecraft`).
4. Paste that into your `.env` file.

### Finding your DATA_PATH (Windows)
1. Map your network drive to a letter (e.g., `Z:`).
2. Use the direct drive path in your `.env` (e.g., `Z:/MinecraftServer/data`).
3. **Note:** Ensure Docker Desktop has permission to access that drive in **Settings > Resources > File Sharing**.

---

## 🚀 Quick Start

1. **Clone the repo.**
2. **Create your environment file:**
   ```bash
   cp .env.example .env

## 🛠 Management
Use the provided scripts to manage the server without memorizing Docker commands.

| Action | Mac/Linux | Windows |
| :--- | :--- | :--- |
| **Start** | `./manage.sh start` | Run `manage.bat` (Option 1) |
| **Stop** | `./manage.sh stop` | Run `manage.bat` (Option 2) |
| **Logs** | `./manage.sh logs` | Run `manage.bat` (Option 3) |
| **Restart**| `./manage.sh restart`| Run `manage.bat` (Option 4) |
