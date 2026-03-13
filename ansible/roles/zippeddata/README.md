# Ansible-Role: atb-ansible-zippeddata

AECID-TESTBED: Downloads archives from a url and unarchives them in a specified location.


## Requirements

- Debian or Ubuntu 

## Role Variables

```yaml
zippeddata_data:
   - url: https://zenodo.org/records/7477560/files/Annotations.zip?download=1
     path: /media/data
```

## Example Playbook

```yaml
- hosts: localhost
  roles:
    - zippeddata
      vars:
        zippeddata_data:
          - url: https://zenodo.org/records/7477560/files/Annotations.zip?download=1
            path: /media/data
```

## License

GPL-3.0

## Author

- Wolfgang Hotwagner
