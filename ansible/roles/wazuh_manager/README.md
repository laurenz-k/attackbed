Role Name
=========

Installs a very simple wazuh-manager setup. This role is just for the [attackbed](https://github.com/ait-testbed/attackbed.git). 
For more advanced installations please use the official [wazuh-ansible roles](https://github.com/wazuh/wazuh-ansible/)

Requirements
------------

- Debian/Ubuntu

Role Variables
--------------

```
wazuh_repokey: "https://packages.wazuh.com/key/GPG-KEY-WAZUH"
wazuh_repourl: "https://packages.wazuh.com/4.x/apt/ stable main"
```

Dependencies
------------

None

Example Playbook
----------------

```yaml
- hosts: localhos
  become: true
  roles:
    - role: wazuh_manager
```

License
-------

GPL-3.0-only

Author Information
------------------

Wolfgang Hotwagner(AIT Austrian Institute of Technology)

