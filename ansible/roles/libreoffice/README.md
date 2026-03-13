# Ansible-Role:  acr-ansible-libreoffice-macro-security
install libreoffice and set libreoffice macro security.


## Requirements

- Debian or Ubuntu 

## Role Variables

```yaml
disable_macros_execution: true
macro_security_level: 'high'
```

## Example Playbook

```yaml
- hosts: localhost
  roles:
    -  acr-ansible-libreoffice-macro-security
      vars:
        disable_macros_execution: false
```

## License

GPL-3.0

## Author

- Lenhard Reuter
