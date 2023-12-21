#!/bin/bash

# This is the main script for creating the retrosheet database. 
# You can build a full history by running from 1952 or incrementally load
# only the new data by running the recent years.

# ask user if they want to run full history
echo "Do you want to build the full history? (y/n)"
read full_history

if [ "$full_history" == "y" ]; then
    echo "Running full history"
    # Building the full retrosheet history
    start_year=1952
    echo "What year do you want to end at?"
    read end_year
    
    ../zipped/retrosheet_zip.sh $start_year $end_year
    ../unzipped/cwbat.sh $start_year $end_year
    sudo mariadb -u root -p <<EOF
source ./retrosheet_table_schema.sql
source ./partition.sql
EOF  
    ./run_data_load.sh $start_year $end_year
else
    echo "Running incremental history"
    echo "What year do you want to start from?"
    read start_year
    echo "What year do you want to end at?"
    read end_year
    # Adding only recent years
 
    ../zipped/retrosheet_zip.sh $start_year $end_year
    ../unzipped/cwbat.sh $start_year $end_year
    ./run_data_load.sh $start_year $end_year
fi
