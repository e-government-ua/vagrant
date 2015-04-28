## Standalone Tomcat Deployment

- Requires Ansible 1.6 or newer
- Expects Ubuntu hosts

These playbooks deploy a very basic implementation of Tomcat Application Server,
version 8. To use them, first edit the "hosts" inventory file to contain the
hostnames of the machines on which you want Tomcat deployed, and edit the 
group_vars/tomcat-servers file to set any Tomcat configuration parameters you need.

Then run the playbook, like this:

	ansible-playbook -i hosts site.yml

When the playbook run completes, you should be able to see the Tomcat
Application Server running on the ports you chose, on the target machines.

