#!/usr/bin/env bash
set -euo pipefail

SYSTEMD_DIR="$HOME/.config/systemd/user"
QUADLET_DIR="$HOME/.config/containers/systemd"
SERVER_DIR="$HOME/dragonwilds"

if [[ ! -d $SYSTEMD_DIR ]]; then
    mkdir -p $SYSTEMD_DIR
fi

if [[ ! -d $QUADLET_DIR ]]; then
    mkdir -p $QUADLET_DIR
fi

ln -s $SERVER_DIR/dragonwilds.container $QUADLET_DIR/dragonwilds.container
ln -s $SERVER_DIR/dragonwilds-backup.service $SYSTEMD_DIR/dragonwilds-backup.service
ln -s $SERVER_DIR/dragonwilds-backup.timer $SYSTEMD_DIR/dragonwilds-backup.timer

systemctl --user daemon-reload

systemctl --user enable --now dragonwilds.service
systemctl --user enable --now dragonwilds-backup.timer
