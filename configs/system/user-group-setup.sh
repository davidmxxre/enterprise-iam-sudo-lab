## Purpose
Prepare for the lab by creating custom UID/GID ranges and user/group accounts.

## /etc/login.defs

[vim /etc/login.defs]

Look for UID_MIN/UID_MAX and GID_MIN/GID_MAX
For UID I will be using the range 5000 - 10000
For GID I will be using the range 11000 - 50000

## User/Group Creation:

Create the following users:
[useradd -u {UID} {user name}]
admin
jr_admin
app_user1
app_user2
audit_user

Create the following groups
[ groupadd -g {GID} {group name} ]
admins
app_ops
sec_ops

## Service Installation

Install httpd and enable service
[ dnf -y install httpd ]
[ systemctl enable --now httpd ]
