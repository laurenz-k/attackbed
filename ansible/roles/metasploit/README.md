Ansible-Role: Metasploit
========================

This role simply installs Metasploit


Requirements
------------

Any Debian or Ubuntu should do.

Role Variables
--------------

```
metasploit_url: "https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb"
metasploit_user: root
metasploit_msfdb: False
```

Example Playbook
----------------

```
    - hosts: localhost
      roles:
         - role: metasploit
```

The following example initializes the msfdb for user "ubuntu":

```
    - hosts: localhost
      roles:
         - role: metasploit
           vars:
             metasploit_user: ubuntu
             metasploit_msfdb: True
```


License
-------

GPL-3.0

Author Information
------------------

Wolfgang Hotwagner (https://www.ait.ac.at)
