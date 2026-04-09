## Purpose
Explain the system architecture for privilege management.

## Architecture Overview
User commands pass through sudo, are enforced via PTY, logged and optionally replayed. SELinux provides secondary enforcement to restrict outside the allowed scope.

## Components
- 'sudo' - authorizes command execution
- '/etc/sudoers' and '/etc/sudoers.d/' - define role-based policies
- Journald - stores logs for visibility
- SELinux - enforce Mandatory Access Control
- PTY - ensures auditable terminal sessions

## Data Flow
User -> sudo -> command -> PTY -> system -> logging (sudo.log + sudo-io) -> audit review

## Design Decisions
- Modular sudoers.d for maintainability
- PTY enforcement to prevent command escape
- I/O logging for forensic replay
- SELinux as defense-in-depth

## Key Takeaways
The architecture balances functionality with security, providing a controlled, auditable privilege model.
