# Ansible-Role: atb-ansible-nfsmount

Configures a nfsmount of an export


## Requirements

- Debian or Ubuntu 

## Role Variables

```yaml
nfsmount_shares:
  - dir: /media/share
    host: 192.168.100.23
    export: /media/nfs
```

## Example Playbook

```yaml
- hosts: localhost
  roles:
    - nfsmount
      vars:
        nfsmount_shares:
          - dir: /media/share
            host: 192.168.100.23
            export: /media/nfs
```

## License

GPL-3.0

## Author

- Wolfgang Hotwagner
