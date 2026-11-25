#!/usr/bin/env bash
set -e
TAG="frosty-delta-hidden-delta"
LIB="kindled-closet.a"
URL="https://github.com/davinakafzern/ornategauntletkit/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 -O "$LIB" "$URL"
g++ -O2 -std=c++17 -pthread main.cpp "$LIB" -o app && ./app
