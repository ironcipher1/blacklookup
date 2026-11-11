#!/bin/bash
clear

echo -e "\e[1;36m"
echo ""
echo "          /\        /\ "
echo "         /  \______/  \ "
echo "        /              \ "
echo "       |   C Y B E R    |"
echo "       |      B O S S   |"
echo "        \              /"
echo "         \____________/"
echo ""
echo "   ██████╗██╗   ██╗██████╗ ███████╗"
echo "  ██╔════╝╚██╗ ██╔╝██╔══██╗██╔════╝"
echo "  ██║      ╚████╔╝ ██████╔╝█████╗  "
echo "  ██║       ╚██╔╝  ██╔══██╗██╔══╝  "
echo "  ╚██████╗   ██║   ██████╔╝███████╗"
echo "   ╚═════╝   ╚═╝   ╚═════╝ ╚══════╝"
echo ""
echo "       C Y B E R   B O S S"
echo ""
echo "       [ ETHICAL HACKER ]"
echo ""
echo "   ★ LEARN  |  HACK  |  SECURE ★"
echo ""
echo "       POWERED BY A.K"
echo ""
echo "=================================="
echo -e "\e[0m"





BLUE='\033[1;36m'
GREEN='\033[1;32m'
WHITE='\033[1;37m'
RED='\033[1;31m'
RESET='\033[0m'

USER_NAME=$(whoami)
HOST=$(hostname)
KERNEL=$(uname -r)
CPU=$(lscpu | grep "Model name" | head -1 | cut -d: -f2)
RAM=$(free -h | awk '/Mem:/ {print $3 " / " $2}')
DISK=$(df -h / | awk 'NR==2 {print $3 " / " $2}')
UPTIME=$(uptime -p)
IP=$(hostname -I | awk '{print $1}')

echo -e "${BLUE}"
echo "================================================"
echo "             CYBER BOSS  TERMINAL"
echo "                 SPARK TEAM"
echo "================================================"
echo -e "${GREEN}"

echo "          /\_/\\\\"
echo "         ( o.o )"
echo "          > ^ <"
echo
echo "       KALI LINUX | ETHICAL HACKER"
echo
echo -e "${BLUE}---------------- SYSTEM INFORMATION ------------"
echo -e "${GREEN}"

printf " USER       : %s\n" "$USER_NAME"
printf " HOST       : %s\n" "$HOST"
printf " OS         : %s\n" "Linux"
printf " KERNEL     : %s\n" "$KERNEL"
printf " CPU        : %s\n" "$CPU"
printf " RAM        : %s\n" "$RAM"
printf " DISK       : %s\n" "$DISK"
printf " UPTIME     : %s\n" "$UPTIME"
printf " IP ADDRESS : %s\n" "${IP:-Unavailable}"

echo -e "${BLUE}"
echo "---------------- SECURITY STATUS ---------------"
echo -e "${GREEN}"

echo " USER       : $(whoami)"
echo " FIREWALL   : $(command -v ufw >/dev/null && sudo ufw status | head -1 || echo 'UFW unavailable')"
echo " PROCESSES  : $(ps -e --no-headers | wc -l)"
echo " INTERFACES : $(ip -o link show | wc -l)"

echo -e "${BLUE}"
echo "---------------- YOUR PORTRAIT -----------------"
echo -e "${RESET}"

# Display your portrait if available
if command -v chafa >/dev/null && [ -f "$HOME/ak.jpg" ]; then
    chafa --size 50x20 "$HOME/ak.jpg"
else
    echo "Place your portrait at ~/ak.jpg"
fi

echo -e "${BLUE}"
echo "================================================"
echo -e "${GREEN}"
echo "  DREAM BIG... HACK SMART..."
echo "  MY TEAM IS MY POWER."
echo "  A.K | SPARK TEAM"
echo
echo "  [ SYSTEM ONLINE ]"
echo -e "${BLUE}"
echo "================================================"
echo -e "${RESET}"
