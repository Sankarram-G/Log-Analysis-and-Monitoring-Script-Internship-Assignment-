#!/bin/bash

# Define the path to the log file

log_file="/path/to/your/log_file.log"
log_analysis_file="log_analysis.txt"

# Function to handle cleanup and exit
cleanup_exit() {
    echo "Monitoring interrupted. Exiting."
    exit 0
}

# A Function to analyse log entries

analyze_log() {
    echo "Analyzing log file..."
    keywords=("ERROR" "WARNING" "CRITICAL")  
    echo "Summary Report:" > "$log_analysis_file"
    for keyword in "${keywords[@]}"; do
        count=$(grep -c "$keyword" "$log_file")
        echo "Occurrences of '$keyword': $count" >> "$log_analysis_file"
    done
    echo "Analysis complete. Summary report saved in $log_analysis_file"
}


# This is the Main function for log monitoring

monitor_log() {
    echo "Monitoring log file: $log_file"
    trap cleanup_exit SIGINT  # Handle Ctrl+C
    tail -n 0 -f "$log_file" | while read -r line; do
        echo "$line"
        analyze_log  # Perform analysis on each new log entry
    done
}

# And this is where the main script execution starts 

if [ ! -f "$log_file" ]; then
    echo "Error: Log file '$log_file' not found."
    exit 1
fi

monitor_log  # Start monitoring the log file
