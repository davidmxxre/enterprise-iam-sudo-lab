# Enterprise IAM Lab: Sudoers Deep Dive

## Overview
This repository demonstrates a role-based privilege model using 'sudo', designed for enterprise environments. It showcases least privilege enforcement, separation of duties, auditability, and recovery from misconfigurations.

## Objectives
- Enforce least privilege for system users
- Restrict command execution for application operators
- Enable forensic-grade auditing for privileged sessions
- Prevent privilege escalation
- Implement recovery procedures for sudo failures

## Architecture Summary
The system divieds users into three primary roles:
- 'linux_admins': Full administrative access
- 'ap_opps': Scoped application control
- 'sec_audit': Read-only audit visibility

Each role has dedicated sudoers configurations under '/etc/sudoers.d/', combined with SELinux enforcement and audit logging.

## Key Security Controls
- Role-based sudo command restrictions
- PTY enforcement for secure auditing
- I/O logging for session replay
- SELinux mandatory access control
- Controlled recovery for broken sudoers

## Repository Structure
- 'docs/' - Lab documentation and design rationale
- 'configs/sudoers/' - Configured sudoers files per role
- 'evidence/' - Log outputs and audit samples
- 'diagrams/' - Privilege and process diagrams

## Key Takeaway
This lab demonstrates how enterprise systems can manage privileges effectively while ensuring auditability, compliance and operational security
