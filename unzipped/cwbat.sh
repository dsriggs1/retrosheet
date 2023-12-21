#!/bin/bash

# Define the start year
start_year=1952

# Ask the user to input the end year
echo "Enter the end year:"
read end_year

# Loop from start year to end year
for year in $(seq $start_year $end_year)
do
    wine cwevent.exe -f 0-96 -x 0-60 -y $year $year*.ev* > ~/Documents/retrosheet/retrosheet/data/parsed/all$year.csv &
    wine cwsub.exe -f 0-96 -x 0-60 -f 0-9 -y $year $year*.ev* > ~/Documents/retrosheet/retrosheet/data/parsed/sub$year.csv &
    wine cwgame.exe -f 0-83 -y $year $year*.ev* > ~/Documents/retrosheet/retrosheet/data/parsed/games$year.csv &
    wait
done
