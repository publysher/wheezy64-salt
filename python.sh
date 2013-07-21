#!/bin/bash

echo > /etc/apt/apt.conf.d/99publysher <<EOF
APT::Install-Recommends "0" ; APT::Install-Suggests "0" ;
EOF

apt-get -o"APT::Install-Recommends=0" -o"APT::Install-Suggests=0" install -y python-pip

