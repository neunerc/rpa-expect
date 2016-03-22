#!/bin/bash

# CREATED BY: CHRISTOPHER NEUNER
# EXPECT: EMC RecoverPoint ethtool
# DESCRIPTION: This expect script will automate the inputs required to display ethernet (ethtool) details for both adapters.
# DEPENDENCIES: Works in conjunction with 'expect-rpa-ethtool.exp'. Requires that "expect" package be installed.
# USE: expect-rpa-ethtool-loop.bash "<IP>" "<user>" "<password>"


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
./expect-rpa-ethtool.exp "$p" "$2" "$3"
done <"$1"
