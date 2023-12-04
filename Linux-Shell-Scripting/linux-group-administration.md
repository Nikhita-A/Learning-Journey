GROUP ADMINISTRATION
---------------------

### BASIC COMMANDS

* `groupadd`: add a group
* `groupmod`: modify or change the existing group 
* `groupdel`: delete a group


### TYPES OF GROUPS AND MORE

* Primary group: 
    * Whenever a user is created a group gets created called the primary group
    * file permissions to this group are default and generally not modified
* Secondary or supplementary groups: 
    * A group is created using the `groupadd` command which is the secondary group
    * The created user can be added to this group and modify the file permissions
* Group information is stored in `/etc/group`
* `gpasswd`: to add users to a group `gpasswd -a <username> <groupname>`
```bash
# to add the users u1 and u2 to the group qt3
gpasswd -a u1 qt3
gpasswd -a u2 qt3

# to add multiple users
gpasswd -M u1 u2 u3 u4 gt3

# to give admin permissions to u1
gpasswd -A u1 qt3

# to delete user from tyhe group
gpasswd -d u2 qt3

```

### FILE PERMISSIONS: READ, WRITE, EXECUTE

* `ls -lrth`: to see the file permissions
```bash
drwx-------. 1 root root
-rw-r--r--. 1 u1 u1
# type of file(d) > user permissions(rwx) > group permissions(rwx) > others(rwx) > acl > links > user > group > owner
```
* r(read)=4; w(write)=2; x(execute)=1
* chmod u=rwx (or) u+rx, ugo=rwx, ug+rx, uo=rwx
```bash
# 7=4(r)+2(w)+1(x); 5=4(r)+1(x); 5=4(r)+1(x)
chmod 755

# read, write and execute permissions for everyone
chmod 777

# execute permissions to a file
chmod +x file.sh
```
* By default, a file will not have execute permissions and need to be given externally
* rw-r--r-- : default permission for a file
* drwxr-xr-x: default permission for a directory

### CHANGE OWNERSHIP

* `chown username:groupname filename`: to change the user and group
* `chown username filename`: only user ownership gets changed 
* `chown groupname filename`: only group ownership gets changed 
* `chgrp new-groupname filename`: to change the group