#!/bin/bash
sudoedit -s '\' $(python3 -c 'print("A" * 65535)') >& /dev/null
if [[ $?  -eq 139 ]]; then
	exit 1
else
	exit 0
fi
