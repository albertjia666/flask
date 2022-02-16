#!/bin/bash

# ps -ef | grep flask | grep -v grep | awk '{print $2}' | xargs sudo kill -9

flask_pid=`ps -ef | grep flask | grep -v grep | awk '{print $2}'`

if [ $flask_pid ]; then
    echo "flask running... restarting..."
    kill -9 $flask_pid
else
    echo "flask not running... starting..."
fi