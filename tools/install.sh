docker run \
	-u "$(id -u dragonwilds):$(id -g dragonwilds)" \
	-e HOME=/steamcmd-data \
	-v /home/user/dragonwilds/app/steamcmd-data:/steamcmd-data \
	-v /home/user/dragonwilds/app:/app \
	steamcmd/steamcmd:rocky-9 \
	steamcmd \
	+force_install_dir /app \
	+login anonymous \
	+app_update 4019830 \
	+quit

