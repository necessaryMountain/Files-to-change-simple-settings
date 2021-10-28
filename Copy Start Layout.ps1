$localDir = $args[0]
$networkDir = $args[1]
$layoutFileName = $args[2]
New-Item -ItemType directory -Path $localDir -Force
Copy-Item -Path $networkDir -Destination $localDir -Force
Import-StartLayout -LayoutPath $localDir + $layoutFileName -MountPath $env:SystemDrive\