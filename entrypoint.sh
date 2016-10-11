#!/bin/bash

if [ -z "$CHISEL_USER" ]; then
	CHISEL_USER=$NAMESPACE
fi
if [ -z "$CHISEL_PASSWORD" ]; then
       CHISEL_PASSWORD=`strings /dev/urandom | grep -o '[[:alnum:]]' | head -n 30 | tr -d '\n'`
fi
echo "{\"$CHISEL_USER:$CHISEL_PASSWORD\":[\"^10.*\"]}" > /userfile

echo "Chisel is a utility that allows you to create a secure"
echo "tunnel between your local system and NDS Labs. This "
echo "allows you to access non-HTTP services.  To use Chisel: "
echo "   * Download the Chisel client for your platform from https://github.com/jpillora/chisel/releases/tag/1.1.3"
echo "   * chisel client --auth=$CHISEL_USER:$CHISEL_PASSWORD https://$NDSLABS_HOSTNAME localhost:<Port>:<IP>:<Port>"
echo "Where "
echo "   IP: Internal IP of the service you are trying to access"
echo "   Port: port of the service you are trying to access (e.g., MySQL)"
chisel server --authfile userfile
