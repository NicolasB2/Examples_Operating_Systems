Get-WmiObject -Class win32_logicaldisk | ft @{n='Name';e={$_.Name}}, @{n='Free Space (BYTE)';e={$_.FreeSpace}}, @{n='Size (BYTE)';e={$_.Size}}
Read-Host "Press enter to continue"