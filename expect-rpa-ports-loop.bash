#!/bin/bash

# CREATED BY: CHRISTOPHER NEUNER
# EXPECT: EMC RecoverPoint View RPA Ports
# DESCRIPTION: This expect script will automate the inputs required to display an RPA's local ports
# DEPENDENCIES: Works in conjunction with 'expect-rpa-ports.exp'. Requires that "expect" package be installed.
# USE: expect-rpa-ports-loop.bash "<IP>" "<user>" "<password>"


if [ ! -f "$1" ] 
	then
		echo "File [$1] does not exist." && exit
fi
if [ -z "$2" ]
        then
                echo "No user provided" && exit
fi
if [ -z "$3" ]
        then
                echo "No password provided." && exit
fi

while read p
do    
./expect-rpa-ports.exp "$p" "$2" "$3"
done <"$1"
