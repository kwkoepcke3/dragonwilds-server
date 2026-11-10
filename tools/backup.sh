#!/usr/bin/env bash
set -euo pipefail

cd /home/user/dragonwilds/stage
cp /home/user/dragonwilds/app/RSDragonwilds/Saved/SaveGames/ANTARCTICA* ./

NAME=ANTARCTICA-$(date +"%m-%d-%y-%H-%M-%S").tar.gz
tar -czvf $NAME ./*

mv $NAME /opt/dragonwilds/ANTARCTICA

rm -rf ./*



