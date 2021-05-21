#!/bin/sh

if [ "$(pgrep openvpn)" ]; then
    echo " VPN Active"
else
    echo " VPN Inactive"
fi
