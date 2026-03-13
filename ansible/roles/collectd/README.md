# Ansible-Role: collectd

Installs and configures collectd.

## Requirements

- Debian or Ubuntu 

## Role Variables

```yaml
collectd_bin: collectd
collectd_default_config: collectd.conf.j2
collectd_logfile: True
collectd_config:
        - { name: "write",
            content:|
             LoadPlugin write_log
             <Plugin write_log>
               Format Graphite
             </Plugin>
          }
```

## Example Playbook

```yaml
- hosts: localhost
  roles:
          - collectd
  vars:
      collectd_config:
        - { name: "write",
            content:|
             LoadPlugin write_log
             <Plugin write_log>
               Format Graphite
             </Plugin>
          }
```

## License

GPL-3.0

## Author

- Wolfgang Hotwagner
