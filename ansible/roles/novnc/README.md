Ansible role to install NoVNC
=============================

This role installs novnc with x11vnc and websockify.

Requirements
------------

A debian based linux distribution

Role Variables
--------------

```yaml
novnc_packages:
  - websockify
  - x11vnc
  - novnc
```

Dependencies
------------

No dependencies

Example Playbook
----------------

The following playbook installs the novnc-role:

```yaml
    - hosts: servers
      roles:
         - role: novnc
```

License
-------

GPL-3.0

Author Information
------------------

Wolfgang Hotwagner
