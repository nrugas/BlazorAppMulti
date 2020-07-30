#Import-Module WebAdministration
Copy-Item -Path "C:\staging\kreg" -Destination "C:\inetpub" -Recurse -Force

New-IISSite -Name "KregWeb" -BindingInformation "*:80:kregtest.debug-riing.net" -PhysicalPath "C:\inetpub\kreg" -Force
#$SiteNameKreg  = "KregWeb"
#Set-ItemProperty IIS:\Sites\$SiteNameKreg -Name applicationDefaults.preloadEnabled -Value True