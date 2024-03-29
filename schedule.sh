#!/bin/bash

## install before run
# apt-get -y install python3-pip
# apt-get install python3-bs4
# pip3 install requests
# pip3 install BeautifulSoup4 
# pip3 install clint
# pip3 install -U gazpacho


## to add in crontab ##
## run each 4 hours
## put out in a log file (/opt/data/log/parse_tamilyogi.log)
# crontab -e
# 0 */4 * * * bash /opt/data/scrpits/schedule.sh >> /opt/data/log/parse_tamilyogi.log
# /etc/init.d/cron reload

dt=$(date '+%d/%m/%Y - %H:%M:%S');
echo ""
echo "######################### $dt #########################"
echo "####################### Start of script python ##########################"

# run script python with optional arguments
# - path: put path to dawnload the movies
# - number: number of last movies to search during the parsing

python3 /opt/data/scrpits/parse_tamilyogi.py \
    -path '/opt/videos' \
    -tmp_path '/opt/log' \
    -number 5
echo "######################## End of Script Python ###########################"