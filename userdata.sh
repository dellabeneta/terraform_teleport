#!/bin/bash
curl https://goteleport.com/static/install.sh | bash -s 13.3.2
sudo teleport configure -o file --cluster-name=teleport.dellops.online --public-addr=teleport.dellops.online:443
sudo systemctl enable teleport
sudo systemctl start teleport

#sudo tctl users add teleport-admin --roles=editor,access --logins=root,ubuntu,ec2-user