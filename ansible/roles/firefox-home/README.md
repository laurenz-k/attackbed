# Ansible Role: Install Firefox Developer Edition

Installs **Mozilla Firefox Developer Edition** for a specified user on Ubuntu systems.

This role performs the following actions:

*   Installs necessary APT dependencies.
*   Downloads the latest Firefox Developer Edition tarball directly from Mozilla.
*   Installs Firefox into the user's `~/.local/share/firefox` directory.
*   Creates a symlink in `~/.local/bin` and adds this to the user's `~/.bashrc` PATH.
*   Creates `.desktop` entries for the application menu and the user's Desktop.
*   Runs Firefox headlessly once to force profile creation (`*.dev-edition-default`).
*   **Injects a predefined `logins.json` file** containing hardcoded credentials (currently for LinkedIn) into the newly created profile.
*   Optionally configures proxy settings (HTTP, HTTPS, SOCKS) via `user.js`.
*   Optionally configures Firefox to allow unsigned extensions via `user.js`.

**Note:** This role installs Firefox for a *single user*, not system-wide, and specifically targets the **Developer Edition**. The injection of credentials is a specific feature of this role and should be used with caution.

## Requirements

*   **Target OS:** Ubuntu (uses `apt`). Tested implicitly on distributions supporting the listed dependencies.
*   **User Account:** An existing user account must be specified via the `install_user` variable.
*   **Root Access:** Requires `become: yes` as the role installs system packages and creates directories/files owned by the target user.
*   **Dependencies:** Installs `tar`, `wget`, `xvfb`, and various X11/graphics libraries needed for Firefox and its potential headless operation.
*   **Ansible Version:** 2.9 or higher recommended.

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

| Variable                    | Required | Default             | Type    | Description                                                                          |
| --------------------------- | -------- | ------------------- | ------- | ------------------------------------------------------------------------------------ |
| `install_user`              | Yes      | `"judy"`            | String  | The username for whom Firefox Developer Edition will be installed and configured.    |
| `firefox_proxy_address`     | No       | `"192.168.50.254"`  | String  | The IP address or hostname of the proxy server. Used only if `firefox_proxy_port` is also set. |
| `firefox_proxy_port`        | No       | `3128`              | Integer | The port number of the proxy server. Used only if `firefox_proxy_address` is also set. |
| `allow_unsigned_extensions` | No       | `true`              | Boolean | If `true`, configures Firefox (`user.js`) to allow installation of unsigned extensions. |

## Dependencies

None. (Installs its own dependencies via `apt`).

## Example Playbook

```yaml
---
- hosts: workstations
  become: yes
  vars:
    # REQUIRED: Specify the target user
    install_user: alice

    # --- Optional Overrides ---
    # firefox_proxy_address: "10.0.0.1"
    # firefox_proxy_port: 8080
    # allow_unsigned_extensions: false

  roles:
    # Assuming the role is named 'ansible-role-firefox-user'
    # and located in the standard roles path
    - ansible-role-firefox-user
