#!/bin/bash

args=($(echo $QUERY_STRING|sed s/\&/" "/g|sed s/=/" "/g))

### cgi
echo "Content-type:application/json"
echo

echo -e "${args[1]}\n${args[3]}" |/app/bin/POW 
