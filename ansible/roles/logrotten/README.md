AECID Testbed Ansible Logrotten
===============================

This role configures logrotate to insecurely rotate some apache2-logs

Requirements
------------

This role requires a debian server

Role Variables
--------------

This role needs apache2-logs in a certain location. For example `/var/www/default/log`:
```
logrotten_webdirectory: /var/www/default
```

It is possible to change the standard-template for the logrotate-config using the following variable:

```
logrotten_template: apache2-vhost.j2
```

Dependencies
------------

This role is depending on the [apache2-role](https://github.com/ait-cs-IaaS/ansible-apache2).

Example Playbook
----------------


```
    - hosts: videoserver
      roles:
         - role: logrotten
           vars:
             logrotten_webdirectory: /var/www/videoserver
```

License
-------

GPL-3.0

Author Information
------------------

Wolfgang Hotwagner (https://www.ait.ac.at)
