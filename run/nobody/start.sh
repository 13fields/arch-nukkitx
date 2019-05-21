#!/bin/bash

if [[ ! -d /config/nukkitx ]]; then
	echo "[info] NukkitX config folder '/config/nukkitx' does not exist, copying default..."
	mkdir -p /config/nukkitx
	cp -r /usr/lib/nukkitx/* /config/nukkitx
fi

# change directory and then run nukkitx via tmux
cd /config/nukkitx

# run tmux attached to nukkitx (blocking)
/usr/bin/script /home/nobody/typescript --command "/usr/bin/tmux new-session -d -s rt -n nukkitx /usr/bin/java -Xms1G -Xmx1G -jar ./nukkit-1.0-SNAPSHOT.jar"

# run expect to set language to english on first run, via tmux attached session
expect /home/nobody/init.exp
