#!/bin/bash

# Based on the list on http://wiki.debian.org/ReduceDebian

export REMOVE="acpi acpid aptitude aptitude-common apt-listchanges apt-utils at bash-completion bc bind9-host bsd-mailx cpp-4.7 dc debian-faq discover doc-debian eject exim4 exim4-base exim4-config exim4-daemon-light file ftp gcc-4.6-base groff iamerican ibritish info installation-report ispell libdbus-1-3 libept1.4.12 libboost-iostreams1.49.0 libcwidget3 libreadline-gplv2-dev libxapian22 libsigc++-2.0-0c2a laptop-detect lvm2 m4 manpages make mutt nano net-tools ncurses-term procmail reportbug tasksel texinfo traceroute wamerican w3m wget whois xauth"

DEBIAN_FRONTEND=noninteractive apt-get -y purge $REMOVE

