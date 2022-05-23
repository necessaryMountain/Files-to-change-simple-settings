$networkPath = $($args[0])

$localPath = $($args[1])

Copy-Item $networkPath $localPath

Start-Process -FilePath $localPath -Verb RunAs
