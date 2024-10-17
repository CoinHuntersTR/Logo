#!/bin/bash
source <(curl -s https://raw.githubusercontent.com/CoinHuntersTR/Logo/main/common.sh)

printGreen "2. Updating packages..." && sleep 1
sudo apt update
sudo apt-get update

printGreen "3. Installing dependencies..." && sleep 1
sudo apt install -y curl git wget htop tmux build-essential jq make lz4 gcc unzip libssl-dev tar clang pkg-config bsdmainutils ncdu chrony liblz4-tool
