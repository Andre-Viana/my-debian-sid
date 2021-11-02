#!/bin/bash
sudo apt update && sudo apt install intel-microcode \
	build-essential \
	apt-listchanges \
	apt-listbugs
	dkms \
	linux-headers-$(uname -r) \
	curl \
	software-properties-common \
	apt-transport-https \
	git \
	rsync \
	wget \
	tree
	ufw -y
sudo ufw enable
