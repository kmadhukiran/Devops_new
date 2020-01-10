#!/bin/bash
sshpass -p 'Azure.123456@e' ssh -t -t -o StrictHostKeyChecking=no azureuser@168.61.45.159 << 'ENDSSH'
sudo -S <<< "Azure.123456@e" yum update -y
sudo -S <<< "Azure.123456@e" yum install git* -y
sudo -S <<< "Azure.123456@e" git clone https://github.com/kmadhukiran/Devops_new.git
sudo -S <<< "Azure.123456@e" git init
sudo -S <<< "Azure.123456@e" git remote add origin https://github.com/kmadhukiran/Devops_new.git
sudo -S <<< "Azure.123456@e" git remote -v
sudo -S <<< "Azure.123456@e" git pull origin master
exit
ENDSSH
