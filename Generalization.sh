#!/bin/bash

# Specify the weather log file
weather_log="rx_poc.log"

# Specify the historical forecast accuracy file
historical_file="historical_fc_accuracy.tsv"

# Create the historical file if it doesn't exist
if [ ! -e "$historical_file" ]; then
    echo -e "year\tmonth\tday\tobs_temp\tfc_temp\taccuracy\taccuracy_range" > "$historical_file"
fi

# Get the number of lines in the weather log file
num_lines=$(wc -l < "$weather_log")

# Iterate through the weather log file starting from the second line
for ((i = 2; i <= num_lines; i++)); do
    # Extract consecutive pairs of lines using head and tail
    yesterday_row=$(tail -n +"$((i-1))" "$weather_log" | head -n 1)
    today_row=$(tail -n +"$i" "$weather_log" | head -n 1)

    # Extract data for yesterday and today
    yesterday_fc=$(echo "$yesterday_row" | awk '{print $5}' | tr -d '°C')
    today_temp=$(echo "$today_row" | awk '{print $4}' | tr -d '°C')

    # Calculate accuracy
    accuracy=$((yesterday_fc - today_temp))

    # Assign accuracy label
    if [ -1 -le $accuracy ] && [ $accuracy -le 1 ]; then
        accuracy_range="excellent"
    elif [ -2 -le $accuracy ] && [ $accuracy -le 2 ]; then
        accuracy_range="good"
    elif [ -3 -le $accuracy ] && [ $accuracy -le 3 ]; then
        accuracy_range="fair"
    else
        accuracy_range="poor"
    fi

    # Extract date information
    year=$(echo "$today_row" | awk '{print $1}')
    month=$(echo "$today_row" | awk '{print $2}')
    day=$(echo "$today_row" | awk '{print $3}')

    # Append data to historical file
    echo -e "$year\t$month\t$day\t$today_temp\t$yesterday_fc\t$accuracy\t$accuracy_range" >> "$historical_file"
done
