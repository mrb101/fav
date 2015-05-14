# flask - ansible - vagrant

This Repo builds 2 servers:
1 - Web Server running nginx webserver for python development "Flask"
2 - Database server running PostgresSQL

The Guest Web Server has the /srv/webapps folder synced with webapps/ on the Host folder in the cloned Repo

Ansible playbook is used to configure and manage the Servers