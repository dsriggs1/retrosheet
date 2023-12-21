#!/bin/bash

# Define the start year
start_year=1952

# Ask the user to input the end year
echo "Enter the end year:"
read end_year

commands=""

# Loop from start year to end year
for (( year=$start_year; year<=$end_year; year++ ))
do
    commands+="source /home/sean/Documents/retrosheet/retrosheet/loaders/load_events.sql $year; "
    commands+="source /home/sean/Documents/retrosheet/retrosheet/loaders/load_games.sql $year;"
done

# Execute the commands in MySQL
mysql -u root -p retrosheet -e "$commands"
