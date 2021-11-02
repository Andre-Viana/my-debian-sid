#!/bin/bash
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 5A62D0CAB6264964
sudo echo "deb http://lazka.github.io/ql-debian/stable/ quodlibet-stable/" > /etc/apt/sources.list.d/quodlibet.list
sudo apt-get update && sudo apt-get install quodlibet \
	vlc
