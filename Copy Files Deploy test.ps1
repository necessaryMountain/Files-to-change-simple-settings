$networkPath= ConvertFrom-StringData -StringData $args[0]

$localPath= ConvertFrom-StringData -StringData $args[1]

Copy-Item $networkPath $localPath