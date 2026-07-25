# Hermes Agent Deployment & Operations Guide

This guide documents the setup, configuration, and verification of **Hermes Agent** deployed via DigitalOcean 1-Click and configured with DeepInfra.

---

## 1. DigitalOcean 1-Click Provisioning

1. Log into your **DigitalOcean Control Panel**.
2. Select **Create -> Droplets** and navigate to the Marketplace / 1-Click Apps tab.
3. Search for **Hermes Agent** and choose your desired server specs.
4. Launch the Droplet.
5. SSH into your newly created Droplet:
   ```bash
   ssh root@<DROPLET_IP>
   ```
   *Note: Upon initial SSH login, the interactive `hermes setup` routine begins automatically.*

---

## 2. Configuration & Model Setup

Hermes Agent was configured with **DeepInfra** hosting the model `Qwen/Qwen3-Coder-480B-A35B-Instruct-Turbo`.

### Setup Command
Run interactive setup or update configuration:
```bash
hermes setup
```

### Key Settings
- **Provider**: DeepInfra (`openai` compatible API format or native provider endpoint)
- **Model**: `Qwen/Qwen3-Coder-480B-A35B-Instruct-Turbo`
- **Environment**: Stored in `~/.hermes/.env` or global Hermes configuration directory.

### Diagnostic Check
Verify system health, tools, and API connections:
```bash
hermes doctor
```

---

## 3. Core Agent Mechanics & Verification

### Interactive Session
Launch an interactive CLI chat session:
```bash
hermes
```

### Persistent Session Memory
- Hermes maintains session memory across restarts.
- Memory recall was verified by asking the agent to remember facts during an interactive session and recalling them in a subsequent session.

### Local Bash Tool Execution
- Verified tool execution on the VPS system directly through interactive queries requiring command execution (e.g., system commands, file operations).

---

## 4. Custom Skills Management

Hermes automatically discovers custom skills located in `~/.hermes/skills/`.

### Directory Structure
```
~/.hermes/skills/
└── <skill-name>/
    └── SKILL.md
```

### Example Skill (`SKILL.md`)
```markdown
---
name: sys-info
description: Skill for checking system resources and uptime
---
# System Info Skill
When asked to report system health or resource usage, run `uptime` and `free -h` or `df -h`.
```

---

## 5. Summary Checklist Status

- [x] DigitalOcean 1-Click Droplet provisioned
- [x] DeepInfra API key and `Qwen/Qwen3-Coder-480B-A35B-Instruct-Turbo` configured
- [x] Tool initialization and `hermes doctor` verified
- [x] Memory persistence and bash command execution tested
- [x] Custom skill creation and auto-discovery validated
