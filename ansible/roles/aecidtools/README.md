Role Name
=========

AECID standard ansible-role that installs tmux, tmuxinator and vim

Requirements
------------

Any Debian or Ubuntu should do.

Role Variables
--------------

```
aecidtools_user: "ubuntu"
aecidtools_user_home: "/home/{{aecidtools_user}}"
aecidtools_packages: []
```

Example Playbook
----------------

```
- hosts: localhost
  roles:
          - role: aecidtools
            vars:
              aecidtools_user: "ait"
```

License
-------

GPL-3.0

Author Information
------------------

Wolfgang Hotwagner (https://www.ait.ac.at)
