# oss-audit-24MIM10083

Open Source Audit: Capstone Project
**Student Name:** Adhythyan K S 
**Registration Number:** 24MIM10083 
**Chosen Software:** Python

## Description of Scripts

This repository contains five Bash shell scripts written for a Linux environment to demonstrate practical open-source system administration and automation:

1. **System Identity Report (`script1.sh`):** A welcome script that displays the current Linux distribution, kernel version, logged-in user, system uptime, and the underlying open-source OS license.
2. **FOSS Package Inspector (`script2.sh`):** Checks if the target software (Python) is installed via `dpkg`, retrieves its exact version, and outputs a short philosophical description of Python and three other FOSS tools using a case statement.
3. **Disk and Permission Auditor (`script3.sh`):** Uses a loop to audit standard system directories (like `/etc` and `/var/log`) and the Python configuration directory, reporting their total size, owner, and read/write/execute permissions. 
4. **Log File Analyzer (`script4.sh`):** Safely parses a given system log file line-by-line to count the occurrences of a specific keyword (defaulting to "error") and prints the last 5 matching lines.
5. **Open Source Manifesto Generator (`script5.sh`):** An interactive script that prompts the user for three inputs regarding their views on open source, composes a personalized manifesto, and saves it to a timestamped `.txt` file.

## Step-by-Step Instructions to Run

To execute these scripts, you must be in a Linux terminal. 

1. **Clone the repository:**

git clone(https://github.com/0ADY0/oss-audit-24MIM10083.git)
