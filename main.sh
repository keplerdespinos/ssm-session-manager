#!/bin/bash
main () {
    echo which os? [windows/linux]
    read os
    if [[ $os = "windows" || $os = "Windows" || $os = "win" ]]
    then
        var=0
        echo enter instance id 
        read instance_id
        echo enter cli profile
        read cli_profile
        aws ssm start-session --target $instance_id --region us-west-2 --document-name AWS-StartPortForwardingSession --parameters=localPortNumber=55678,portNumber=3389 --profile $cli_profile
    elif [[ $os = "linux" || $os = "Linux" ]]
    then
        var=0
        echo enter instance id
        read instance_id
        echo enter cli profile
        read cli_profile
        aws ssm start-session --target $instance_id --region us-west-2 --profile $cli_profile
    else
        main
    fi
}

main

