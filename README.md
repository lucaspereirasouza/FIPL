# Fedora Package Logger

A lightweight Bash script to log all installed RPM packages on a Fedora system.

## Overview

This script generates a `.log` file containing a list of all installed packages using `rpm -qa`, with the filename timestamped for easy tracking. It’s ideal for system audits, backups, or recreating environments.

## Output

- Logs all installed RPM packages
- Timestamped filenames: `fedora-installed-packages-HH:MM:SS-MM-DD-YYYY.log`

## Usage

1. Clone or download the script to your Fedora machine.

2. Run it:
- also Requires root privileges

   ```bash
   sudo ./package-logger.sh
   ```

4. The output log file will be created in the same directory.

## the Output Example

```
fedora-installed-packages-14:23:15-04-05-2025.log
```

Each line in the file corresponds to an installed RPM package.

## License

MIT License

--- 
