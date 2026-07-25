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
- [ ] Execute `hermes setup` or set API key in `.env` configuration
- [ ] Verify core setup with `hermes doctor`
- [ ] Verify CLI interactive chat functionality (`hermes`)
- [ ] Test model switching (`hermes model`) using an API endpoint

## Phase 4: Core Agent Mechanics Mastery
- [ ] Test persistent session memory (verify memory recall across interactive sessions)
- [ ] Inspect auto-generated skills directory (`~/.hermes/skills/`)
- [ ] Execute a test task requiring terminal command execution
- [ ] Practice creating a custom skill manually and test auto-discovery

## Phase 5: Replication & Documentation
- [ ] Document DigitalOcean 1-Click deployment steps and configuration guide
- [ ] Commit finalized configuration templates to GitHub/GitLab