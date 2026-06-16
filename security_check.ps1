# Checks basic security settings on a Windows system
Write-Host "==== Windows Security Check Starting ===="

# Check if Windows Defender is running
Write-Host "`n[+] Checking Windows Defender Status..."
Get-MpComputerStatus | Select AMServiceEnabled, AntivirusEnabled, RealTimeProtectionEnabled

# Check Firewall status
Write-Host "`n[+] Checking Firewall Status..."
Get-NetFirewallProfile | Select Name, Enabled

# Check running processes (basic visibility)
Write-Host "`n[+] Top Running Processes..."
Get-Process | Sort CPU -Descending | Select -First 10 Name, CPU

# Check local users
Write-Host "`n[+] Local User Accounts..."
Get-LocalUser

Write-Host "`n==== Security Check Complete ===="
