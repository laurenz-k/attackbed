AECID TESTBED: Ansible role for aecid user
==========================================

This role installs the default aecid user, places the default public ssh-key for the simulation and configures the sudo-permissions.

Requirements
------------

Any Debian-based Linux Distribution

Role Variables
--------------

```
# default public ssh-key
aeciduser_key: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDtSS/6glvP/0Or/ZSJrIH8B3Mo+ORQTJd0HqaMDppbz6BE7saezHskWO+ItGhjqv6G9RiXS8uDS8aRYx+z0B9+iRbRnZZvg9Zwaf6YP8rJs4jM2wXOqWWb16K9pA6aO3rh7WAV81cDHRIoq6ek/klmEgs9clLGHAesAbbO6PqEyJI1wh/GLpqKxEfi99jq+YhjZn6upaE5acIR7W6bYnShtv0HCCrotMRQqC3b7e4B6IwrOOBA3+Xo/SeQrGvZNT9eKOVODqQm9qRzOkJdqK3Qy82QAAKVtV2stf8FG6/AzWdrrbCFItXg2cPnPVx7usHHuDtA77HoFpRptfXmfb35"
# default username
aeciduser_name: "aecid"
# no password as default
aeciduser_pass: "!"
aeciduser_shell: "/bin/bash"
```

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

```
- hosts: localhost
      roles:
         - role: aeciduser
           vars:
             aeciduser_pass: "$6$gpHOqKOxdgxRNcxD$gfAiIJJGJ7uOOkwg2k0rOwF9YW6Defpj4jIfK8fqQJFT/2GV5YO2SRRvWzN/YHwg6hIYMDpOhZK68jdFcqoIb/"
             aeciduser_key:  "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPU3WakK1yfGp+8aNNXUyqx2AsBj8bR5asw/m1Cq9YEV"
```

[See Ansible Documentation for information about how to generate the password](https://docs.ansible.com/ansible/latest/reference_appendices/faq.html#how-do-i-generate-encrypted-passwords-for-the-user-module)

License
-------

GPL-3.0

Author Information
------------------

Wolfgang Hotwagner(https://www.ait.ac.at)
