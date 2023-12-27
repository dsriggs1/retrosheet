#!/bin/bash

# Prompt for database credentials
read -sp "Enter your database password: " PASSWORD
echo

# Directory where your CSV files are located
CSV_DIR="../data/parsed"

# Path to the SQL file containing the LOAD DATA INFILE command
SQL_FILE="./load_events.sql"

# Loop through each CSV file in the directory
for CSV_FILE in $CSV_DIR/all*.csv
do
    echo "Loading file $CSV_FILE into database..."

    # Read the SQL command from the file
    SQL_CMD=$(cat "${SQL_FILE}")

    # Replace a placeholder in SQL_CMD with the current CSV file path
    SQL_CMD=${SQL_CMD//__FILEPATH__/${CSV_FILE}}

    # Execute the command
    if sudo mariadb -u root -p"$PASSWORD" -e "$SQL_CMD"
    then
        echo "Successfully loaded file $CSV_FILE into database."
    else
        echo "Error: Could not load file $CSV_FILE into database."
    fi
done

echo "Processing of files complete."
