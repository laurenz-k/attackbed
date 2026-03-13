# Ansible-Role: apache

Installs apache2 + packages and manages apache-modules and vhosts. 

# Requirements

- Debian based distribution(tested with Debian Stretch and Ubuntu 18.04)

# Defaults:

```
apache2_additional_packages: []
apache2_sslciphers: 'ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-SHA384:ECDHE-RSA-AES256-SHA384:ECDHE-ECDSA-AES128-SHA256:ECDHE-RSA-AES128-SHA256'
apache2_sslproto: 'all -SSLv3 -TLSv1 -TLSv1.1'
apache2_servertokens: "Prod"
apache2_serversignature: "Off"
apache2_vhost_dir: "/var/www"
apache2_ssl_cert_path: "/etc/ssl/certs"
apache2_ssl_key_path: "/etc/ssl/private"
apache2_vhosts: []
```

# Configuration example:

```
    apache2_modules:
      - name: "headers"
      - name: "rewrite"
      - name: "ssl"
    apache2_vhosts:
      - name: example.com
        aliases: "www.example.com web.example.com"
        http: true
        # Use a different template for this vhost:
        vhost_template: "some_other_template.j2"
      - name: secure.example.com
        http: false
        https: true
        cert: "secure.crt"
        key: "secure.key"
        certchain: "ca.pem"
	# this will copy your local ssl-files to the server
        copycert: True
```
