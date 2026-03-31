#!/bin/bash
STUDENT_NAME="[Your Name]"
SOFTWARE_CHOICE="Python"
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep "PRETTY_NAME" | cut -d= -f2 | tr -d '"')
CURRENT_DATE=$(date)

echo "=========================================="
echo "        Open Source Audit Report          "
echo "=========================================="
echo "Student Name    : $Nitya Choudhary"
echo "Software Choice : $PYTHON"
echo "------------------------------------------"
echo "Kernel Version  : $KERNEL"
echo "Distribution    : $DISTRO"
echo "Current User    : $USER_NAME"
echo "Home Directory  : $HOME"
echo "System Uptime   : $UPTIME"
echo "Current Date    : $CURRENT_DATE"
echo "------------------------------------------"
echo "Note: The Linux Kernel running this system"
echo "is licensed under the GNU GPL v2 License."
echo "=========================================="