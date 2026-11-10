docker run \
	-u "$(id -u dragonwilds):$(id -g dragonwilds)" \
	-e HOME=/steamcmd-data \
	--tmpfs /steamcmd-data:uid=$(id -u dragonwilds),gid=$(id -g dragonwilds),exec,mode=1770 \
	-v /home/user/dragonwilds/app:/app \
	steamcmd/steamcmd:rocky-9 \
	steamcmd \
	+force_install_dir /app \
	+login anonymous \
	+app_info_update 1 \
	+app_update 4019830 \
	validate \
	+quit
