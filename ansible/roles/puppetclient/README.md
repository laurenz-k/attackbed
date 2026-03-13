# Ansible-Role: atb-ansible-puppetclient

AECID-TESTBED: Installs a puppet agent using a preconfigured tar-ball


## Requirements

- Debian or Ubuntu 

## Role Variables

```yaml
puppetclient_release: "bullseye"
puppetclient_repourl: "https://apt.puppet.com/puppet7-release-{{puppetclient_release}}.deb"
puppetclient_config: "linuxshare.tar.gz"
```

## Example Playbook

```yaml
- hosts: localhost
  roles:
    - puppetclient
      vars:
        puppetclient_release: "bookworm"
```

## License

GPL-3.0

## Author

- Wolfgang Hotwagner
