#!/usr/bin/env python3

import urllib.request
from datetime import datetime

URL = "https://first-project.34.238.244.58.sslip.io"
LOG_FILE = "python-scripts/site_monitor.log"


def monitor_site() -> None:
    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

    try:
        with urllib.request.urlopen(URL, timeout=10) as response:
            status_code = response.getcode()
            message = f"[{timestamp}] SUCCESS: {URL} responded with HTTP {status_code}\n"
    except Exception as error:
        message = f"[{timestamp}] ERROR: {URL} failed. {error}\n"

    with open(LOG_FILE, "a", encoding="utf-8") as file:
        file.write(message)

    print(message.strip())


if __name__ == "__main__":
    monitor_site()
