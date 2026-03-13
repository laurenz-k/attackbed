Ansible role to set the hostname
================================

This role sets the hostname for a linux host and adds an entry to /etc/hosts

Requirements
------------

A linux distribution that uses cloudinit

Role Variables
--------------

```yaml
# full qualified domainname
hostname_fqdn: ""
# hostname
hostname: ""
# ip of the host
hostname_ip: ""
```

Dependencies
------------

No dependencies

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - role: hostname
           vars:
               hostname: "puppet"
               hostname_fqdn: "puppet.aecid-testbed.local"
               hostname_ip: "172.17.100.122"

License
-------

GPL-3.0

Author Information
------------------

Wolfgang Hotwagner
