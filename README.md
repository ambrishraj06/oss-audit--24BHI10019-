Open Source Software Audit - Capstone Project 🚀

**Student Name:** Ambrish Raj
**Registration Number:** 24B HI10019
**Course:** Open

---

## 📖 Project Overview
The shell scripts together with documentation for my OSS Capstone Project exist in this repository. My project mission needs me to study open-source software projects by analyzing their fundamental operating systems and their licensing rules and their total system resource usage. I chose **MySQL** because it operates as the main database system which runs the LAMP stack and it includes an interesting story about its dual licensing methods.

The scripts stored in this repository operate exclusively on Linux systems which run Ubuntu through the Bash shell interface.

---

## 🛠️ Dependencies Required
Your Linux system requires specific software installations before you can execute these scripts. These scripts need `mysql-server` to be installed because they perform MySQL footprint auditing.

1. **Linux Environment:** Ubuntu or any Debian-based distribution (WSL works perfectly too).
2. **MySQL Server:** You can install it by running:
```bash
sudo apt update
sudo apt install mysql-server -y
```
3. **Basic Utilities:** `awk`, `grep`,

---

## 📜 Script Descriptions

The main purpose of every script within this repository will be explained in this section.

- **`script1.sh` (System Identity Report):** The script generates a welcome screen which displays Linux distribution details together with kernel version information and user activity and system running time and operating system license type.
- **`script2.sh` (FOSS Package Inspector):** The system verifies package installation for `mysql-server` through `dpkg` command. If it is, it prints the version and a short philosophy note about it.
- **`script3.sh` (Disk and Permission Auditor):** The script verifies file ownership and permission configurations and disk space consumption for all essential system directories which contain MySQL data and configuration files.
- **`script4.sh` (Log File Analyzer):** The script performs a line-by-line examination of system log files to find instances of the word "error". The script tracks the number of times the term occurs while showing you the last five lines which contained the search term to help you understand the issue.
- **`script5.sh` (Manifesto Generator):** Users can answer three questions through the script which generates an individual "Open Source Manifesto" document that saves as a text file.

---

## 🚀 Step-by-Step Instructions to Run the Scripts

You need to follow these instructions exactly to check the scripts on your computer system.

### Step 1: Clone or Download
First, grab the scripts from this repo and put them in a folder on your Ubuntu machine. Users should open their terminal applications to access the directory which contains the folder.

### Step 2: Make the Scripts Executable
Linux systems protect their files by preventing them from executing automatically. You need to give them permission. Run this command to make all 5 scripts executable at once:
```bash
chmod +x script*.sh
```

### Step 3: Run Script 1 (System Identity)### Step 4: Run Script 2 (Package Inspector)
*Users need to verify MySQL installation before running the command because it will generate an error if not installed.*<

### Step 5: Run Script 3 (Permission Auditor)
*Because this script checks inside protected MySQL configuration folders, you MUST run it as an admin using `sudo`.*
```bash
sudo ./script3

### Step 6: Run Script 4 (Log Analyzer)
*The script requires `sudo` access because it must access system log files. Pass the path of your syslog to it.*
```bash
sudo ./script4.sh /var/log/syslog

### Step 7: Run Script 5 (Manifesto Generator)
*This one is completely interactive! No sudo needed.*
```bash
./script5.sh
```
Please answer the three questions which the script asks you before pressing Enter to continue. The system will generate a file named `manifesto_yourusername.txt` which

---
*End of README*
