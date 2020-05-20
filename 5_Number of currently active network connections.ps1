Get-NetTCPConnection -State Established | Measure-Object -Line | ft @{n='Connections';e={$_.Lines}}
Read-Host "Press enter to continue"