# Openstack_ansible

Install Ansible

Create a key pair named 'root' in openstack (This will be used for ssh into servers)

Copy the key file to the src folder (e.g: /home/openstack_ansible/root)

change ansible.cfg in /etc/ansible/ansible.cfg and add below lines

private_key_file =/root/root
ansible_ssh_user=centos
got to src

change openstack auth configs:

auth:
auth_url: http://8.43.86.2:5000/v2.0         
username: facebook972609636203996
password: password         
project_name: facebook972609636203996
and execute below command:

ansible-playbook deploy.yaml 
This will deploy the ldap serevr/group/access permissions and do the configurations and test the configurations

What is the NTP stratum of the created host?

for the created instance it was 2 (ntpdc -c sysinfo). But it can vary upon the distance betwwen refrence clock

What is an acceptable load average threshold for the host?

0.70 (This also vary accroding to number of cores. If we have 1 core 1.00 means is exactly at capacity. If we have 2 cores 2.00 mean is exactly at capacity). We need to have around 0.30 percentage for system processes

To deploy bastion(jump server) execute

ansible-playbook deploy_JumBox.yaml
Thsi will remove external ssh access for ldap and create a new server where user can use to connect to the ldap server
