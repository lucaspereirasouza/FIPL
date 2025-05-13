Sure! Here's a clean, professional version of the **README.md** without any emoji and with an MIT License:

---

# Fedora Package Logger

A lightweight Bash script to log all installed RPM packages on a Fedora system.

## Overview

This script generates a `.log` file containing a list of all installed packages using `rpm -qa`, with the filename timestamped for easy tracking. It’s ideal for system audits, backups, or recreating environments.

## Features

- Logs all installed RPM packages
- Timestamped filenames: `fedora-installed-packages-HH:MM:SS-MM-DD-YYYY.log`
- Requires root privileges
- Simple and fast — no dependencies

## Usage
The script must be run as root or with sudo, since it queries system-wide package data.

1. Clone or download the script to your Fedora machine.
2. Make it executable:

   ```bash
   chmod +x package-logger.sh
   ```

3. Run it with sudo:

   ```bash
   sudo ./package-logger.sh
   ```

4. The output log file will be created in the same directory.

## Example Output File

```
fedora-installed-packages-14:23:15-04-05-2025.log
```

Each line in the file corresponds to an installed RPM package.

## License

MIT License

--- 