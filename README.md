# wifi-checker
Checks the functionality of the internet connection via wifi and restarts the wifi in case of malfunction.

## How to run

### Windows

Open powershell as administrator and in the folder where the program is located run .\wifi_cherker.ps1

It is also possible to specify the full path to the program (e.g. C:\users\admin\Documents\wifi_cherker.ps1)

If Powershell won't let you run the script, go to this link and follow the instructions: https://www.itechtics.com/enable-script-execution-powershell/

### Linux
In the folder where the program is located just run ./wifi_checker
Or you can specify the exact path to the program (e.g. /home/user/Documents/scripts/wifi_checker).

If you are unable to start the program, you need to allow it to run with the following command: chmod 777 ./wifi_checker

Tested on Ubuntu 22.04, Linux Mint 22.3, openSUSE Tumbleweed 20220530, PopOS 22.04

#### Integration as a service into systemd
Just set the path to the program in the wifi_checker.service file and then paste the wifi_checker.service file into the /etc/systemd/system folder.

The service is started with the systemctl start wifi_checker.service command. For information about the status of the process and the last 10 outputs, run the systemctl status wifi_checker.service command, for automatic startup (not recommended) run the systemctl enable wifi_checker.service command.