# Ansible Role: Thunderbird 

Installs the Mozilla Thunderbird email client on supported systems.

Optionally, this role can populate the specified user's default Thunderbird profile with dummy emails (in mbox format) within the "Local Folders" Inbox, primarily for testing or demonstration purposes.

## Requirements

*   **Root Access:** Requires `become: yes` to install packages system-wide.
*   **Target OS:** Currently tested and supported on **Ubuntu**. May work on other Debian-based distributions but is not guaranteed.
*   **Ansible Version:** 2.9 or higher recommended.

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

| Variable           | Required | Default | Description                                                                                                                               |
| ------------------ | -------- | ------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| `thunderbird_user` | Yes      | `None`  | The **username** on the target system for whom the Thunderbird profile should be checked/populated. |
| `populate_emails`  | No       | `false` | Set to `true` to generate a basic mbox file containing dummy emails within the user's default profile (`*.default-release/Mail/Local Folders/Inbox`). |

## Dependencies

None.

## Example Playbook

Here's how to use this role in your playbook:

```yaml
---
- hosts: localhost # or specific group
  become: yes
  vars:
    # Required: Specify the user whose Thunderbird profile will be targeted
    thunderbird_user: alice

    # Optional: Enable dummy email generation for user 'alice'
    populate_emails: true

  roles:
    # Reference the role, adjust path/name as needed
    - thunderbird


## License

GPL-3.0

## Author Information

Thorina Boenke (https://www.ait.ac.at)
