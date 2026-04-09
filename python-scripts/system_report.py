#!/usr/bin/env python3

import os
import platform
import shutil
import socket
from datetime import datetime

REPORT_FILE = "python-scripts/system_report.txt"


def bytes_to_gb(value: int) -> float:
    return round(value / (1024 ** 3), 2)


def generate_report() -> None:
    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    hostname = socket.gethostname()
    operating_system = platform.system()
    os_release = platform.release()
    python_version = platform.python_version()

    total, used, free = shutil.disk_usage("/")

    report = f"""System Report
Generated: {timestamp}

Hostname: {hostname}
Operating System: {operating_system}
OS Release: {os_release}
Python Version: {python_version}

Disk Usage:
- Total: {bytes_to_gb(total)} GB
- Used: {bytes_to_gb(used)} GB
- Free: {bytes_to_gb(free)} GB
"""

    with open(REPORT_FILE, "w", encoding="utf-8") as file:
        file.write(report)

    print("System report created successfully.")
    print(f"Saved to: {REPORT_FILE}")


if __name__ == "__main__":
    generate_report()
