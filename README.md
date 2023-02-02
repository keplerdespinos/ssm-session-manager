Download this bash script
https://drive.google.com/file/d/1xS75lfu69RwJTbPZq5OHfCGOA3aPz-OJ/view?usp=sharing
cd to folder where you downloaded script
Copy to opt folder and set permissions
sudo cp ssm-start-session.sh /opt/
sudo chmod 755 /opt/ssm-start-session.sh
Add the alias to your shell profile
sudo vi ~/<your shell profile>
insert this line: alias ssm-start-session="sh /opt/ssm-start-session.sh"
This sets the alias command for ease of use
Quit and relaunch terminal
Test your new command, ssm-start-session
