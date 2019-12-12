#az login -u mkancharla@nisum.com -p Changeme@123
#az group create --name madhu123 --location eastus
#az vm create  --resource-group madhu123  --name  myVM  --image CentOS  --admin-username azureuser  --admin-password Azure.123456@e  --location eastus
#az vm open-port --port 80 --resource-group madhu123 --name myVM
#az vm open-port --port 22 --resource-group madhu123 --name myVM
sshpass -p 'Azure.123456@e' ssh -t -t -o StrictHostKeyChecking=no azureuser@13.92.193.107 << 'ENDSSH'
sudo -S <<< "Azure.123456@e" yum update -y
sudo -S <<< "Azure.123456@e" yum install java-1.8.0-openjdk -y
sudo -S <<< "Azure.123456@e" wget http://apachemirror.wuchna.com/tomcat/tomcat-9/v9.0.29/bin/apache-tomcat-9.0.29.tar.gz
sudo -S <<< "Azure.123456@e" tar -xvzf apache-tomcat-9.0.29.tar.gz
sudo -S <<< “Azure.123456@e” wget https://github.com/kmadhukiran/Devops_new/blob/master/sample.war
sudo -S <<< “Azure.123456@e” mv sample.war /home/azureuser/apache-tomcat-9.0.29/webapps
sudo -S <<< “Azure.123456@e” cd /home/azureuser/apache-tomcat-9.0.29/bin
sudo -S <<< “Azure.123456@e” /home/azureuser/apache-tomcat-9.0.29/bin/./startup.sh
