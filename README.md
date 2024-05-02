# zenity-processid-application

a zenity based processid and it will kill automatically the process id after plotting.

![check](https://github.com/sablokgaurav/zenity_processid_application/blob/main/invoke_zenity_plotter.png)
![generate](https://github.com/sablokgaurav/zenity_processid_application/blob/main/plot_network.png)
![files](https://github.com/sablokgaurav/zenity_processid_application/blob/main/files_generated.png)

```
#!/usr/bin/env bash
# -*- coding:  utf-8 -*-
# Author: Gaurav Sablok
# date: 2023-10-17
# MIT License
# a zenity way of plotting the docker network and for killing the processids
docker_address=$(zenity --forms --width=300 --height=100 \
                                                --title "plot your ip address" \
                                                                --add-entry="docker_address")Gaurav \
ORCID: https://orcid.org/0000-0002-4157-9405 \
WOS: https://www.webofscience.com/wos/author/record/C-5940-2014 \
RubyGems Published: https://rubygems.org/profiles/sablokgaurav \
Python Packages Published : https://pypi.org/user/sablokgaurav/
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
# if you are using in linux this one then use the timeout just remembered this
                      # now so that it will make easy. updated at 12:46AM on Oct,18

$timeout 100 ./zenity_plotter.sh

```

Gaurav \
Academic Staff Member \
Bioinformatics \
Institute for Biochemistry and Biology \
University of Potsdam \
Potsdam,Germany 
