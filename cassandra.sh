az vm open-port --port 80 --resource-group madhu123 --name myVM
az vm open-port --port 22 --resource-group madhu123 --name myVM
sshpass -p 'Azure.123456@e' ssh -t -t -o StrictHostKeyChecking=no azureuser@13.92.193.107 << 'ENDSSH'
sudo -S <<< "Azure.123456@e" yum update -y
sudo -S <<< "Azure.123456@e" yum install cassandra -y
sudo -S <<< "Azure.123456@e" systemctl daemon-reload
sudo -S <<< "Azure.123456@e" systemctl start cassandra
sudo -S <<< "Azure.123456@e" systemctl enable cassandra
sudo -S <<< "Azure.123456@e" systemctl restart cassandra
sudo -S <<< "Azure.123456@e" systemctl status cassandra
sudo -S <<< "Azure.123456@e" nodetool status
cqlsh
CREATE KEYSPACE IF NOT EXISTS cycling WITH REPLICATION = { 'class' : 'NetworkTopologyStrategy', 'datacenter1' : 3 };
use cycling;
CREATE TABLE employe(  

           emp_id int PRIMARY KEY,  

           emp_name text,  

           emp_city text,  

          emp_sal varint,  

           emp_phone varint);
INSERT INTO employe (emp_id, emp_name, emp_city, emp_sal, emp_phone) VALUES(16119,'Lakshma', 'Hyderabad', 5000, 984898667);
SELECT * FROM employe;
exit
exit
ENDSSH
