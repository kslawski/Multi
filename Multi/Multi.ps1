function New-SvnWorkingCopy
{
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory=$true)]
        [String]
        $Url
        ,
        [Parameter(Mandatory=$true)]
        [String]
        $Path
    )
    svn.exe checkout "$Url" "$Path"
}

Set-Alias -Name nsvnwc -Value New-SvnWorkingCopy
Clear-Host
  Write-Host "
--------------------------
1 = BpmCustomerAplication
2 = Antifraud
3 = Ebok.EmailDeliveryChecker
4 = EinvoiceProxySynchronizer
5 = PartInfoProxy
--------------------------"
        $apps = read-host -prompt "Wybierz aplikację™:"  
        switch($apps){
        "1"{
            $app="BpmCustomerAplication"
        }  
        "2"
        {
            $app="Antifraud"
        }    
        "3"
        {
            $app="Ebok.EmailDeliveryChecker"
        }    
        "4"
        {
            $app="EinvoiceProxySynchronizer"
        }    
        "5"
        {
            $app="PartInfoProxy"
        }
        }
$logfile = "D:\Systemy\$app\logs.txt"
$BPM_release_Service_18="\\plvwt00018.pkoltest.pkoleasing.pl\d$\inetpub\wwwroot\webservices\RLPL.BpmCustomerApplication.Service\"
$BPM_release_Service_19="\\plvwt00019.pkoltest.pkoleasing.pl\d$\inetpub\wwwroot\webservices\RLPL.BpmCustomerApplication.Service\"
$BPM_release_Main="\\plvwt00018.pkoltest.pkoleasing.pl\d$\inetpub\wwwroot\webservices\RLPL.BpmCustomerApplication.Main\"
$BPM_release_Notif_18="\\plvwt00018.pkoltest.pkoleasing.pl\d$\inetpub\wwwroot\webservices\RLPL.BpmCustomerApplication.NotificationService\"
$BPM_release_Notif_19="\\plvwt00019.pkoltest.pkoleasing.pl\d$\inetpub\wwwroot\webservices\RLPL.BpmCustomerApplication.NotificationService\"
$Email_release="\\\\plvwt00018.pkoltest.pkoleasing.pl\d$\inetpub\wwwroot\webservices\RLPL.EBOK.EmailDeliveryChecker_RELEASE\"
$Pip_release_service="\\plvwt00030\D$\inetpub\wwwroot\webservices\PKOL.PartInfoProxy_RELEASE\"
$Pip_release_backend="\\plvwt00030\D$\inetpub\wwwroot\webservices\PKOL.PartInfoProxy.Backend_RELEASE\"
$Anti_release_backend="\\plvwt00018.pkoltest.pkoleasing.pl\d$\inetpub\wwwroot\webservices\RLPL.AntiFraudService.Backend_RELEASE\"
$Anti_release_18="\\plvwt00018.pkoltest.pkoleasing.pl\d$\inetpub\wwwroot\webservices\RLPL.AntiFraudService_RELEASE\"
$Anti_release_19="\\plvwt00019.pkoltest.pkoleasing.pl\d$\inetpub\wwwroot\webservices\RLPL.AntiFraudService_RELEASE\"
$Einvoince_release_synchro="\\plvwt00018.pkoltest.pkoleasing.pl\d$\inetpub\wwwroot\webservices\RLPL.EInvoiceProxySynchronizer_RELEASE\"
$Einvoince_release_service_18="\\plvwt00018.pkoltest.pkoleasing.pl\d$\inetpub\wwwroot\webservices\EInvoiceProxyService_RELEASE\"
$Einvoince_release_service_19="\\plvwt00019.pkoltest.pkoleasing.pl\d$\inetpub\wwwroot\webservices\EInvoiceProxyService_RELEASE\"
$BPM_Postprod_Service_19="\\plvwt00019.pkoltest.pkoleasing.pl\d$\inetpub\wwwroot\webservices\RLPL.BpmCustomerApplication.Service_POSTPROD\"
$BPM_Postprod_Service_18="\\plvwt00018.pkoltest.pkoleasing.pl\d$\inetpub\wwwroot\webservices\RLPL.BpmCustomerApplication.Service_POSTPROD\"
$BPM_Postprod_Main="\\plvwt00019.pkoltest.pkoleasing.pl\d$\inetpub\wwwroot\webservices\RLPL.BpmCustomerApplication.Main_POSTPROD\"
$BPM_Postprod_Notif_19="\\plvwt00019.pkoltest.pkoleasing.pl\d$\inetpub\wwwroot\webservices\RLPL.BpmCustomerApplication.NotificationService_POSTPROD\"
$BPM_Postprod_Notif_18="\\plvwt00018.pkoltest.pkoleasing.pl\d$\inetpub\wwwroot\webservices\RLPL.BpmCustomerApplication.NotificationService_POSTPROD\"
$Email_Postprod="\\plvwt00019.pkoltest.pkoleasing.pl\d$\inetpub\wwwroot\webservices\RLPL.EBOK.EmailDeliveryChecker_POSTPROD\"
$Pip_Postprod_service="\\plvwt00030\D$\inetpub\wwwroot\webservices\PKOL.PartInfoProxy_POSTPROD\"
$Pip_Postprod_backend="\\plvwt00030\D$\inetpub\wwwroot\webservices\PKOL.PartInfoProxy.Backend_POSTPROD\"
$Anti_Postprod_backend="\\plvwt00019.pkoltest.pkoleasing.pl\d$\inetpub\wwwroot\webservices\RLPL.AntiFraudService.Backend_POSTPROD\"
$Anti_Postprod_19="\\plvwt00019.pkoltest.pkoleasing.pl\d$\inetpub\wwwroot\webservices\RLPL.AntiFraudService_POSTPROD\"
$Anti_Postprod_18="\\plvwt00018.pkoltest.pkoleasing.pl\d$\inetpub\wwwroot\webservices\RLPL.AntiFraudService_POSTPROD\"
$Einvoince_Postprod_synchro="\\plvwt00019.pkoltest.pkoleasing.pl\d$\inetpub\wwwroot\webservices\RLPL.EInvoiceProxySynchronizer_POSTPROD\"
$Einvoince_Postprod_service_19="\\plvwt00019.pkoltest.pkoleasing.pl\d$\inetpub\wwwroot\webservices\EInvoiceProxyService_POSTPROD\"
$Einvoince_Postprod_service_18="\\plvwt00018.pkoltest.pkoleasing.pl\d$\inetpub\wwwroot\webservices\EInvoiceProxyService_POSTPROD\"$path = "D:\SYSTEMY\$app\"
$bugid = Read-Host "Podaj BUGID"
$rev = Read-Host "Podaj rewizje"
$svnurl = Read-Host "Podaj link do repo"

        

