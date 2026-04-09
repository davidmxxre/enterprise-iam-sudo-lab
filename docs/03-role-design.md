## Purpose
Define the role-based access control model.

## Roles

### linux_admins
- Full sudo access for system administration
- Manage all services, users and configurations

### ap_opps
- Can manage application service 'httpd'
- Can view logs related to 'httpd'
- Cannot escalate privileges or modify unrelated services

### sec_audit
- Read-only access to system logs
- Cannot execute sudo commands
- Shell access restricted to prevent interactive misuse

### Design Rationale
Separation of duties ensures application operators cannot affect system state outside their scope, while auditors cannot modify anything. Admins retain full ontrol with full accountability.

## Key Takeaways
Roles are isolated, enforcing least privilege and auditability, meeting enterprise and compliance standards.
