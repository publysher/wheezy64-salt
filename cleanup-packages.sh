#!/bin/bash

# Based on the list on http://wiki.debian.org/ReduceDebian

export REMOVE="acpi acpid aptitude aptitude-common at bash-completion bc bind9-host bsd-mailx dc debian-faq doc-debian eject exim4 exim4-base exim4-config exim4-daemon-light file groff iamerican ibritish info ispell libdbus-1-3 libept1.4.12 libboost-iostreams1.49.0 libcwidget3 libxapian22 libsigc++-2.0-0c2a laptop-detect manpages mutt nano net-tools ncurses-term reportbug tasksel traceroute wamerican w3m whois "

DEBIAN_FRONTEND=noninteractive apt-get -y purge $REMOVE