$emptyfolders = "$path\$bugid"
$folderexist = Test-Path $emptyfolders
If ($folderexist -eq $True) {Remove-Item $emptyfolders -Recurse -Force}
New-SvnWorkingCopy -Url $svnurl@$rev -Path $path\$bugid\

        Write-Host "
--------------------------
1 = POSTPROD
2 = RELEASE
--------------------------"
        $choice1 = read-host -prompt "Środowisko:"                      

Read-Host -Prompt "Press Enter to continue"
Switch ($apps) {
"1"{
    Switch ($choice1) {
        "1"{
        $backup=((Get-Date).ToString('yyyy-MM-dd'))
		Get-Service -Name RLPL.BpmCustomerApplication.Main -ComputerName PLVWT00019.pkoltest.pkoleasing.pl | Stop-service
		New-Item -ItemType Directory -Path "\\PLVWT00019.pkoltest.pkoleasing.pl\D$\Backup\Postprod\$app\$backup"
        New-Item -ItemType Directory -Path "\\PLVWT00019.pkoltest.pkoleasing.pl\D$\Backup\Postprod\$app\$backup\postprod\Notif\"
        New-Item -ItemType Directory -Path "\\PLVWT00019.pkoltest.pkoleasing.pl\D$\Backup\Postprod\$app\$backup\postprod\Main\"
        New-Item -ItemType Directory -Path "\\PLVWT00018.pkoltest.pkoleasing.pl\D$\Backup\Postprod\$app\$backup\postprod\Notif"
        New-Item -ItemType Directory -Path "\\PLVWT00018.pkoltest.pkoleasing.pl\D$\Backup\Postprod\$app\$backup\postprod\Service"
        New-Item -ItemType Directory -Path "\\PLVWT00019.pkoltest.pkoleasing.pl\D$\Backup\Postprod\$app\$backup\postprod\Service\"
        Start-Sleep -Seconds 120

        Copy-Item -Path $BPM_Postprod_Service_19 -Destination "\\PLVWT00019.pkoltest.pkoleasing.pl\D$\Backup\Postprod\$app\$backup\postprod\Service" -recurse  -Force 
        Copy-Item -Path $BPM_Postprod_Service_18 -Destination "\\PLVWT00018.pkoltest.pkoleasing.pl\D$\Backup\Postprod\$app\$backup\Service" -recurse  -Force 
        Copy-Item -Path $BPM_Postprod_Main -Destination "\\PLVWT00019.pkoltest.pkoleasing.pl\D$\Backup\Postprod\$app\$backup\Main" -recurse  -Force
        Copy-Item -Path $BPM_Postprod_Notif_19 -Destination "\\PLVWT00019.pkoltest.pkoleasing.pl\D$\Backup\Postprod\$app\$backup\Notif" -recurse  -Force
        Copy-Item -Path $BPM_Postprod_Notif_18 -Destination "\\PLVWT00018.pkoltest.pkoleasing.pl\D$\Backup\Postprod\$app\$backup\Notif" -recurse  -Force
        Copy-Item -Path $path\$bugid\app\RLPL.BPMCustomerApplication.Service\* -Destination $BPM_Postprod_Service_19 -recurse -recurse  -Force
        Copy-Item -Path $path\$bugid\app\RLPL.BpmCustomerApplication.NotificationService\* -Destination $BPM_Postprod_Notif_19 -recurse -Force
        Copy-Item -Path $path\$bugid\app\RLPL.BPMCustomerApplication.Service\* -Destination $BPM_Postprod_Service_18 -recurse -Force
        Copy-Item -Path $path\$bugid\app\RLPL.BpmCustomerApplication.NotificationService\* -Destination $BPM_Postprod_Notif_18 -recurse -Force
        Copy-Item -Path $path\$bugid\app\RLPL.BPMCustomerApplication.Main\* -Destination $BPM_Postprod_Main -recurse -Force
        Start-Sleep 120
        Get-Service -Name RLPL.BpmCustomerApplication.Main -ComputerName PLVWT00019.pkoltest.pkoleasing.pl  | Start-service
        $servername = 'plvwt000018.pkoltest.pkoleasing.pl'
		$servername1 = 'plvwt00019.pkoltest.pkoleasing.pl'

			Invoke-Command -Credential pkoltest\plu00008 -Computername $servername,$servername1 -Scriptblock { 
    (Import-Module WebAdministration); 
    Stop-Website -Name "RLPL.BpmCustomerApplication.NotificationService_POSTPROD"; 
    Stop-Website -Name "RLPL.BpmCustomerApplication.Service_POSTPROD"; 
 
}
				Invoke-Command -Credential pkoltest\plu00008 -Computername $servername,$servername1 -Scriptblock { 
    (Import-Module WebAdministration); 
    Start-Website -Name "RLPL.BpmCustomerApplication.NotificationService_POSTPROD"; 
    Start-Website -Name "RLPL.BpmCustomerApplication.Service_POSTPROD"; 
 
}
                     }
            "2"
              {
                $backup=((Get-Date).ToString('yyyy-MM-dd'))
		Get-Service -Name RLPL.BpmCustomerApplication.Main  -ComputerName PLVWT00018.pkoltest.pkoleasing.pl | Stop-service
		New-Item -ItemType Directory -Path "\\PLVWT00018.pkoltest.pkoleasing.pl\D$\Backup\Release\$app\$backup\"
        New-Item -ItemType Directory -Path "\\PLVWT00019.pkoltest.pkoleasing.pl\D$\Backup\Release\$app\$backup\Notif\"
        New-Item -ItemType Directory -Path "\\PLVWT00018.pkoltest.pkoleasing.pl\D$\Backup\Release\$app\$backup\Main\"
        New-Item -ItemType Directory -Path "\\PLVWT00018.pkoltest.pkoleasing.pl\D$\Backup\Release\$app\$backup\Notif"
        New-Item -ItemType Directory -Path "\\PLVWT00018.pkoltest.pkoleasing.pl\D$\Backup\Release\$app\$backup\Service"
        New-Item -ItemType Directory -Path "\\PLVWT00019.pkoltest.pkoleasing.pl\D$\Backup\Release\$app\$backup\Service\"
        Start-Sleep -Seconds 120

        Copy-Item -Path $BPM_release_Service_19 -Destination "\\PLVWT00019.pkoltest.pkoleasing.pl\D$\Backup\Release\$app\$backup\Service" -recurse  -Force 
        Copy-Item -Path $BPM_release_Service_18 -Destination "\\PLVWT00018.pkoltest.pkoleasing.pl\D$\Backup\Release\$app\$backup\Service" -recurse  -Force 
        Copy-Item -Path $BPM_release_Main -Destination "\\PLVWT00018.pkoltest.pkoleasing.pl\D$$\Backup\Release\$app\$backup\Main" -recurse  -Force
        Copy-Item -Path $BPM_release_Notif_19 -Destination "\\PLVWT00019.pkoltest.pkoleasing.pl\D$\Backup\Release\$app\$backup\Notif" -recurse  -Force
        Copy-Item -Path $BPM_release_Notif_18 -Destination "\\PLVWT00018.pkoltest.pkoleasing.pl\D$\Backup\Release\$app\$backup\Notif" -recurse  -Force
        Copy-Item -Path $path\$bugid\app\RLPL.BPMCustomerApplication.Service\* -Destination $BPM_release_Service_19 -recurse -recurse  -Force
        Copy-Item -Path $path\$bugid\app\RLPL.BpmCustomerApplication.NotificationService\* -Destination $BPM_release_Notif_19 -recurse -Force
        Copy-Item -Path $path\$bugid\app\RLPL.BPMCustomerApplication.Service\* -Destination $BPM_release_Service_18 -recurse -Force
        Copy-Item -Path $path\$bugid\app\RLPL.BpmCustomerApplication.NotificationService\* -Destination $BPM_release_Notif_18 -recurse -Force
        Copy-Item -Path $path\$bugid\app\RLPL.BPMCustomerApplication.Main\* -Destination $BPM_release_Main -recurse -Force
        Start-Sleep 120
        Get-Service -Name RLPL.BpmCustomerApplication.Main -ComputerName PLVWT00018.pkoltest.pkoleasing.pl  | Start-service
               } }
}  
"2"
{
    Switch ($choice1) {
        "1"{

          $backup=((Get-Date).ToString('yyyy-MM-dd'))
		Get-Service -Name RLPL.AntiFraudService.Backend  -ComputerName PLVWT00019.pkoltest.pkoleasing.pl | Stop-service
        New-Item -ItemType Directory -Path "\\PLVWT00019.pkoltest.pkoleasing.pl\D$\Backup\$app $backup"
        Start-Sleep 120
        Copy-Item -Path $Anti_Postprod_backend -Destination "\\PLVWT00019.pkoltest.pkoleasing.pl\D$\Backup\Postprod\$app\$backup" -recurse -Force 
        Copy-Item -Path $Anti_Postprod_19 -Destination "\\PLVWT00019.pkoltest.pkoleasing.pl\D$\Backup\Postprod\$app\$backup" -recurse -Force
        Copy-Item -Path $Anti_Postprod_18 -Destination "\\PLVWT00018.pkoltest.pkoleasing.pl\D$\Backup\Postprod\$app\$backup" -recurse -Force
        Copy-Item -Path $path\$bugid\app\RLPL.AntiFraudService.Backend\* -Destination $Anti_Postprod_backend -recurse -Force
        Copy-Item -Path $path\$bugid\app\RLPL.AntiFraudService\* -Destination $Anti_Postprod_18 -recurse -Force
        Copy-Item -Path $path\$bugid\app\RLPL.AntiFraudService\* -Destination $Anti_Postprod_19 -recurse -Force
		Start-Sleep 120
        Get-Service -Name RLPL.AntiFraudService.Backend  -ComputerName PLVWT00019.pkoltest.pkoleasing.pl | Start-service     
                     }
            "2"
              {
              $backup=((Get-Date).ToString('yyyy-MM-dd'))
		Get-Service -Name RLPL.AntiFraudService.Backend  -ComputerName "PLVWT00018.pkoltest.pkoleasing.pl" | Stop-service
        New-Item -ItemType Directory -Path "\\PLVWT00018.pkoltest.pkoleasing.pl\D$\Backup\$app$backup"
        Start-Sleep 120
        Copy-Item -Path $Anti_release_backend -Destination "\\PLVWT00018.pkoltest.pkoleasing.pl\D$\Backup\Release\$app\$backup" -recurse -Force 
        Copy-Item -Path $Anti_release_19 -Destination "\\PLVWT00019.pkoltest.pkoleasing.pl\D$\Backup\Release\$app\$backup" -recurse -Force
        Copy-Item -Path $Anti_release_18 -Destination "\\PLVWT00018.pkoltest.pkoleasing.pl\D$\Backup\Release\$app\$backup" -recurse -Force
        Copy-Item -Path $path\$bugid\app\RLPL.AntiFraudService.Backend\* -Destination $Anti_release_backend -recurse -Force
        Copy-Item -Path $path\$bugid\app\RLPL.AntiFraudService\* -Destination $Anti_release_18-recurse -Force
        Copy-Item -Path $path\$bugid\app\RLPL.AntiFraudService\* -Destination $Anti_release_19-recurse -Force
		Start-Sleep 120
        Get-Service -Name RLPL.AntiFraudService.Backend  -ComputerName PLVWT00018.pkoltest.pkoleasing.pl | Start-service     
               } }
}    
"3"
{
    Switch ($choice1) {
        "1"{
        $backup=((Get-Date).ToString('yyyy-MM-dd'))
		Get-Service -Name RLPL.EBOK.EmailDeliveryChecker  -ComputerName PLVWT00019.pkoltest.pkoleasing.pl | Stop-service
		Start-Sleep 120
        New-Item -ItemType Directory -Path "\\PLVWT00019.pkoltest.pkoleasing.pl\D$\Backup\Postprod\$app\$backup"
        Copy-Item -Path $Email_Postprod -Destination "\\PLVWT00019.pkoltest.pkoleasing.pl\D$\Backup\Postprod\$app\$backup" -recurse -Force 
        Copy-Item -Path $path\$bugid\Binaries\* -Destination $Email_Postprod -recurse -Force
		Start-Sleep 120
        Get-Service -Name RLPL.EBOK.EmailDeliveryChecker  -ComputerName PLVWT00019.pkoltest.pkoleasing.pl | Start-service     
       
                     }
       "2"
               {
        $backup=((Get-Date).ToString('yyyy-MM-dd'))
		Get-Service -Name RLPL.EBOK.EmailDeliveryChecker  -ComputerName PLVWT00018.pkoltest.pkoleasing.pl | Stop-service
		Start-Sleep 120
        New-Item -ItemType Directory -Path "\\PLVWT00018.pkoltest.pkoleasing.pl\D$\Backup\Release\$app\$backup"
        Copy-Item -Path $Email_release -Destination "\\PLVWT00018.pkoltest.pkoleasing.pl\D$\Backup\Release\$app\$backup" -recurse -Force 
        Copy-Item -Path $path\$bugid\Binaries\* -Destination $Email_release -recurse -Force
		Start-Sleep 120
        Get-Service -Name RLPL.EBOK.EmailDeliveryChecker  -ComputerName PLVWT00018.pkoltest.pkoleasing.pl | Start-service   
    
       
               } }
}    
"4"
{
    Switch ($choice1) {
        "1"{
        $backup=((Get-Date).ToString('yyyy-MM-dd'))
		Get-Service -Name RLPL.EInvoiceProxySynchronizer -ComputerName PLVWT00019.pkoltest.pkoleasing.pl | Stop-service
		Start-Sleep 120
        New-Item -ItemType Directory -Path "\\PLVWT00019.pkoltest.pkoleasing.pl\D$\Backup\$app$backup"
        Copy-Item -Path $Einvoince_Postprod_synchro -Destination "\\PLVWT00019.pkoltest.pkoleasing.pl\D$\Backup\Postprod\$app\$backup" -recurse -Force 
        Copy-Item -Path $Einvoince_Postprod_service_19 -Destination "\\PLVWT00019.pkoltest.pkoleasing.pl\D$\Backup\Postprod\$app\$backup" -recurse -Force
        Copy-Item -Path $Einvoince_Postprod_service_18 -Destination "\\PLVWT00018.pkoltest.pkoleasing.pl\D$\Backup\Postprod\$app\$backup" -recurse -Force
        Copy-Item -Path $path\$bugid\Binaria\RLPL.EInvoiceProxySSynchronizer\* -Destination $Einvoince_Postprod_synchro -recurse -Force
        Copy-Item -Path $path\$bugid\Binaria\RLPL.EInvoiceProxyService\* -Destination $Einvoince_Postprod_service_19 -recurse -Force
        Copy-Item -Path $path\$bugid\Binaria\RLPL.EInvoiceProxyService\* -Destination $Einvoince_Postprod_service_18 -recurse -Force
		Start-Sleep 120
        Get-Service -Name RLPL.EInvoiceProxySynchronizer  -ComputerName PLVWT00019.pkoltest.pkoleasing.pl | Start-service     
                     }
            "2"
              {
              $backup=((Get-Date).ToString('yyyy-MM-dd'))
        Get-Service -Name RLPL.EInvoiceProxySynchronizer -ComputerName PLVWT00018.pkoltest.pkoleasing.pl | Stop-service
		Start-Sleep 120
        New-Item -ItemType Directory -Path "\\PLVWT00018.pkoltest.pkoleasing.pl\D$\Backup\$app$backup"
        Copy-Item -Path $Einvoince_release_synchro -Destination "\\PLVWT00018.pkoltest.pkoleasing.pl\D$\Backup\Release\$app\$backup" -recurse -Force 
        Copy-Item -Path $Einvoince_release_service_18 -Destination "\\PLVWT00018.pkoltest.pkoleasing.pl\D$\Backup\Release\$app$backup" -recurse -Force
        Copy-Item -Path $Einvoince_release_service_19 -Destination "\\PLVWT00019.pkoltest.pkoleasing.pl\D$\Backup\Release\$app\$backup" -recurse -Force
        Copy-Item -Path $path\$bugid\Binaria\RLPL.EInvoiceProxySSynchronizer\* -Destination $Einvoince_release_synchro -recurse -Force
        Copy-Item -Path $path\$bugid\Binaria\RLPL.EInvoiceProxyService\* -Destination $Einvoince_release_service_18 -recurse -Force
        Copy-Item -Path $path\$bugid\Binaria\RLPL.EInvoiceProxyService\* -Destination $Einvoince_release_service_19 -recurse -Force
		Start-Sleep 120
        Get-Service -Name RLPL.EInvoiceProxySynchronizer  -ComputerName PLVWT00018.pkoltest.pkoleasing.pl | Start-service     

               } }
}    
"5"
{
    Switch ($choice1) {
        "1"{
        $backup=((Get-Date).ToString('yyyy-MM-dd'))
        New-Item -ItemType Directory -Path "\\PLVWT00030.pkoltest.pkoleasing.pl\D$\Backup\$app$backup"
        Get-Service -Name PKOL.PartInfoProxy.Backend_POSTPROD  -ComputerName PLVWT00030.pkoltest.pkoleasing.pl | Stop-service
		Start-Sleep 120
        Copy-Item -Path $Pip_Postprod_backend -Destination "\\PLVWT00030.pkoltest.pkoleasing.pl\D$\Backup\Postprod\$app\$backup" -recurse -Force 
        Copy-Item -Path $Pip_Postprod_service -Destination "\\PLVWT00030.pkoltest.pkoleasing.pl\D$\Backup\Postprod\$app\$backup" -recurse -Force
        Copy-Item -Path $path\$bugid\app\PKOL.PartInfoProxy.Backend\* -Destination $Pip_Postprod_backend -recurse -Force
        Copy-Item -Path $path\$bugid\app\PKOL.PartInfoProxy\* -Destination $Pip_Postprod_service -recurse -Force
		Start-Sleep 120
        Get-Service -Name PKOL.PartInfoProxy.Backend_POSTPROD  -ComputerName PLVWT00030.pkoltest.pkoleasing.pl | Start-service     
                     }
            "2"
              {
		$backup=((Get-Date).ToString('yyyy-MM-dd'))
		New-Item -ItemType Directory -Path "\\PLVWT00030.pkoltest.pkoleasing.pl\D$\Backup\$app$backup"
        Get-Service -Name PKOL.PartInfoProxy.Backend_RELEASE  -ComputerName PLVWT00030.pkoltest.pkoleasing.pl | Stop-service
		Start-Sleep 120
        Copy-Item -Path $Pip_release_backend -Destination "\\PLVWT00030.pkoltest.pkoleasing.pl\D$\Backup\Release\$app\$backup" -recurse -Force 
        Copy-Item -Path $Pip_release_service -Destination "\\PLVWT00030.pkoltest.pkoleasing.pl\D$\Backup\Release\$app\$backup" -recurse -Force
        Copy-Item -Path $path\$bugid\app\PKOL.PartInfoProxy.Backend\* -Destination $Pip_release_backend -recurse -Force
        Copy-Item -Path $path\$bugid\app\PKOL.PartInfoProxy\* -Destination $Pip_release_service -recurse -Force
		Start-Sleep 120
        Get-Service -Name PKOL.PartInfoProxy.Backend_RELEASE  -ComputerName PLVWT00030.pkoltest.pkoleasing.pl | Start-service  
       
               } }
}}
$line = "----------------------------------------------------------------------------------------------------------------------"
$line | Out-file $logfile -Append
Get-Date | Out-file $logfile -Append

