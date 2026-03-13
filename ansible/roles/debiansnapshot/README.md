# Ansible-Role: debiansnapshot

Installs a debiansnapshot repository

## Requirements

- Debian or Ubuntu (18.04 or newer)

## Role Variables

```yaml
debsnap_timestamp: 20190412T204517Z
debsnap_httpmethod: https
debsnap_debrelease: "{{ansible_distribution_release}}"
```

## Example Playbook

```yaml
- hosts: localhost
  roles:
    - debiansnapshot
  vars:
    debsnap_timestamp: 20190412T204517Z
```

## License

GPL-3.0

## Author

Wolfgang Hotwagner
