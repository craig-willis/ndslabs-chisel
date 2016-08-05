#!/bin/bash

if [ -z "$CHISEL_USER" ]; then
	CHISEL_USER=$NAMESPACE
fi
if [ -z "$CHISEL_PASSWORD" ]; then
       CHISEL_PASSWORD=`strings /dev/urandom | grep -o '[[:alnum:]]' | head -n 30 | tr -d '\n'`
fi
echo "{\"$CHISEL_USER:$CHISEL_PASSWORD\":[\"^10.*\"]}" > /userfile
cat userfile
chisel server --authfile userfile

