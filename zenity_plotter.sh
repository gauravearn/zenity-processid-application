#!/usr/bin/env bash
# -*- coding:  utf-8 -*-
# Author: Gaurav Sablok
# date: 2023-10-17
# MIT License
# a zenity way of plotting the docker network and for killing the processids
docker_address=$(zenity --forms --width=300 --height=100 \
                                                --title "plot your ip address" \
                                                                --add-entry="docker_address")
IP="$docker_address"
if [[ -z "IP" ]]
then
    echo "there is no network"
    exit 1
else
    ping "$IP" > "${IP}".log && cat "${IP}".log | \
                             cut -f 7 -d " " | \
                                cut -f 2 -d "=" | uplot bar -d, -t "time latency"
kill "${IP}"
fi
