#!/bin/bash

current_year=$(date +%Y)

for year in $(seq 1952 $current_year)
do
    wine cwevent.exe -f 0-96 -x 0-60 -y $year $year*.ev* > ~/Documents/retrosheet/retrosheet/data/parsed/all$year.csv &
    wine cwsub.exe -f 0-96 -x 0-60 -f 0-9 -y $year $year*.ev* > ~/Documents/retrosheet/retrosheet/data/parsed/sub$year.csv &
    wine cwgame.exe -f 0-83 -y $year $year*.ev* > ~/Documents/retrosheet/retrosheet/data/parsed/games$year.csv &
    wait
done
