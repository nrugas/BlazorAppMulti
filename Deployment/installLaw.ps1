#Import-Module WebAdministration
Copy-Item -Path "C:\staging\law" -Destination "C:\inetpub" -Recurse -Force

New-IISSite -Name "LawyersWeb" -BindingInformation "*:80:lawtest.debug-riing.net" -PhysicalPath "C:\inetpub\law" -Force
#$SiteNameLaw  = "LawyersWeb"
#Set-ItemProperty IIS:\Sites\$SiteNameLaw -Name applicationDefaults.preloadEnabled -Value True