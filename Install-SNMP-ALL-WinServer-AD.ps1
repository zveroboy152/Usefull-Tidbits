Import-Module activedirectory


$DaysInactive = 10
$time = (Get-Date).Adddays(-($DaysInactive))

#$credentials = Get-Credential



$alladdcomputers = Get-ADComputer -Filter {LastLogonTimeStamp -gt $time -and OperatingSystem -like '*Windows Server*' } | Select-Object Name 

foreach ($computer in $alladdcomputers){

Invoke-Command -ComputerName $computer.name -Credential $credentials -ScriptBlock { 
echo "#---------"
hostname
Install-WindowsFeature SNMP-Service -IncludeAllSubFeature -IncludeManagementTools
gpupdate /force
echo "#---------"
 }
 

}
echo "End of Transmission..."
