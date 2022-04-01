$networkPath = $($args[0])

$localPath = $($args[1])

msg.exe * $networkPath

Copy-Item $networkPath $localPath
