# Ansible-Role: atb-ansible-customdpkg

Installs vulnerable packages from the local repository of the AECID-Testbed.

_Note: The included packages might contain critical vulnerabilities_

## Requirements

- Debian or Ubuntu 

## Role Variables

```yaml
customdpkg_repotpl: repo.j2
customdpkg_sourceslist: aecid.list
customdpkg_reposrv: puppet.attackbed.local
customdpkg_packages:
  - healthcheckd
```

## Example Playbook

```yaml
- hosts: localhost
  roles:
    - customdpkg
      vars:
        customdpkg_packages:
          - healthcheckd
```

## License

GPL-3.0

## Author

- Wolfgang Hotwagner
