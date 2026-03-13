# Ansible-Role: atb-ansible-ftploginjob

Installs a cronjob that executes a ftp-command every few minutes


## Requirements

- Debian or Ubuntu

## Role Variables

```yaml
ftploginjob_username: "aecid"
ftploginjob_password: "aecid"
ftploginjob_cmd: "'ls /home'"
ftploginjob_server: 172.17.100.122 
ftploginjob_job: "echo {{ ftploginjob_cmd }} | /usr/bin -u {{ ftploginjob_username }},{{ ftploginjob_password }} {{ ftploginjob_server }}"
```

## Example Playbook

```yaml
- hosts: localhost
  roles:
    - role: ftploginjob
      vars:
        ftploginjob_username: "root"
        ftploginjob_password: "password123"
        ftploginjob_server: 172.17.100.121
```

## License

GPL-3.0

## Author

- Wolfgang Hotwagner
