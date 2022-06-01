$test = 0
if($IsLinux -eq $true){
    Write-Output "Warning: you running Linux, but this is not the Linux version."
    Write-Output "You can download the Linux version here: https://github.com/filip2cz/wifi-checker/tree/main/linux"
}
if($IsMacOS -eq $true){
    Write-Output "Warning: you running MacOS, but MacOS is not supported yet."
}
while($test -lt 3)
{
    if(Test-Connection 8.8.8.8 -Quiet){
        Write-Output "Networking service running without any problem."
        Start-Sleep 30
        $test = 0
    }
    else{
        $test++
        Write-Output "Networking service restarted due to no ping response from 8.8.8.8, $test. attempt from 3."
        netsh interface set interface name="Wi-Fi" admin=DISABLED
        Start-Sleep 4
        netsh interface set interface name="Wi-Fi" admin=ENABLED
        Start-Sleep 90
    }
}
Write-Output "Program ukončen"

# created by filip2cz
# github: https://github.com/filip2cz/wifi-checker