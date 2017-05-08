#!/usr/bin/sh

rm -r /var/run/postgresql/*
/etc/init.d/postgresql start
msfupdate
clear
msfconsole
