az login -u mkancharla@nisum.com -p Changeme@123
az group create --name/-n myResource --location eastus
az vm create \ --resource-group/-g myResource \ --name/-n  myVM \ --image CentOS \ --admin-username azureuser \ --admin-password Azure.123456
az vm open-port --port 80 --resource-group myResource1 --name myVM
az vm open-port --port 22 --resource-group myResource1 --name myVM
sshpass -p 'Azure.123456' ssh -t -t -o StrictHostKeyChecking=no azureuser@40.121.48.14 << 'ENDSSH'
sudo -S <<< "Azure.123456" yum update -y
sudo -S <<< "Azure.123456" yum install java-1.8.0-openjdk -y
sudo -S <<< "Azure.123456" wget http://apachemirror.wuchna.com/tomcat/tomcat-9/v9.0.27/bin/apache-tomcat-9.0.27.tar.gz
sudo -S <<< "Azure.123456" tar -xvzf apache-tomcat-9.0.27.tar.gz
sudo -S <<< “Azure.123456” scp -r /var/root/.jenkins/workspace/Azure/hello-world-war-1.0.0.war azureuser@40.121.48.14:/home/azureuser/apache-tomcat-9.0.27/webapps
sudo -S <<< “Azure.123456” cd /home/azureuser/apache-tomcat-9.0.27/bin
sudo -S <<< “Azure.123456” ./startup.sh
