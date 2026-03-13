# Ansible-Role: atb-ansible-nfsserver

Installs nfsserver and configures exports


## Requirements

- Debian or Ubuntu 

## Role Variables

```yaml
nfsserver_shares:
  - /media/nfs      172.17.100.122(rw,sync,no_subtree_check)
```

## Example Playbook

```yaml
- hosts: localhost
  roles:
    - nfsserver
      vars:
        nfsserver_shares:
          - /media/nfs      172.17.100.122(rw,sync,no_subtree_check)
```

## License

GPL-3.0

## Author

- Wolfgang Hotwagner
