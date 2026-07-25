# Hermes Agent Learning & Deployment Checklist

## Phase 1: Repository & Tracking Setup (Current Step)
- [x] Initialize Git repository
- [x] Create `.gitignore` and `.env.example` templates
- [x] Create `TASKS.md` tracking list
- [ ] Create `scripts/vps-setup.sh` bootstrap script

## Phase 2: VPS Provisioning & Infrastructure Setup
- [ ] Spin up standard Ubuntu 24.04 LTS VPS instance (2 vCPUs, 2GB–4GB RAM)
- [ ] Set up SSH access and basic security (UFW firewall, non-root user)
- [ ] Transfer setup scripts or clone repo to VPS environment
- [ ] Run `vps-setup.sh` to install Hermes and dependencies automatically

## Phase 3: Configuration & Baseline Verification
- [ ] Execute `hermes setup` or set API key in configuration
- [ ] Verify core setup with `hermes doctor`
- [ ] Verify CLI interactive chat functionality (`hermes`)
- [ ] Test model switching (`hermes model`) using an API endpoint

## Phase 4: Core Agent Mechanics Mastery
- [ ] Test persistent session memory (verify memory recall across interactive sessions)
- [ ] Inspect auto-generated skills directory (`~/.hermes/skills/`)
- [ ] Execute a test task requiring terminal command execution
- [ ] Practice creating a custom skill manually and test auto-discovery

## Phase 5: Replication & Documentation
- [ ] Finalize `vps-setup.sh` script to confirm 100% clean replication capability
- [ ] Commit finalized configuration templates to GitHub/GitLab