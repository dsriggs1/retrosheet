#!/bin/bash

# Loop through years between 1952 and 2022
for year in {1952..2022}
do
  # Form the URL of the zip file for the current year
  url="http://www.retrosheet.org/events/${year}eve.zip"

  # Download the zip file for the current year
  wget "$url"
  unzip "${year}eve.zip" -d ~/Documents/retrosheet/retrosheet/data/unzipped

done
