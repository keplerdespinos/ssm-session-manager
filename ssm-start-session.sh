#!/bin/bash
main () {
    echo which os? [windows/linux]
    read os
    if [[ $os = "windows" || $os = "Windows" || $os = "win" ]]
    then
        var=0
        echo enter instance id 
        read instance_id
        echo enter region
        read aws_region
        echo enter cli profile
        read cli_profile
        echo open microsoft remote desktop and connect to "localhost:55678"
        aws ssm start-session --target $instance_id --region $aws_region --document-name AWS-StartPortForwardingSession --parameters=localPortNumber=55678,portNumber=3389 --profile $cli_profile
    elif [[ $os = "linux" || $os = "Linux" ]]
    then
        var=0
        echo enter instance id
        read instance_id
        echo enter region
        read aws_region
        echo enter cli profile
        read cli_profile
        aws ssm start-session --target $instance_id --region $aws_region --profile $cli_profile
    else
        main
    fi
}

main

