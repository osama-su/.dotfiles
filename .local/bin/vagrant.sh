#!/bin/sh

# check if vagrant is running and echo the status and if not, start it 
# if [ -z "$(ps -A | grep vagrant)" ]; then
#         # cd to Homestead directory
#         cd ~/Homestead
#         vagrant up
# fi

        cd ~/Homestead
        vagrant up



# # if vagrant is running ask user to stop it 
# if [ -f /var/run/vagrant-provisioner.sock ]; then
#     echo "Vagrant is running. Stop it and run this script again."
#     exit 1
# fi
