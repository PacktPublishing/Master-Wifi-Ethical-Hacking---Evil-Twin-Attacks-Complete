#!/bin/sh

airmon-ng check kill
airmon-ng start wlan0
ifconfig wlan0 10.0.0.1 netmask 255.255.255.0
route add default gw 10.0.0.1
dnsmasq -C dnsmasq.conf
hostapd hostapd.conf
service apache2 start



