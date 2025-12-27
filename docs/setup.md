# BIND9 DNS Server Setup

## Step 1: Update system
sudo apt update

## Step 2: Install BIND9
sudo apt install bind9 -y

## Step 3: Check service status
sudo systemctl status bind9

## Step 4: Enable BIND at boot
sudo systemctl enable bind9

## Step 5: Verify configuration
sudo named-checkconf

## Step 6: Restart DNS service
sudo systemctl restart bind9
