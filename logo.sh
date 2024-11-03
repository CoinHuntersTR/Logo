#!/bin/bash

check_and_install_pv() {
    if ! command -v pv &> /dev/null; then
        sudo apt update -y > /dev/null 2>&1
        sudo apt install pv -y > /dev/null 2>&1
    fi
}

print() {
    colors=("\e[1;31m" "\e[1;32m" "\e[1;33m" "\e[1;34m" "\e[1;35m" "\e[1;36m" "\e[1;37m")

    for line in "$@"; do
        color=${colors[RANDOM % ${#colors[@]}]}
        echo -e "${color}${line}" | pv -qL 100
        sleep 0.2
    done
}

reset='\e[0m'

check_and_install_pv

logo_lines=(
    "  ____      _         _   _             _                 "
    " / ___|___ (_)_ __   | | | |_   _ _ __ | |_ ___ _ __ ___  "
    "| |   / _ \\| | '_ \\  | |_| | | | | '_ \\| __/ _ \\ '__/ __| "
    "| |__| (_) | | | | | |  _  | |_| | | | | ||  __/ |  \\__ \\ "
    " \\____\\___/|_|_| |_| |_| |_|\\__,_|_| |_|\\__\\___|_|  |___/ "
    ""
    " ⋆ ——————————————————————————————————————————————————— ⋆"
    "   X : https://x.com/CoinHuntersTR ▪️ TG : https://t.me/CoinHuntersTR"
    " ⋆ ——————————————————————————————————————————————————— ⋆"
)

echo -e "$reset"
print "${logo_lines[@]}"
echo -e "$reset"
