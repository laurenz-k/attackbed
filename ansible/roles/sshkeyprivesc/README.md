AECID Testbed Ansible SSH-Key Privilege Escalation
==================================================

This ansible role generates a ssh-key with weak permissions on a machine. This key is added to /root/authorized_keys
and can be used by malicious user to escalate the privileges.

Requirements
------------

No requirements

Role Variables
--------------

Install the weak key into the user-home of the following user:

```
sshkeyprivesc_user: webdev
```

** This user will be created if it does not exist **

Dependencies
------------

- Ubuntu/Debian

Example Playbook
----------------

```
    - hosts: vulnserver
      roles:
         - role: sshkeyprivesc
           vars:
             sshkeyprivesc_user: johnsmith
```

License
-------

GPL-3.0

Author Information
------------------

Wolfgang Hotwagner (https://www.ait.ac.at)
