#!/bin/bash

ids_result=`sudo docker-compose logs ids`

echo $ids_result
[[ $ids_result =~ "RCE Detected!" ]] || exit -1
