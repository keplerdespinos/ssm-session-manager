# SSM Remote Session Script [Linux + Windows]

This script allows you to start an ssm session with an AWS EC2 instance, windows or linux. See below for installation instructions

# How to Install

 **Prerequisites:**
 - [AWS CLI V2](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
 - [Session Manger Plugin for AWS CLI](https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html)
 -   AWS IAM User with access keys + session manager permissions loaded in your  `~/.aws/credentials`  file
 - `sudo` permissions on your machine

 **Installation:**

1. Download the script from [here](https://drive.google.com/file/d/1xS75lfu69RwJTbPZq5OHfCGOA3aPz-OJ/view?usp=sharing)
2. cd to folder where you downloaded the script
3. Copy to `/opt` folder
> sudo cp ssm-start-session.sh /opt/

4. Set permissions to make it executable

>sudo chmod 755 /opt/ssm-start-session.sh

5. Add the alias to your shell profile

>sudo vi ~/{your shell profile}

6. Insert this line `alias ssm-start-session="sh /opt/ssm-start-session.sh"`
		(This sets the alias command for ease of use)

7. Quit and relaunch terminal
8. Test your new command `ssm-start-session`
