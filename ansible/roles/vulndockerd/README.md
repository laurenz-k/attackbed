Role Name
=========

This role patches the docker-systemd-service with an additional interface for the docker-daemon. This 
allows to open docker-vulnerabilities in testbeds.

Requirements
------------

Any Linux should do

Role Variables
--------------

The following variable must be set:

```yaml
vulndockerd_socket: tcp://172.18.0.1:2375
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
    - role: vulndockerd
      vars:
        vulndockerd_socket: "tcp://172.18.0.1:2375"
```

License
-------

GPL-3.0

Author Information
------------------

Wolfgang Hotwagner (https://www.ait.ac.at)
