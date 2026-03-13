AECID Testbed Ansible Awffull Privilege Escalation
==================================================

This ansible role installs awffull and configures it insecure. It will create a privilege escalation vulnerability that can be triggert via an insecure cronjob.

Requirements
------------

This role requires a debian server

Role Variables
--------------

No variables required.

Dependencies
------------

This role is depending on the [apache2-role](https://github.com/ait-cs-IaaS/ansible-apache2).

Example Playbook
----------------


```
    - hosts: webserver
      roles:
         - role: awffullprivesc
```

License
-------

GPL-3.0

Author Information
------------------

Wolfgang Hotwagner (https://www.ait.ac.at)
