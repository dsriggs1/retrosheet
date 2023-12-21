#!/bin/bash

start_year=$1
end_year=$2

commands=""

# Loop from start year to end year
for (( year=$start_year; year<=$end_year; year++ ))
do
    commands+="source ./load_events.sql $year;"
    commands+="source ./load_games.sql $year;"
done

# Execute the commands in MySQL
mariadb -u root -p retrosheet -e "$commands"
