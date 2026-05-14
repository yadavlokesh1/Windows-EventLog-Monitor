# Windows EventLog Monitor

PowerShell-based Windows event log monitoring tool for exporting critical and error events into CSV reports.

## Overview

A lightweight PowerShell script designed to collect critical and error events from Windows Event Viewer and export the results into a CSV report for administrative review and troubleshooting.

## Features
- Monitor Windows event logs
- Collect Critical and Error events
- Filter events based on recent activity
- Export results to CSV
- Lightweight and easy-to-read script

## Requirements
- Windows PowerShell 5.1 or later
- Windows Server or Windows client machine
- Appropriate local permissions

## Usage

Update the log name or day range if needed:

```powershell
$logName = "System"
$daysToCheck = 7
```

Run the script:

```powershell
.\Windows-EventLog-Monitor.ps1
```

## Output File

The script generates:

```txt
Event_Log_Report.csv
```

## Example CSV Output

| TimeCreated | Id | LevelDisplayName | ProviderName | Message |
|---|---|---|---|---|
| 2026-05-10 08:15:22 | 6008 | Error | EventLog | The previous system shutdown was unexpected. |
| 2026-05-11 14:42:01 | 7031 | Critical | Service Control Manager | The Windows Update service terminated unexpectedly. |

## Example Use Cases
- Windows server troubleshooting
- Event log monitoring
- Infrastructure incident review
- System health analysis

## Scope

This script is designed for single-machine execution.

It collects event logs from the machine where the script is executed.

## Notes
- Script was tested in a lab environment and is intended for administrative and reporting purposes
- Review and validate the script before using it in production environments
- CSV output can be opened directly in Microsoft Excel

## Author

Lokesh Yadav  
Windows System Administrator
