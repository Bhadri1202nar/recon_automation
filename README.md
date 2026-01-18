# recon_automation
Scans targets that you want to test
# Automated Reconnaissance Script

This project is a Bash-based automation script for basic reconnaissance tasks used in security assessments.  
It integrates subdomain enumeration and port scanning and can be scheduled using cron.

## Features
- Subdomain enumeration using `subfinder`
- Port scanning using `nmap`
- Timestamped output directories
- Cron-compatible (non-interactive)
- Clean logging support

## Requirements
- Linux (tested on Kali Linux)
- Bash
- subfinder
- nmap

Install tools:
```bash
sudo apt update
sudo apt install nmap
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
