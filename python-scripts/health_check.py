#!/usr/bin/env python3

import urllib.request
import sys
from datetime import datetime

URL = "https://first-project.34.238.244.58.sslip.io"


def check_site(url: str) -> None:
    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    print(f"[{timestamp}] Checking {url}")

    try:
        with urllib.request.urlopen(url, timeout=10) as response:
            status_code = response.getcode()
            if status_code == 200:
                print(f"[{timestamp}] SUCCESS: Site is reachable. HTTP {status_code}")
            else:
                print(f"[{timestamp}] WARNING: Site responded with HTTP {status_code}")
                sys.exit(1)
    except Exception as error:
        print(f"[{timestamp}] ERROR: Could not reach site. {error}")
        sys.exit(1)


if __name__ == "__main__":
    check_site(URL)
