#!/bin/bash

# This script runs the chadwick tools on the unzipped retrosheet files and parses the data into .csv files. 

start_year=$1
end_year=$2

# Loop from start year to end year
for year in $(seq $start_year $end_year)
do
    wine cwevent.exe -f 0-96 -x 0-60 -y $year $year*.ev* > ../data/parsed/all$year.csv &
    wine cwsub.exe -f 0-96 -x 0-60 -f 0-9 -y $year $year*.ev* > ../data/parsed/sub$year.csv &
    wine cwgame.exe -f 0-83 -y $year $year*.ev* > ../data/parsed/games$year.csv &
    wait
done
