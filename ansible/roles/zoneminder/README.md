AECID Testbed Ansible Zoneminder
================================

This role installs a vulnerable version of the videoserver software "zoneminder"


Requirements
------------

This role requires a debian server and a respository that stores a vulnerable zoneminder version

Role Variables
--------------

It is possible to change the default admin-password or add a webcam:

```
zoneminder_admin_pw: "zm_VERY_S3CURE_PASSW0RD"
zoneminder_debrelease: "{{ansible_distribution_release}}"
zoneminder_cams:
  - name: cam-1
    id: 3
    url: rtsp://user:pass@hostname:8554/mystream
    width: 1920
    height: 1080
```

Dependencies
------------

This role is depending on the [apache2-role](https://github.com/ait-cs-IaaS/ansible-apache2).

Example Playbook
----------------

```

    - hosts: videoserver
      roles:
         - role: zoneminder
           vars:
             zoneminder_admin_pw: "ANOTHER_VERY_S3CURE_PASSW0RD"
```

License
-------

GPL-3

Author Information
------------------

Wolfgang Hotwagner(https://www.ait.ac.at)
