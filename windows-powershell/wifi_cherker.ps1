$test = 0
while($test -lt 3)
{
    if(Test-Connection 8.8.8.8 -Quiet){
        Write-Output "Připojení úspěšně ověřeno."
        Start-Sleep 30
        $test = 0
    }
    else{
        Write-Output "Připojení nebylo úspěšně ověřeno."
        $test++
        Write-Output "Restartuji WiFi adaptér, pokus $test ze 3."
        netsh interface set interface name="Wi-Fi" admin=DISABLED
        Start-Sleep 4
        netsh interface set interface name="Wi-Fi" admin=ENABLED
        sleep 90
    }
}
Write-Output "Program ukončen"