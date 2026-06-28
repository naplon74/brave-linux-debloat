#!/bin/bash

debloat() {
    echo "Brave Linux debloat by Naplon_"
    echo "Github: https://github.com/naplon74/brave-linux-debloat"

    sudo mkdir /etc/brave/policies/managed -p

    wget https://raw.githubusercontent.com/naplon74/brave-linux-debloat/refs/heads/main/policies.json
    sudo cp policies.json /etc/brave/policies/managed
    rm policies.json

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
    options=("Debloat Brave Linux" "Edit config file" "Uninstall the debloat config file" "Exit")

    select choix in "${options[@]}"; do
        case $REPLY in
            1)
                debloat
                pause
                break
                ;;  
            2)
                edit_config
                pause
                break
                ;;
            3)
                uninstall
                pause
                break
                ;;
            4)
                exit 0
                ;;
            *)
                echo "Invalid option. Please choose a valid option."
                ;;
        esac
    done
done 
