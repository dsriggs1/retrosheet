#!/bin/bash

# Define the start year
start_year=1952

# Ask the user to input the end year
echo "Enter the end year:"
read end_year

# Loop from start year to end year
for (( year=$start_year; year<=$end_year; year++ ))
do
  # Form the URL of the zip file for the current year
  url="http://www.retrosheet.org/events/${year}eve.zip"

  # Download the zip file for the current year
  wget "$url"
  unzip "${year}eve.zip" -d ~/Documents/retrosheet/retrosheet/data/unzipped

done
