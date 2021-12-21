#!/bin/bash

read -p "Enter IP address : " ip_address
read -p "Enter Hostname : " host_name


matches_in_hosts="$(grep -n "^[^#]*${host_name}" /etc/hosts | cut -f1 -d:)"
host_entry="${ip_address} ${host_name}"

echo "Please enter your password if requested."

if [ ! -z "$matches_in_hosts" ]
then
	echo "Updating existing hosts entry."

	while read -r line_number; do
		sudo sed -i '' "${line_number}s/.*/${host_entry} /" /etc/hosts
	done <<< "$matches_in_hosts"
else
	echo "Adding new hosts entry"
	echo "$host_entry" | sudo tee -a /etc/hosts > /dev/null
fi
