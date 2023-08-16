# ClamAV Installation Script

This repository contains a shell script that automates the installation and configuration of ClamAV on a Linux system. The script will automatically update the package repository, install ClamAV and related packages, configure ClamAV settings, restart services, and enable ClamAV to start at boot.

## Usage

To install ClamAV using the provided script, follow these steps:

1. Download the installation script from this repository by using the following command:

    ```bash
    wget https://raw.githubusercontent.com/YuxiangMa/install_clamav/main/install_clamav.sh
    ```

2. Give execute permissions to the script:

    ```bash
    chmod +x install_clamav.sh
    ```

3. Run the script with administrative privileges (sudo):

    ```bash
    ./install_clamav.sh
    ```
    
4. To view the ClamAV log, you can use the following command:
    ```bash
    sudo cat /var/log/clamav/clamav.log


