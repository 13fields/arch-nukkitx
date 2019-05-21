**Application**

[NukkitX](https://nukkitx.com/)

**Description**

Nukkit is nuclear-powered server software for Minecraft: Pocket Edition. It has a few key advantages over other server software: Written in Java, Nukkit is faster and more stable. Having a friendly structure, it's easy to contribute to Nukkit's development and rewrite plugins from other platforms into Nukkit plugins.

**Build notes**

Latest GitHub commit to master branch.

**Usage**
```
docker run -d \
    -p 19132:19132 \ 
    --name=<container name> \
    -v <path for config files>:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=<umask for created files> \
    -e PUID=<uid for user> \
    -e PGID=<gid for user> \
    binhex/arch-nukkitx
```

Please replace all user variables in the above command defined by <> with the correct values.

**Access application**

Access is via command line only - To Interact with Server / administration, use "docker attach MinecraftPE" at command promt Press ctrl-p-ctrl-q to exit without shutting down the server

**Example**
```
docker run -d \
    -p 19132:19132 \ 
    --name=nukkitx \
    -v /apps/docker/nukkitx:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=000 \
    -e PUID=0 \
    -e PGID=0 \
    binhex/arch-nukkitx
```

**Notes**

User ID (PUID) and Group ID (PGID) can be found by issuing the following command for the user you want to run the container as:-

```
id <username>
```
___
If you appreciate my work, then please consider buying me a beer  :D

[![PayPal donation](https://www.paypal.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MM5E27UX6AUU4)

[Support forum](http://lime-technology.com/forum/index.php?topic=45837.0)