## Purpose
This directory containes role-based sudo configurations used in the lab.

## Structure
The first file will create is global deafaults using 'visudo'. Each file following represents a policy placed in:
'/etc/sudoers.d/'

## Files
- visudo -> global defaults
- linux_admins -> full administrative access
- ap_opps -> scoped application control with logging
- sec_audit -> no sudo privileges (audit-only role)

## Deployment Notes
- File must have permissions: 0440
- Owner: root:root
- Validate using:
  visudo -c
  visudo -f /etc/sudoers.d/<file>

  ## Key Takeaways
  - Modular sudoers files improve maintainability and reduce risk
  - Roled-based configs enforce least privilege
  - Separation of configs simplifies auditing and troubleshooting
