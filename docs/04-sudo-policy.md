## Purpose
Document the sudo policies for each role.

## Sudoers Structure
- '/etc/sudoers' - global defaults
- '/etc/sudoers.d' - modular role-based policies

## Policies
linux_admins -> full sudo
ap_opps -> scoped commands
sec_audit -> no sudo

## Defaults
- use_pty
- env_reset
- secure_path
- log_input/log_output

## Controls
- No wildcards
- No shell escapes
- Scoped commands only

## Validation
sudo -l confirms permissions.

## Key Takeaways
- Sudo must be tightly scoped to roles
- PTY and logging ensure auditability
- Misconfiguratioin can lead to escalation
