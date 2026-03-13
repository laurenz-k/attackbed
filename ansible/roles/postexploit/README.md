AECID-Testbed: PostExploit
==========================

This role installs some post-exploit-tools to a specific directory. In the AECID Testbed, this will be deployed to the
webroot of the attacker-server.

Currently the following Tools are Supported:

- LinPEAS(https://github.com/carlospolop/PEASS-ng/tree/master/linPEAS)
- PWNkit(https://github.com/ly4k/PwnKit.git)
- linux-pam-backdoor(https://github.com/zephrax/linux-pam-backdoor)
- Logrotten(https://github.com/whotwagner/logrotten)
- Static compiled Nmap(https://nmap.org/)

Requirements
------------

Any Debian-based Linux Distribution is supported.

Role Variables
--------------

```
postexploit_files:
  - name: linpeas.sh
    path: linPEAS/linpeas.sh
  - name: PwnKit
    path: PwnKit/PwnKit
  - name: logrotten
    path: Logrotten/logrotten
# password: haveityourway
  - name: pam_unix.so
    path: linux-pam-backdoor/pam_unix.so
  - name: nmap
    path: Nmap/nmap-7.94_amd64

postexploit_destpath: "/var/www/html"
postexploit_apache: True
postexploit_owner: "root"
postexploit_group: "root"
```

Example Playbook
----------------

The following playbook will install apache2 and deploy the post-exploit-tools into the webroot at `/var/www/html`:

```
- hosts: localhost
      roles:
         - role: postexploit
```

License
-------

GPL-3.0

Author Information
------------------

Wolfgang Hotwagner(https://www.ait.ac.at)
