# Ansible_To_Go


When running ansible playbook, make sure you have your local environment configured to run ansible and also be able to communicate with the worker servers. Lets go over some prerequisites before running your first playbook. Below are the steps I perform to setup my linux environment for ansible, yours may vary. I did not include EVERY detail in this documentation.. i wrote this just at a high level. 



# Install Ansible

Installing ansible on ubuntu 20.04.4 LTS (Focal Fossa) was fairly easy. I used the documentation from ansible to install it. Follow the instruction for installng ansibe for your operating system from the link below. 

Install Link: https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#pip-install 




# Setup SSH key on ansible-controller and worker machines 

when i created the ssh key, i named it 'ansible' you can name yours to whatever you want.  

``` ssh-keygen -t ed25519  -C "Ansible"  ```

Now you should have two files created with one containing the private key and the other containing public key. You will want to copy the public ssh-key to the worker machines that will be used in  Ansible playbook. To transfer the ssh key, run the following command.

``` ssh-copy-id -i /home/labdevenv/.ssh/ansible.pub ansible0@192.168.1.135 ```

Once the key is transferred to the worker machine, try Playbook1 repo. 


For more detail on creating ssh key follow the link below. 

https://thefreetelecomuni.atlassian.net/wiki/spaces/LIN/pages/555590/2-+Create+ssh+key+for+Ansible
