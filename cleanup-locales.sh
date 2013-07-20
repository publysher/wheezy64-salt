#!/bin/bash

echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
DEBIAN_FRONTEND=noninteractive apt-get install -y localepurge
localepurge
apt-get purge -y localepurge


