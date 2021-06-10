Connect-VIServer <VC/ESXi address>
Get-VM | Get-AdvancedSetting -Name isolation.tools.copy.disable
Get-VM | New-AdvancedSetting -Name isolation.tools.copy.disable -Value true
Get-VM | Get-AdvancedSetting -Name isolation.tools.copy.disable | Set-AdvancedSetting -Value true
Get-VM | Get-AdvancedSetting -Name isolation.tools.dnd.disable
Get-VM | New-AdvancedSetting -Name isolation.tools.dnd.disable -Value true
Get-VM | Get-AdvancedSetting -Name isolation.tools.dnd.disable | Set-AdvancedSetting -Value true
Get-VM | Get-AdvancedSetting -Name isolation.tools.paste.disable
Get-VM | New-AdvancedSetting -Name isolation.tools.paste.disable -Value true
Get-VM | Get-AdvancedSetting -Name isolation.tools.paste.disable | Set-AdvancedSetting -Value true
Get-VM | Get-AdvancedSetting -Name isolation.tools.diskShrink.disable
Get-VM | New-AdvancedSetting -Name isolation.tools.diskShrink.disable -Value true
Get-VM | Get-AdvancedSetting -Name isolation.tools.diskShrink.disable | Set-AdvancedSetting -Value true
Get-VM | Get-AdvancedSetting -Name isolation.tools.diskShrink.disable
Get-VM | New-AdvancedSetting -Name isolation.tools.diskWiper.disable -Value true
Get-VM | Get-AdvancedSetting -Name isolation.tools.diskWiper.disable | Set-AdvancedSetting -Value true
Get-VM | Get-HardDisk | Select Parent, Name, Filename, DiskType, Persistence | FT -AutoSize
Get-VM | Get-HardDisk | Set-HardDisk -Persistence IndependentPersistent
Get-VM | Get-HardDisk | Set-HardDisk -Persistence Persistent
Get-VM | Get-AdvancedSetting -Name isolation.tools.hgfsServerSet.disable
Get-VM | New-AdvancedSetting -Name isolation.tools.hgfsServerSet.disable -Value true
Get-VM | Get-AdvancedSetting -Name isolation.tools.hgfsServerSet.disable | Set-AdvancedSetting -Value true
Get-VM | Get-FloppyDrive | Remove-FloppyDrive
Get-VM | Get-CDDrive | Set-CDDrive -NoMedia
Get-VM | Get-USBDevice | Remove-USBDevice
Get-VM | Get-AdvancedSetting -Name RemoteDisplay.maxConnections
Get-VM | New-AdvancedSetting -Name RemoteDisplay.maxConnections -Value 1
Get-VM | Get-AdvancedSetting -Name RemoteDisplay.maxConnections | Set-AdvancedSetting -Value 1
Get-VM | Get-AdvancedSetting -Name RemoteDisplay.vnc.enabled
Get-VM | New-AdvancedSetting -Name RemoteDisplay.vnc.enabled -Value false
Get-VM | Get-AdvancedSetting -Name RemoteDisplay.vnc.enabled | Set-AdvancedSetting -Value false
Get-VM | Get-AdvancedSetting -Name tools.setinfo.sizeLimit
Get-VM | New-AdvancedSetting -Name tools.setinfo.sizeLimit -Value 1048576
Get-VM | Get-AdvancedSetting -Name tools.setinfo.sizeLimit | Set-AdvancedSetting -Value 1048576
Get-VM | Get-AdvancedSetting -Name isolation.device.connectable.disable
Get-VM | New-AdvancedSetting -Name isolation.device.connectable.disable -Value true
Get-VM | Get-AdvancedSetting -Name isolation.device.connectable.disable | Set-AdvancedSetting -Value true
Get-VM | Get-AdvancedSetting -Name tools.guestlib.enableHostInfo
Get-VM | New-AdvancedSetting -Name tools.guestlib.enableHostInfo -Value false
Get-VM | Get-AdvancedSetting -Name tools.guestlib.enableHostInfo | Set-AdvancedSetting -Value false
Get-VM | Get-AdvancedSetting -Name sched.mem.pshare.salt
Get-VM | Get-AdvancedSetting -Name sched.mem.pshare.salt | Remove-AdvancedSetting
Get-VM | Get-AdvancedSetting -Name "ethernet*.filter*.name*"
Get-VM | Get-AdvancedSetting -Name ethernetX.filterY.name | Remove-AdvancedSetting
Get-VM | Get-AdvancedSetting -Name tools.guest.desktop.autolock
Get-VM | New-AdvancedSetting -Name tools.guest.desktop.autolock -Value true
Get-VM | Get-AdvancedSetting -Name tools.guest.desktop.autolock | Set-AdvancedSetting -Value true
Get-VM | Get-AdvancedSetting -Name mks.enable3d
Get-VM | New-AdvancedSetting -Name mks.enable3d -Value false
Get-VM | Get-AdvancedSetting -Name mks.enable3d | Set-AdvancedSetting -Value false
