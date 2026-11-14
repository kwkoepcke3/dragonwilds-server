#!/usr/bin/env bash
set -euo pipefail

SAVE_NAME=ANTARCTICA
BACKUP_NAME="$SAVE_NAME-$(date +"%m-%d-%y-%H-%M-%S").tar.gz"

tar -C /home/user/dragonwilds/app/RSDragonwilds/Saved/SaveGames -czvf "/opt/dragonwilds/$SAVE_NAME/$BACKUP_NAME" $SAVE_NAME.sav $SAVE_NAME.sav.backup
