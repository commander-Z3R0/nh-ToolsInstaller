#!/bin/bash

show_table1() {
    clear
    echo "                                                                         "
    echo "                                                                         "
    echo "  |---------------------------------------------------------------------|"
    echo "  |   >>--->Commander.Z3R0<---<<             >>--->Version 2.0<---<<    |"
    echo "  |---------------------------------------------------------------------|"
    echo "  |                     >>~~~>    Table  1       <~~~<<                 |"
    echo "  |---------------------------------------------------------------------|"
    echo "  |                     >>~~~>Packages to install<~~~<<                 |"
    echo "  |---------------------------------------------------------------------|"
    echo "  |  > Blackbird-venv   (Osint)         |  > Ettercap     (MITM)        |"
    echo "  |  > Netdiscover      (Scanner)       |  > Autopsy      (Forensic)    |"
    echo "  |  > Kodiac           (C2)            |  > Kismet       (Wardriving)  |"
    echo "  |  > Fluxion          (WiFi)          |  > Wappalyzer   (Web)         |"             
    echo "  |  > EvilTrust        (WiFi)          |  > Routersploit (Exploit)     |"
    echo "  |  > ExploitDB        (Exploit)       |  > Metagoofil   (Osint)       |"
    echo "  |  > Kali Whoami      (Privacy)       |  > Exiftool     (Osint)       |" 
    echo "  |---------------------------------------------------------------------|" 
}

show_table2() {
    clear
    echo "                                                                          "
    echo "                                                                          "
    echo " |---------------------------------------------------------------------|"
    echo " |   >>--->Commander.Z3R0<---<<             >>--->Version 2.0<---<<    |"
    echo " |---------------------------------------------------------------------|"
    echo " |                     >>~~~>    Table  2       <~~~<<                 |"
    echo " |---------------------------------------------------------------------|"
    echo " |                     >>~~~>Packages to install<~~~<<                 |"
    echo " |---------------------------------------------------------------------|"
    echo " |  > Maltego          (Osint)         |                               |"
    echo " |  > Villain          (C2)            |                               |"
    echo " |  > SIGIT            (Osint)         |                               |"
    echo " |  > Cam-Hackers      (IP-Cam)        |                               |"
    echo " |                                     |                               |"
    echo " |                                     |                               |"
    echo " |                                     |                               |"
    echo " |---------------------------------------------------------------------|"
}