if ($apps =1)
{
    Switch ($choice1) {
        "1"{
         Copy-Item -Path $path\$bugid\app\RLPL.BPMCustomerApplication.Service\* -Destination $BPM_Postprod_Service_19 -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
        Copy-Item -Path $path\$bugid\app\RLPL.BpmCustomerApplication.NotificationService\* -Destination $BPM_Postprod_Notif_19 -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
        Copy-Item -Path $path\$bugid\app\RLPL.BPMCustomerApplication.Service\* -Destination $BPM_Postprod_Service_18 -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
        Copy-Item -Path $path\$bugid\app\RLPL.BpmCustomerApplication.NotificationService\* -Destination $BPM_Postprod_Notif_18 -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
        Copy-Item -Path $path\$bugid\app\RLPL.BPMCustomerApplication.Main\* -Destination $BPM_Postprod_Main -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append            }
            "2"
              {
               Copy-Item -Path $path\$bugid\app\RLPL.BPMCustomerApplication.Service\* -Destination $BPM_release_Service_19 -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
        Copy-Item -Path $path\$bugid\app\RLPL.BpmCustomerApplication.NotificationService\* -Destination $BPM_release_Notif_19 -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
        Copy-Item -Path $path\$bugid\app\RLPL.BPMCustomerApplication.Service\* -Destination $BPM_release_Service_18 -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
        Copy-Item -Path $path\$bugid\app\RLPL.BpmCustomerApplication.NotificationService\* -Destination $BPM_release_Notif_18 -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
        Copy-Item -Path $path\$bugid\app\RLPL.BPMCustomerApplication.Main\* -Destination $BPM_release_Main -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append  } }
}  
elseif ($apps=2)
{
    Switch ($choice1) {
        "1"{
        Copy-Item -Path $path\$bugid\app\RLPL.AntiFraudService.Backend\* -Destination $Anti_Postprod_backend -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
        Copy-Item -Path $path\$bugid\app\RLPL.AntiFraudService\* -Destination $Anti_Postprod_18 -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
        Copy-Item -Path $path\$bugid\app\RLPL.AntiFraudService\* -Destination $Anti_Postprod_19 -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
         
                     }
            "2"
              { 
               Copy-Item -Path $path\$bugid\app\RLPL.AntiFraudService.Backend\* -Destination $Anti_release_backend -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
        Copy-Item -Path $path\$bugid\app\RLPL.AntiFraudService\* -Destination $Anti_release_18-recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
        Copy-Item -Path $path\$bugid\app\RLPL.AntiFraudService\* -Destination $Anti_release_19-recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
       
               } }
}    
elseif ($apps=3)
{
    Switch ($choice1) {
        "1"{
         Copy-Item -Path $path\$bugid\* -Destination $Email_Postprod -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
         
       
                     }
            "2"
              {
                Copy-Item -Path $path\$bugid\* -Destination $Email_release -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
    
       
               } }
}    
elseif ($apps=4)
{
    Switch ($choice1) {
        "1"{
         Copy-Item -Path $path\$bugid\Binaria\RLPL.EInvoiceProxySSynchronizer\* -Destination $Einvoince_Postprod_synchro -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
        Copy-Item -Path $path\$bugid\Binaria\RLPL.EInvoiceProxyService\* -Destination $Einvoince_Postprod_service_19 -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
         Copy-Item -Path $path\$bugid\Binaria\RLPL.EInvoiceProxyService\* -Destination $Einvoince_Postprod_service_18 -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
      
                     }
            "2"
              {
               Copy-Item -Path $path\$bugid\Binaria\RLPL.EInvoiceProxySSynchronizer\* -Destination $Einvoince_release_synchro -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
        Copy-Item -Path $path\$bugid\Binaria\RLPL.EInvoiceProxyService\* -Destination $Einvoince_release_service_18 -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
        Copy-Item -Path $path\$bugid\Binaria\RLPL.EInvoiceProxyService\* -Destination $Einvoince_release_service_19 -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
       
               } }
}    
elseif ($apps=5)
{
    Switch ($choice1) {
        "1"{
         Copy-Item -Path $path\$bugid\app\PKOL.PartInfoProxy\* -Destination $Pip_Postprod_service -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
         Copy-Item -Path $path\$bugid\app\PKOL.PartInfoProxy.Backend\* -Destination $Pip_Postprod_backend -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
       
                     }
            "2"
              {
                Copy-Item -Path $path\$bugid\app\PKOL.PartInfoProxy\* -Destination $Pip_release_service -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
                Copy-Item -Path $path\$bugid\app\PKOL.PartInfoProxy.Backend\* -Destination $Pip_release_backend -recurse -Force -Verbose -Exclude .svn -PassThru | Out-File $logfile -Append
       
               } }
}
Get-Date | Out-file $logfile -Append