AECID Testbed Ansible Sudoweakness
==================================

This role installs an insecure sudo configuration that allows a normal user to elevate privileges to root.

Requirements
------------

- Ubuntu or Debian

Role Variables
--------------

It is possible to configure a user that can exploit this vulnerability:
```
sudoweakness_user: "www-data"
```

The following parameter defines the filename in `/etc/sudoers.d/{{sudoweakness_filename}}`:
```
sudoweakness_filename: "{{sudoweakness_user}}"
```

Per default the following programm is allowed to be executed with sudo:
```
sudoweakness_vulnbin: "/usr/bin/dmesg"
```

Dependencies
------------

No dependency

Example Playbook
----------------


```
    - hosts: vulnserver
      roles:
         - role: sudoweakness
           vars:
             sudoweakness_user: postfix
```

License
-------

GPL-3.0

Author Information
------------------

Wolfgang Hotwagner (https://www.ait.ac.at.)
