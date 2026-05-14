$logName = "System"
$daysToCheck = 7
$outputPath = "$env:USERPROFILE\Desktop\Event_Log_Report.csv"

$events = Get-WinEvent -LogName $logName |
Where-Object {
    $_.LevelDisplayName -in @("Critical", "Error") -and
    $_.TimeCreated -ge (Get-Date).AddDays(-$daysToCheck)
} |
Select-Object TimeCreated,
Id,
LevelDisplayName,
ProviderName,
Message

$events | Export-Csv -Path $outputPath -NoTypeInformation

Write-Host "Event log report exported to $outputPath"
