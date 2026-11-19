#!/usr/bin/env bash

podman run \
        --userns=keep-id \
	-e HOME=/steamcmd-data \
	-v /home/user/dragonwilds/app/steamcmd-data:/steamcmd-data:z \
	-v /home/user/dragonwilds/app:/app:z \
	steamcmd/steamcmd:rocky-9 \
	steamcmd \
	+force_install_dir /app \
	+login anonymous \
	+app_info_update 1 \
	+app_update 4019830 \
	validate \
	+quit
