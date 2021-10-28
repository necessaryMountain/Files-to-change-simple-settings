$localDir = ConvertFrom-StringData -StringData $args[0]
$networkDir = ConvertFrom-StringData -StringData $args[1]
$layoutFileName = ConvertFrom-StringData -StringData $args[2]
New-Item -ItemType directory -Path $localDir -Force
Copy-Item -Path $networkDir -Destination $localDir -Force
Import-StartLayout -LayoutPath $localDir + $layoutFileName -MountPath $env:SystemDrive\