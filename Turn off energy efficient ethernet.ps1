#Sets the energy efficient ethernet adapter property to "off" or "disabled"

Set-NetAdapterAdvancedProperty -Name "Ethernet" -DisplayName "Energy Efficient Ethernet" -DisplayValue "OFF"

Set-NetAdapterAdvancedProperty -Name "Ethernet" -DisplayName "Energy-Efficient Ethernet" -DisplayValue "Disabled" 