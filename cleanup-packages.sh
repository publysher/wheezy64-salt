#!/bin/bash

export KEEP="grub-pc openssh-server linux-image-$(uname -r) locales sudo"
export REMOVE="aptitude aptitude-common nano tasksel libxapian22 groff-base wget libcwidget3"

export REQUIRE="$(aptitude search '(?priority(important) | ?priority(required)) ?installed' -F%p)"
export NONREQS="$(aptitude search '!?priority(important) !?priority(required) ?installed' -F%p)"

apt-mark manual $KEEP		# prevent autoremove later on
apt-mark hold $KEEP $REQUIRE	# temporary hold on the packages we want to keep
apt-mark unhold $REMOVE

# remove the others one by one
for pkg in $NONREQS $REMOVE
do
	apt-get -y -qq purge $pkg || echo "Could not remove $pkg"
done

# unlock our packages
apt-mark unhold $KEEP $REQUIRE
