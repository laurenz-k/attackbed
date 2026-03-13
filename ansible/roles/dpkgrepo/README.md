# Ansible-Role: atb-ansible-dpkgrepo

Installs a Debian Repository for the AECID-Testbed.

_Note: The included packages might contain critical vulnerabilities_

## Requirements

- Debian or Ubuntu 

## Role Variables

```yaml
dpkgrepo_dest: /var/www/html/debian
dpkgrepo_packages:
  - healthcheckd_1.0-1_amd64.deb
```

## Example Playbook

```yaml
- hosts: localhost
  roles:
    - dpkgrepo
      vars:
        dpkgrepo_dest: /var/www/html/debian
        dpkgrepo_packages:
          - healthcheckd_1.0-1_amd64.deb
```

## License

GPL-3.0

## Author

- Wolfgang Hotwagner
