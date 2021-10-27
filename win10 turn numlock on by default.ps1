$regName = 'InitialKeyboardIndicators'
$value = Get-ItemProperty -Path 'Registry::HKEY_USERS\.DEFAULT\Control Panel\Keyboard' -Name $regName
$newValue = '2'
Set-ItemProperty -Path 'Registry::HKEY_USERS\.DEFAULT\Control Panel\Keyboard' -Name $regName -Value $newValue
