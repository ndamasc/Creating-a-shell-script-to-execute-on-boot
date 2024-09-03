# Creating-a-shell-script-to-execute-on-boot
Creating a shell script and all the steps to execute a script on system Boot for OpenSUSE


1. Create a folder for place your files:
  * Robot/python whatever you wish
  * boot.sh

You can put the script you need run in other directory, just remember to replace it to point the correct folder in boot.sh file. 
In this example, the common directoty is "home/term/dump"

2. Then create a folder and rename to: LOGS_reboot

3. Open a terminal with root user and move the script.service file to /etc/systemd/system directory:

  $ su
  $ mv script.service  /etc/systemd/system

4. Then go to /etc/systemd/system directory and execute the following commands:

  $ systemctl daemon-reload
  $ systemctl enable script.service

5. Just to make sure the service is now running you can execute:
  $ systemctl is-enabled script.service
