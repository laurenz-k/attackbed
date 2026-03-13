# Ansible-Role: atb-ansible-tcpdump

Installs tcpdump and sets cap_net_raw and cap_net_admin on it.
(This is a part of a vulnerable testbed. don't use this in production)


## Requirements

- Debian or Ubuntu 

## Role Variables

none

## Example Playbook

```yaml
- hosts: localhost
  roles:
    - tcpdump
```

## License

GPL-3.0

## Author

- Wolfgang Hotwagner
