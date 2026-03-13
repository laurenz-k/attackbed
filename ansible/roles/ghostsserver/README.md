Ansible role to install ghostserver
===================================

This role installs a [ghosts server](https://github.com/cmu-sei/GHOSTS) using docker-compose

Requirements
------------

A linux distribution 

Role Variables
--------------

```yaml
ghostserver_user: "aecid"
ghostserver_userhome: "/home/{{ ghostserver_user }}"
ghostserver_dockerurl: "https://raw.githubusercontent.com/cmu-sei/GHOSTS/master/src/Ghosts.Api/docker-compose.yml"
```

Dependencies
------------

This role requires [docker and docker compose](https://github.com/geerlingguy/ansible-role-docker) to be installed.

Example Playbook
----------------


```yaml
    - hosts: servers
      roles:
          - role: geerlingguy_docker
            vars:
                  docker_edition: 'ce'
                  docker_service_manage: true
                  docker_service_state: started
                  docker_service_enabled: true
                  docker_restart_handler_state: restarted
                  docker_install_compose_plugin: true
                  docker_compose_package: docker-compose-plugin
                  docker_compose_package_state: present
                  docker_users:
                    - aecid

         - role: hostname
           vars:
               ghostserver_user: "ghosts"
```

License
-------

GPL-3.0

Author Information
------------------

Wolfgang Hotwagner
