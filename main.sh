#!/bin/bash


echo enter os
read os

main () {
    if [[ $os = "win" ]]
    then 
        echo enter instance id
        read instance_id
        echo enter cli profile
        read cli_profile
        aws ssm start-session --target $instance_id --region us-west-2 --document-name AWS-StartPortForwardingSession --parameters=localPortNumber=55678,portNumber=3389 --profile $cli_profile
    else
        windows
    fi
}

main
