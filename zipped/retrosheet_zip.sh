#!/bin/bash

# This script downloads the retrosheet zip files for a given year, unzips them
# and places them in the unzipped folder.

start_year=$1
end_year=$2

# Loop from start year to end year
for (( year=$start_year; year<=$end_year; year++ ))
do
  # Form the URL of the zip file for the current year
  url="http://www.retrosheet.org/events/${year}eve.zip"

  # Download the zip file for the current year
  wget "$url"
  unzip "${year}eve.zip" -d ../unzipped

done
