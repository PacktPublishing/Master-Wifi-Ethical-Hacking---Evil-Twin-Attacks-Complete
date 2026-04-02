#!/bin/sh

service hostapd stop
service apache2 stop
service dnsmasq stop
service rpcbind stop
killall dnsmasq
killall hostapd
airmon-ng stop wlan0
service NetworkManager restart
service wpa_supplicant restart
