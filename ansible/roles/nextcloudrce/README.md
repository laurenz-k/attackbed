Role Name
=========

This ansible-role installs a vulnerable version(24.0.5) of nextcloud using docker compose. The most
critical vulnerability in this nextcloud version is a remote code execution vulnerability in workflows
(CVE-2023-26482).


Requirements
------------

No special requirements

Role Variables
--------------

```yaml
nextcloud_rce_dir: "/opt/nextcloud"
nextcloud_rce_image: "ghcr.io/ait-testbed/attackbed/nextcloud:24.0.5"
nextcloud_rce_domain: "172.17.100.125:8080"
```

Dependencies
------------
This role needs docker installed with [atb-ansible-dockerce](https://github.com/ait-testbed/atb-ansible-dockerce)

Example Playbook
----------------

```yaml
- hosts: localhost
  become: true
  roles:
    - role: nextcloudrce
      vars:
        nextcloud_rce_domain: "172.17.100.125:8080"
```

License
-------

GPL-3.0

Author Information
------------------

Wolfgang Hotwagner (https://www.ait.ac.at)
