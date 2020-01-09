#az login -u mkancharla@nisum.com -p Changeme@123
#az group create --name madhu09012020 --location eastus
#az vm create  --resource-group madhu09012020  --name  task1  --image CentOS  --admin-username azureuser  --admin-password Azure.123456@e  --location eastus
#az vm open-port --port 80 --resource-group madhu09012020 --name task1
#az vm open-port --port 22 --resource-group madhu09012020 --name task1
ip=$(az vm show --resource-group madhu09012020 --name task1 -d --query [publicIps] --o tsv)
sshpass -p 'Azure.123456@e' ssh -t -t -o StrictHostKeyChecking=no azureuser@$ip << 'ENDSSH'
sudo -S <<< "Azure.123456@e" yum update -y
sudo -S <<< "Azure.123456@e" yum install git* -y
sudo -S <<< "Azure.123456@e" git init
sudo -S <<< "Azure.123456@e" pwd
sudo -S <<< "Azure.123456@e" git clone https://github.com/kmadhukiran/Devops_new.git
sudo -S <<< "Azure.123456@e" git remote add origin https://github.com/kmadhukiran/Devops_new.git
sudo -S <<< "Azure.123456@e" git remote -v
sudo -S <<< "Azure.123456@e" git pull origin master
exit
exit
ENDSSH3
