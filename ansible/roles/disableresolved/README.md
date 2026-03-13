Ansible-Role: Disable Resolved
==============================

This role disables systemd-resolved and create the file /etc/resolv.conf 

Requirements
------------

Any Linux with systemd.

Role Variables
--------------

```
disableresolved_template: resolv.conf.j2
disableresolved_header: "# CREATED WITH ANSIBLE"
disableresolved_nameservers:
        - 8.8.8.8
        - 9.9.9.9
```

Dependencies
------------

None

Example Playbook
----------------

```
    - hosts: localhost
      roles:
         - role: disableresolved
           vars:
             disableresolved_nameservers:
                - 192.168.0.1
```

License
-------

GPL-3.0

Author Information
------------------

Wolfgang Hotwagner (https://www.ait.ac.at)
