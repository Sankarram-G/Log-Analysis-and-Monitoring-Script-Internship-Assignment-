# Log Analysis and Monitoring Script

This script automates the analysis and monitoring of log files. It continuously monitors a specified log file for new entries, looks for specific keywords, and logs occurrences of those keywords. Each time a new log entry is detected, it performs log analysis by counting the occurrences of specific keywords (e.g., "ERROR", "WARNING", "CRITICAL") within that log entry. After analyzing each log entry, the script generates a summary report that includes the counts of these keywords. The summary report is appended to the log_analysis_file specified in the script.

## Usage

### Requirements

- Bash shell environment

### Installation

1. Clone the repository:

    ```
    git clone <https://github.com/your-username/log-monitor-script.git>
    ```

2. Navigate to the project directory:

    ```
    cd log-monitor-script
    ```

### Running the Script

1. Replace `"/path/to/your/log_file.log"` in the script with the path to the log file you want to monitor.

2. Make the script executable:

    ```
    chmod +x log-monitor.sh
    ```

3. Run the script:

    ```
    ./log-monitor.sh
    ```

4. The script will start monitoring the specified log file. Press `Ctrl+C` to stop the monitoring process.

## Testing

To test the script, follow these steps:

1. Ensure you have a sample log file or create one for testing purposes.

2. Add some log entries containing the keywords specified in the script (e.g., "ERROR", "WARNING", "CRITICAL").

3. Run the script and observe if it detects and logs occurrences of the specified keywords.

4. Interrupt the script using `Ctrl+C` to ensure it handles interruptions gracefully.

## Contributing

Contributions are welcome! If you'd like to contribute to the development of this script, feel free to submit a pull request with your proposed changes.
