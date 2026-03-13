AECID Testbed Ansible Weak Linux User
=====================================

This role creates a Linux user with a weak password
and sudo permissions without password


Requirements
------------

No special requirements

Role Variables
--------------

It is possible to change the username and the password:

```
weaklinuxuser_user: "john"
weaklinuxuser_pass: "rambo"
weaklinuxuser_sudo: True
weaklinuxuser_groups: []
```

Dependencies
------------

No dependencies

Example Playbook
----------------

```

    - hosts: all
      roles:
         - role: weaklinuxuser
           vars:
             weaklinuxuser_pass: "john123"
             weaklinuxuser_groups:
               - sudo
```

License
-------

BSD

Author Information
------------------

Wolfgang Hotwagner(https://www.ait.ac.at)

