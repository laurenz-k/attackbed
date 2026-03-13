# Ansible Role: mate-desktop

The role installs the ubuntu mate desktop with a few of the recommended extra packages.
One can also configure the default GUI configuration by providing dconf settings.

## Role Variables

- `mate_recommends`: the list of recommended software packages to install with mate
- `mate_dconf_src`: can be used to use a different dconf source directory

## License

GPL-3.0

## Author Information

Parts of this role where adopted from the [ansible-x2go-mate](https://gitlab.com/morph027/ansible-x2go-mate) role by gitlab user `morph027`. See the previous [license](OLD_LICENSE).