main_menu() {
    while true; do
        clear
		echo "                                                "
		echo " >~~~~Tools installer for Kali nethunter~~~~~~< "
		echo "      >>---> By  Commander-Z3R0  <---<<         "
                echo "                                                "
		echo "                 _/|   Z   |\_                  "
		echo "                /  |   3   |  \                 "
		echo "               |    \  R  /    |                "   
		echo "               |  \ /  0  \ /  |                "
		echo "               | \  |     |  / |                "
		echo "               | \ _\_/^\_/_ / |                "
		echo "               |    --\//--    |                "
		echo "                \_  \     /  _/                 "
		echo "                  \__  |  __/                   "
		echo "                     \ _ /                      "
		echo "                    _/   \_                     "
		echo "                   / _/|\_ \                    " 
		echo "                    /  |  \                     "
		echo "                     / v \                      "
		echo "                                                "
		echo " >>--> Choose the table to select a tool <--<<  "
        echo " --> 1) Table 1"
        echo " --> 2) Table 2"
        echo " --> 3) Exit"
        read -p "Select a table: " choice

        case $choice in
            1)
                show_table1
				PS3="Select a tool to install: "

				opciones=("Blackbird-venv" "Netdiscover" "Koadic" "Fluxion" "EvilTrust" "ExploitDB" "Kali-whoami" "Ettercap" "Autopsy" "Kismet"
						"Wappalyzer" "Routersploit" "Metagoofil" "Exiftool" "Back")

				select opt in "${opciones[@]}"; do
						case $opt in
							"Blackbird-venv")
								function check_and_install_Blackbird_venv() {
									local tool_name="Blackbird-venv"
									if [ "$EUID" -ne 0 ]; then
										echo "Please run this script with Privileges: sudo $0"
										exit 1
									fi

									if command -v "$tool_name" &>/dev/null; then
										echo "The Tool $tool_name is already installed."
									else
										echo "Installing $tool_name..."
										git clone https://github.com/command-Z3R0/Blackbird-venv.git &>/dev/null
										cd Blackbird-venv &>/dev/null
										chmod +x Blackbird-venv.sh &>/dev/null
										sudo rm -f /usr/local/bin/"$tool_name"
										sudo ln -s "$PWD/Blackbird-venv.sh" /usr/local/bin/"$tool_name" &>/dev/null
										echo " ------> $tool_name is available, run it by typing: sudo $tool_name "
									fi
								}

								# Uso de la función
								check_and_install_Blackbird_venv
								;;
							"Netdiscover")
								function check_and_install_Netdiscover() {
									local tool_name="netdiscover"
									if [ "$EUID" -ne 0 ]; then
										echo "Please run this script with Privileges: sudo $0"
										exit 1
									fi

									if command -v "$tool_name" &>/dev/null; then
										echo "The Tool $tool_name is already installed."
									else
										echo "Installing $tool_name..."
										sudo apt update &>/dev/null
										sudo apt-get install netdiscover -y &>/dev/null
										echo " ------> $tool_name is available, run it by typing: sudo $tool_name "
									fi
								}

								# Uso de la función
								check_and_install_Netdiscover
								;;
							"Koadic")
								 function check_and_install_Koadic() {
									local tool_name="koadic"
									if [ "$EUID" -ne 0 ]; then
										echo "Please run this script with Privileges: sudo $0"
										exit 1
									fi

									if command -v "$tool_name" &>/dev/null; then
										echo "The Tool $tool_name is already installed."
									else
										echo "Installing $tool_name..."
										sudo apt update &>/dev/null
										sudo apt-get install koadic -y &>/dev/null
										echo " ------> $tool_name is available, run it by typing: sudo $tool_name "
									fi
								}

								# Uso de la función
								check_and_install_Koadic
								;;
							"Fluxion")
								function check_and_install_Fluxion() {
									local tool_name="fluxion"
									local script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"  # Ruta del directorio donde se encuentra este scr>

									if [ "$EUID" -ne 0 ]; then
										echo "Please run this script with sudo: sudo $0"
										exit 1
									fi

									if command -v "$tool_name" &>/dev/null; then
										echo "The Tool $tool_name is already installed."
									else
										echo "Installing $tool_name..."
										git clone https://www.github.com/FluxionNetwork/fluxion.git "$script_dir/fluxion" &>/dev/null
										sudo apt-get update &>/dev/null
										sudo apt-get install -y isc-dhcp-server hostapd lighttpd php-cgi &>/dev/null
										cd "$script_dir/fluxion/"
										sudo chmod +x fluxion.sh
										alias fluxion='sudo fluxion'
										sudo ln -sf "$script_dir/fluxion/fluxion.sh" /usr/local/bin/fluxion 
										echo " ------> $tool_name is available, run it by typing: sudo $tool_name "
										cd "$script_dir"   # Vuelve al directorio original después de la instalación
									fi
								}

								# Uso de la función
								check_and_install_Fluxion
								;;
							"EvilTrust")
								function check_and_install_Eviltrust() {
									local tool_name="eviltrust"
									local script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"  # Ruta del script actual

										if [ "$EUID" -ne 0 ]; then
										echo "Please run this script with sudo: sudo $0"
										exit 1
									fi


									if command -v "$tool_name" &>/dev/null; then
										echo "The Tool $tool_name is already installed."
									else
										echo "Installing $tool_name..."
										git clone https://github.com/s4vitar/evilTrust.git &>/dev/null
										cd "$script_dir/evilTrust/"
										chmod +x evilTrust.sh
										sudo ln -s "$script_dir/evilTrust/evilTrust.sh" /usr/local/bin/eviltrust 
										echo " ------> $tool_name is available, run it by typing: sudo $tool_name "
										cd "$script_dir"  # Vuelve al directorio original después de la instalación
									fi
								}

								# Uso de la función
								check_and_install_Eviltrust
								;;
							"ExploitDB")
								function check_and_install_ExploitDB() {
									local tool_name="exploitDB"

									if [ "$EUID" -ne 0 ]; then
										echo "Please run this script with sudo: sudo $0"
										exit 1
									fi

									if command -v "$tool_name" &>/dev/null; then
										echo "The Tool $tool_name is already installed."
									else
										echo "Installing $tool_name..."
										sudo apt update &>/dev/null
										sudo apt-get install exploitdb -y  &>/dev/null
										echo " ------> $tool_name is available, run it by typing: sudo $tool_name "
									fi
								}

								# Uso de la función
								check_and_install_ExploitDB
								;;
							"Kali-whoami")
								function check_and_install_kali-whoami() {
									local tool_name="kali-whoami"

									if [ "$EUID" -ne 0 ]; then
										echo "Please run this script with sudo: sudo $0"
										exit 1
									fi


									if command -v "$tool_name" &>/dev/null; then
										echo "The Tool $tool_name is already installed."
									else
										echo "Installing $tool_name..."
										sudo apt install tar tor curl python3 python3-scapy network-manager -y &>/dev/null
										git clone https://github.com/omer-dogan/kali-whoami &>/dev/null
										cd kali-whoami/
										sudo make install &>/dev/null
										echo " ------> $tool_name is available, run it by typing: sudo $tool_name "
									fi
								}

								# Uso de la función
								check_and_install_kali-whoami
								;;
							"Ettercap")
								function check_and_install_ettercap() {
									local tool_name="ettercap"

									if [ "$EUID" -ne 0 ]; then
										echo "Please run this script with sudo: sudo $0"
										exit 1
									fi

									if command -v "$tool_name" &>/dev/null; then
										echo "The Tool $tool_name is already installed."
									else
										echo "Installing $tool_name..."
										sudo apt update &>/dev/null
										sudo apt-get install ettercap ettercap-graphical -y  &>/dev/null
										echo " ------> $tool_name is available, run it by typing:sudo $tool_name "
									fi
								}

								# Uso de la función
								check_and_install_ettercap
								;;
							"Autopsy")
								function check_and_install_autopsy() {
									local tool_name="autopsy"

									if [ "$EUID" -ne 0 ]; then
										echo "Please run this script with sudo: sudo $0"
										exit 1
									fi

									if command -v "$tool_name" &>/dev/null; then
										echo "The Tool $tool_name is already installed."
									else
										echo "Installing $tool_name..."
										sudo apt update &>/dev/null
										sudo apt-get install autopsy -y  &>/dev/null
										echo " ------> $tool_name is available, run it by typing:sudo $tool_name "
									fi
								}

								# Uso de la función   
								check_and_install_autopsy
								;;
							"Kismet")
								function check_and_install_kismet() {
									local tool_name="kismet"

									if [ "$EUID" -ne 0 ]; then
										echo "Please run this script with sudo: sudo $0"
										exit 1
									fi

									if command -v "$tool_name" &>/dev/null; then
										echo "The Tool $tool_name is already installed."
									else
										echo "Installing $tool_name..."
										sudo apt update &>/dev/null
										sudo apt-get install kismet -y &>/dev/null
										echo " ------> $tool_name is available, run it by typing: sudo $tool_name "
									fi
								}

								# Uso de la función
								check_and_install_kismet
								;;
							"Wappalyzer")
								function check_and_install_wappalyzer() {
									local tool_name="wappalyzer-cli"

									if [ "$EUID" -ne 0 ]; then
										echo "Please run this script with sudo: sudo $0"
										exit 1
									fi

									if command -v "$tool_name" &>/dev/null; then
										echo "The Tool $tool_name is already installed."
									else
										echo "Installing $tool_name..."
										git clone https://github.com/gokulapap/wappalyzer-cli &>/dev/null
										cd wappalyzer-cli 
										sudo pip3 install . &>/dev/null
										echo " ------> $tool_name is available, run it by typing wappy -h"
									fi
								}

								# Uso de la función
								check_and_install_wappalyzer
								;;
							"Routersploit")
								function check_and_install_routersploit() {
									local tool_name="routersploit"
									local script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"  # Ruta del script actual

										if [ "$EUID" -ne 0 ]; then
										echo "Please run this script with sudo: sudo $0"
										exit 1
									fi


									if command -v "$tool_name" &>/dev/null; then
										echo "The Tool $tool_name is already installed."
									else
										echo "Installing $tool_name..."
										apt-get install python3-pip git libglib2.0-dev -y &>/dev/null
										git clone https://www.github.com/threat9/routersploit.git "$script_dir/routersploit" &>/dev/null
										cd "$script_dir/routersploit"
										python3 -m pip install -r requirements.txt &>/dev/null
										alias routersploit='python3 rsf.py'
										ln -sf "$script_dir/routersploit/rsf.py" /usr/local/bin/routersploit
										echo " ------> $tool_name is available, run it by typing: routersploit"
										cd "$script_dir"
									fi
								}

								# Uso de la función
								check_and_install_routersploit
								;;
							"Metagoofil")
								function check_and_install_metagoofil() {
									local tool_name="metagoofil"

									if [ "$EUID" -ne 0 ]; then
										echo "Please run this script with sudo: sudo $0"
										exit 1
									fi

									if command -v "$tool_name" &>/dev/null; then
										echo "The Tool $tool_name is already installed."
									else
										echo "Installing $tool_name..."
										sudo apt update &>/dev/null
										sudo apt-get install metagoofil -y &>/dev/null
										echo " ------> $tool_name is available, run it by typing: sudo $tool_name "
									fi
								}

								# Uso de la función
								check_and_install_metagoofil
								;;
							"Exiftool")
								function check_and_install_exiftool() {
									local tool_name="exiftool"

									if [ "$EUID" -ne 0 ]; then
										echo "Please run this script with sudo: sudo $0"
										exit 1
									fi

									if command -v "$tool_name" &>/dev/null; then
										echo "The Tool $tool_name is already installed."
									else
										echo "Installing $tool_name..."
										sudo apt update &>/dev/null
										sudo apt-get install exiftool -y &>/dev/null
										echo " ------> $tool_name is available, run it by typing: sudo $tool_name "
									fi
								}

								# Uso de la función
								check_and_install_exiftool
								;;
							"Back")
								break
								;;
							*) echo "Invalid Option";;
						esac
				done
				;;
            2)
                show_table2
                PS3="Select a tool to install: "
				
				opciones=("Maltego" "Villain" "Sigit" "Shodan-eye" "Back")
				
				select opt in "${opciones[@]}"; do
						case $opt in
							"Maltego")
								function check_and_install_maltego() {
									local tool_name="maltego"
									if [ "$EUID" -ne 0 ]; then
										echo "Please run this script with Privileges: sudo $0"
										exit 1
									fi

									if command -v "$tool_name" &>/dev/null; then
										echo "The Tool $tool_name is already installed."
									else
										echo "Installing $tool_name..."
										sudo apt-get update -y &>/dev/null
										sudo apt-get install maltego -y &>/dev/null
										echo " ------> $tool_name is available, run it by typing: sudo $tool_name "
									fi
								}

								# Uso de la función
								check_and_install_maltego
								;;
							"Villain")
								function check_and_install_villain() {
									local tool_name="villain"
									if [ "$EUID" -ne 0 ]; then
										echo "Please run this script with Privileges: sudo $0"
										exit 1
									fi

									if command -v "$tool_name" &>/dev/null; then
										echo "The Tool $tool_name is already installed."
									else
										echo "Installing $tool_name..."
										sudo apt-get update -y &>/dev/null
										sudo apt-get install villain -y &>/dev/null
										echo " ------> $tool_name is available, run it by typing: sudo $tool_name "
									fi
								}

								# Uso de la función
								check_and_install_villain
								;;
				                        "Sigit")
								function check_and_install_sigit() {
									local tool_name="sigit"
									if [ "$EUID" -ne 0 ]; then
										echo "Please run this script with Privileges: sudo $0"
										exit 1
									fi

									if command -v "$tool_name" &>/dev/null; then
										echo "The Tool $tool_name is already installed."
									else
										echo "Installing $tool_name..."
										sudo apt-get update -y &>/dev/null
										sudo apt-get install wget -y &>/dev/null && wget https://raw.githubusercontent.com/termuxhackers-id/SIGIT/main/installkali.sh &>/dev/null && bash installkali.sh &>/dev/null
										echo " ------> $tool_name is available, run it by typing: sudo $tool_name "
									fi
								}

								# Uso de la función
								check_and_install_sigit
								;;
							"Shodan-eye")
								function check_and_install_shodaneye() {
									    local tool_name="shodaneye"
									    local script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
									
									    if [ "$EUID" -ne 0 ]; then
									        echo "Please run this script with sudo: sudo $0"
									        exit 1
									    fi
									
									    if command -v "$tool_name" &>/dev/null; then
									        echo "The Tool $tool_name is already installed."
									    else
									        echo "Installing $tool_name..."
									        apt-get install python3  -y &>/dev/null
									        git clone https://github.com/BullsEye0/shodan-eye.git "$script_dir/shodan-eye" &>/dev/null
									        cd "$script_dir/shodan-eye" 
									        python3 -m pip install -r requirements.txt &>/dev/null
		 								alias shodaneye='python3 shodan-eye.py'
	   									sudo chmod +x shodan-eye.py
									        ln -sf "$script_dir/shodan-eye/shodan-eye.py" "/usr/local/bin/shodaneye"
									        echo " ------> $tool_name is available, run it by typing: $tool_name"
									        cd "$script_dir" 
									    fi
								}
								
								check_and_install_shodaneye
								;;
							"Back")
								break
								;;
							*) echo "Invalid Option";;
						esac
				done
				;;
            3)
                echo "Exiting..."
                exit 0
                ;;
            *)
                echo "Invalid Option."
                ;;
        esac
    done
}

main_menu
