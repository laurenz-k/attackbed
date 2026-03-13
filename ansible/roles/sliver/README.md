Sliver Ansible Role
===================

AIT-ATTACKBED: This ansible role installs the [sliver c2 framework](https://github.com/BishopFox/sliver)

Requirements
------------

None

Role Variables
--------------

```
sliver_serverbin: "sliver-server_linux"
sliver_clientbin: "sliver-client_linux"
sliver_user: "aecid"
```


Dependencies
------------

None

Example Playbook
----------------

```yaml
- name: Install Attacker Host
  become: true
  hosts: localhost
  roles:
    - role: sliver
      vars:
        sliver_user: ubuntu
```

License
-------

EUPL-1.2-or-later

Author Information
------------------

Wolfgang Hotwagner (Austrian Institute of Technology)
