#!/bin/bash
source <(curl -s https://raw.githubusercontent.com/CoinHuntersTR/Logo/main/common.sh)

printGreen "2. Updating packages..." && sleep 1
sudo apt update
sudo apt-get update

printGreen "3. Installing dependencies..." && sleep 1
sudo apt install -y aria2 bsdmainutils build-essential chrony clang curl gcc gh git htop jq libssl-dev liblz4-tool lz4 make ncdu pkg-config tar tmux unzip wget
