$test = 0
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