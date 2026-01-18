#!/bin/bash

# Check input
if [ -z "$1" ]; then
   echo "Usage: $0 domain.com"
   exit 1
fi

DOMAIN=$1
DATE=$(date +"%Y-%m-%d_%H-%M")
OUTDIR="recon_$DOMAIN_$DATE"

mkdir -p $OUTDIR

echo "[+] Starting recon for $DOMAIN"
echo "[+] Output directory: $OUTDIR"

#Subdomain enumeration
echo "[+] Running subfinder..."
subfinder -d $DOMAIN -silent > $OUTDIR/subdomains.txt

#Port scanning
echo "[+] Running nmap..."
nmap -iL $OUTDIR/subdomains.txt -T4 -oN $OUTDIR/nmap.txt

echo "[+] Recon completed!"
