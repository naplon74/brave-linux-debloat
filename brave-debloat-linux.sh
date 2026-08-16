#!/bin/bash

debloat_with_curl() {
    echo "Brave Linux debloat by Naplon_"
    echo "Github: https://github.com/naplon74/brave-linux-debloat"

    sudo mkdir /etc/brave/policies/managed -p

    curl -L --fail -o policies.json https://raw.githubusercontent.com/naplon74/brave-linux-debloat/refs/heads/main/policies.json
    sudo cp policies.json /etc/brave/policies/managed
    rm -f policies.json

    echo "Brave Linux debloat succeeded"
    echo "Edit the policies in /etc/brave/policies/managed"
}

debloat() {
    echo "Brave Linux debloat by Naplon_"
    echo "Github: https://github.com/naplon74/brave-linux-debloat"

    sudo mkdir /etc/brave/policies/managed -p

    wget -O policies.json https://raw.githubusercontent.com/naplon74/brave-linux-debloat/refs/heads/main/policies.json
    sudo cp policies.json /etc/brave/policies/managed
    rm -f policies.json

    echo "Brave Linux debloat succeeded"
    echo "Edit the policies in /etc/brave/policies/managed"
}

edit_config() {
    echo "Editing config file..."
    sudo nano /etc/brave/policies/managed/policies.json
}

uninstall() {
    echo "Uninstalling debloat config file..."
    sudo rm /etc/brave/policies/managed/policies.json
    echo "Debloat config file uninstalled."
}

pause() {
    echo
    read -n 1 -s -r -p "Press any key to return to the menu..."
    clear
}


while true; do
    clear
    echo "▗▄▄▖ ▗▄▄▖  ▗▄▖ ▗▖  ▗▖▗▄▄▄▖    ▗▄▄▄  ▗▄▄▄▖▗▄▄▖ ▗▖    ▗▄▖  ▗▄▖▗▄▄▄▖"
    echo "▐▌ ▐▌▐▌ ▐▌▐▌ ▐▌▐▌  ▐▌▐▌       ▐▌  █ ▐▌   ▐▌ ▐▌▐▌   ▐▌ ▐▌▐▌ ▐▌ █  "
    echo "▐▛▀▚▖▐▛▀▚▖▐▛▀▜▌▐▌  ▐▌▐▛▀▀▘    ▐▌  █ ▐▛▀▀▘▐▛▀▚▖▐▌   ▐▌ ▐▌▐▛▀▜▌ █  "
    echo "▐▙▄▞▘▐▌ ▐▌▐▌ ▐▌ ▝▚▞▘ ▐▙▄▄▖    ▐▙▄▄▀ ▐▙▄▄▖▐▙▄▞▘▐▙▄▄▖▝▚▄▞▘▐▌ ▐▌ █  "                                                                                                                                                                                                                    
    echo                                                                                                                                                                   

    PS3="Brave Linux debloat by Naplon_ - Choose an option: "
    options=("Debloat Brave Linux (wget)" "Debloat Brave Linux (curl)" "Edit config file" "Uninstall the debloat config file" "Exit")

    select choix in "${options[@]}"; do
        case $REPLY in
            1)
                debloat
                pause
                break
                ;; 
            2)
                debloat_with_curl
                pause
                break
                ;; 
            3)
                edit_config
                pause
                break
                ;;
            4)
                uninstall
                pause
                break
                ;;
            5)
                exit 0
                ;;
            *)
                echo "Invalid option. Please choose a valid option."
                ;;
        esac
    done
done 
