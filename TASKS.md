# Hermes Agent Learning & Deployment Checklist

## Phase 1: Repository & Tracking Setup (Completed)
- [x] Initialize Git repository
- [x] Create `.gitignore` and `.env.example` templates
- [x] Create `TASKS.md` tracking list
- [x] Configure deployment target: DigitalOcean 1-Click Install

## Phase 2: DigitalOcean VPS Provisioning & Infrastructure Setup
- [x] Launch Droplet using DigitalOcean 1-Click Hermes Agent setup
- [ ] Set up SSH access and basic security (UFW firewall, non-root user) *(Skipped)*
- [ ] Clone/sync `hermes-lab` configuration to the Droplet *(Skipped)*

## Phase 3: Configuration & Baseline Verification
- [x] Execute `hermes setup` / configure DeepInfra model endpoint (`Qwen/Qwen3-Coder-480B-A35B-Instruct-Turbo`)
- [x] Verify core setup with `hermes doctor` & tool initialization (`Hello there!` test)
- [x] Verify CLI interactive chat functionality (`hermes`)
- [x] Test model switching (`hermes model`) / provider configuration

## Phase 4: Core Agent Mechanics Mastery
- [x] Test persistent session memory (verify memory recall across interactive sessions)
- [x] Inspect auto-generated skills directory (`~/.hermes/skills/`)
- [x] Execute a test task requiring terminal command execution (local bash tool execution on VPS)
- [x] Practice creating a custom skill manually and test auto-discovery

## Phase 5: Replication & Documentation
- [ ] Document DigitalOcean 1-Click deployment steps and configuration guide
- [ ] Commit finalized configuration templates to GitHub/GitLab