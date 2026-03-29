# Bash Scripts for DevOps

A collection of useful Bash scripts for system administration and DevOps tasks on Linux systems.

## Scripts Overview

### 1. check_service_status.sh
Checks the status of a systemd service and automatically restarts it if it's down.

**Usage:**
```bash
./check_service_status.sh
```
The script will prompt for the service name. If the service is inactive, it will attempt to restart it and report the result.

**Prerequisites:**
- systemd-based system
- Appropriate permissions to check and restart services (may require sudo)

### 2. check_sys_health.sh
Performs a comprehensive system health check including CPU load, memory usage, disk space, and failed services.

**Usage:**
```bash
./check_sys_health.sh
```

**Output includes:**
- CPU status (via uptime)
- Memory (RAM) usage
- Disk usage
- List of failed systemd services

**Prerequisites:**
- systemd-based system
- Commands: uptime, free, df, systemctl

### 3. delete_log.sh
Automatically cleans up old log files in `/var/log` that are older than 2 days, with backup creation.

**What it does:**
1. Finds log files modified more than 2 days ago
2. Creates a compressed backup archive
3. Deletes the old log files
4. Cleans up temporary files

**Usage:**
```bash
./delete_log.sh
```

**Prerequisites:**
- Write permissions to `/var/log` and current directory
- Commands: find, tar, rm
- Sufficient disk space for backup creation

## Installation

1. Clone this repository:
```bash
git clone <repository-url>
cd bash_scripts
```

2. Make scripts executable:
```bash
chmod +x *.sh
```

## Screenshots

![Service Status Check](<Screenshot 2026-03-29 at 10.51.37 AM.png>)

![Log Deletion Process](<Screenshot 2026-03-29 at 10.53.45 AM.png>)

## Contributing

Feel free to submit issues, feature requests, or pull requests to improve these scripts.
