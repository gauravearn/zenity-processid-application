# zenity_processid_application
when you start coding back in zenity before the glib and the gtk and want to text how much you remember, here it goes, a zenity based processid and it will kill automatically the process id after plotting.

![check](https://github.com/sablokgaurav/zenity_processid_application/blob/main/invoke_zenity_plotter.png)
![generate](https://github.com/sablokgaurav/zenity_processid_application/blob/main/plot_network.png)
![files](https://github.com/sablokgaurav/zenity_processid_application/blob/main/files_generated.png)

I think i still remember well despite not coding in zenity for more than a year or so :D 

```
#!/usr/bin/env bash
# -*- coding:  utf-8 -*-
# Author: Gaurav Sablok
# date: 2023-09-15
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
```

Gaurav Sablok \
ORCID: https://orcid.org/0000-0002-4157-9405 \
WOS: https://www.webofscience.com/wos/author/record/C-5940-2014 \
RubyGems Published: https://rubygems.org/profiles/sablokgaurav \
Python Packages Published : https://pypi.org/user/sablokgaurav/

