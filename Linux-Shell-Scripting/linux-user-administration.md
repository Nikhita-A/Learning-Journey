LINUX - USER ADMINISTRATION
----------------------------

### USER TYPES:

* There are 3 types of users in linux:
    * normal or guest user: useradd or adduser
    * system or service users: packages like apache, nginx
    * root user: all permissions

* For root user the uid is 0
* `cat /etc/passwd`: to view the users i.e. user info
* When a user is created, a folder is also created with the username

```bash
# userid  : passwd  : userid  : groupid  : comments or displayname or description value  : home directory of user  : shell
qt:x:1000:1000::/home/qt/bin/bash

```

* `compgen -u`: users list
* `useradd -u 1023 qt1`: add a user call qt1 with uid 1023
* `useradd -u 1025 -d /opt/u6 -s /bin/sh u6`
* `cat /etc/shells`: prints the shells present on the machine
* `echo $0`: prints the present working shell
* `usermod`: modify any attributes related to user
* `passwd username`: 
     * to set password to a user(root user login)
     * single letter password is also acceptable
* `passwd`: 
     * to set password to a root user(other user login)
     * should follow the password norms
* `curl ident.me`: to get the public ip of current machine