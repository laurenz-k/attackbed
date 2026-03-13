# Ansible-Role: atb-ansible-puppetserver

AECID-TESTBED: Installs a puppet server using a preconfigured tar-ball


## Requirements

- Debian or Ubuntu 

## Role Variables

```yaml
puppetmaster_repourl: "https://apt.puppet.com/puppet7-release-{{ansible_distribution_release}}.deb"
puppetmaster_config: puppetlabs_server.tar.gz
```

## Example Playbook

```yaml
- hosts: localhost
  roles:
    - puppetserver
```

## License

GPL-3.0

## Author

- Wolfgang Hotwagner
