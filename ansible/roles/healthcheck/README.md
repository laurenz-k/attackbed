# Ansible-Role: atb-ansible-healthcheck

Installs a client-script for the vulnerable healthcheckd service.


## Requirements

- Debian or Ubuntu

## Role Variables

```yaml
healthcheck_status: "OK"
healthcheck_wrapper_path: "/usr/local/bin"
healthcheck_wrapper_mode: "0755"
```

## Example Playbook

```yaml
- hosts: localhost
  roles:
    vars:
        healthcheck_wrapper_path: "/media/health"
        healthcheck_wrapper_mode: "0777"
        healthcheck_server: 192.168.100.23
```

## License

GPL-3.0

## Author

- Wolfgang Hotwagner
