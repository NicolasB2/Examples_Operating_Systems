$input =Read-Host "Insert the path of the disk or filesystem"

Get-ChildItem -Path $input -Recurse | sort -Descending Length | select -First 1 | ft @{n='Name';e={$_.Name}}, @{n='Size (BYTE)';e={$_.Length}}, @{n='Path';e={$_.FullName}}
Read-Host "Press enter to continue"