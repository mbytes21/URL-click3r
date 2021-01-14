#!/bin/sh
sudo python3 torghost.py --start
echo "Whats the URL you want to click? "
read targeturl
sleep 1
clear
echo "  _________ __                 __  .__                "
echo " /   _____//  |______ ________/  |_|__| ____    ____  "
echo " \_____  \\   __\__  \\_  __ \   __\  |/    \  / ___\ "
echo " /        \|  |  / __ \|  | \/|  | |  |   |  \/ /_/  >"
echo "/_______  /|__| (____  /__|   |__| |__|___|  /\___  / "
echo "        \/           \/                    \//_____/  "
while :
do
    clear
    echo hitting $targeturl
    sudo python3 torghost.py --switch
    midori -a $targeturl &
    sleep 7
    killall midori
done
