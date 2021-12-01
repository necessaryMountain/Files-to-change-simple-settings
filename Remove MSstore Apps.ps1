Get-AppxPackage -AllUsers | where-object {$_.name –notlike “*store*”} | Remove-AppxPackage

#Credit to thelazyadmin's Rudy Mens.  I modified their code to look for all apps that aren't the Store instead of a single app.
Get-AppXProvisionedPackage -Online | where-object {$_.name -notlike "*store*"} | Remove-AppxProvisionedPackage -Online
            
$appPath="$Env:LOCALAPPDATA\Packages\$app*"
Remove-Item $appPath -Recurse -Force -ErrorAction 0

Get-appxprovisionedpackage –online | where-object {$_.packagename –notlike “*store*”} | Remove-AppxProvisionedPackage -online