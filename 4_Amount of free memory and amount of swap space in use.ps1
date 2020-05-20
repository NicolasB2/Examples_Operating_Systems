$physical = systeminfo | select-string "Memoria f¡sica disponible:"
$physical_ = [double]([double][regex]::Matches($physical, '[\d.]+').Value -replace "\,","")*1000000
Write-Host "Physical Memory in use (bytes):  "$physical_

$physical_total = systeminfo | select-string "Cantidad total de memoria f¡sica:"
$physical_total_ = [double]([double][regex]::Matches($physical_total, '[\d.]+').Value -replace "\,","")*1000000
Write-Host "Physical Memory in use (%):      "(($physical_ / $physical_total_)* 100)" %"

    
$virtual_use = systeminfo | select-string "Memoria virtual: en uso:"
$virtual_use_ = [double]([double][regex]::Matches($virtual_use, '[\d.]+').Value -replace "\,","")*1000000
Write-Host "swap Memory in use (bytes):      "$virtual_use_

$virtual_max = systeminfo | select-string "Memoria virtual: tama¤o m ximo:"
$virtual_max_ = [double]([double][regex]::Matches($virtual_max, '[\d.]+').Value -replace "\,","")*1000000

Write-Host "swap Memory in use (%):          "(($virtual_use_ / $virtual_max_)*100)" %"


Read-Host "Press enter to continue"