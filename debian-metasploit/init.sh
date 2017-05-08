#!/usr/bin/sh

/etc/init.d/postgresql start
msfupdate
clear
msfconsole
