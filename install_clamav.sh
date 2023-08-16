#!/bin/bash

# Update the package repository
sudo apt update -y

# Install ClamAV and related packages
sudo apt install clamav clamav-daemon clamav-freshclam -y

# Start the ClamAV daemon
sudo systemctl start clamav-daemon

# Modify the Checks option in freshclam.conf
sudo sed -i 's/^Checks .*/Checks 24/' /etc/clamav/freshclam.conf

# Restart the ClamAV Freshclam service to apply changes
sudo systemctl restart clamav-freshclam

# Enable ClamAV daemon to start at boot
sudo systemctl enable clamav-daemon

# Check if ClamAV daemon is enabled at startup
sudo systemctl is-enabled clamav-daemon

# Display success message
echo "ClamAV installation successful."
echo  # Empty line 1
echo  # Empty line 2
