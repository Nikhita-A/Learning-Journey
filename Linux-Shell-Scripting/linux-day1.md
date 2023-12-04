### Linux concepts

* kernel is sub process
* shell is like a compiler or an interpreter
* Server is as of now inorder to host any application we need to have a setup server which is something that responds when we send requests
* kernel and shell can be combinedly called 'operating system'
```
-: regular file
d: directory
b: block device
c: charactory device
```
* `curl ident.me`: gives the public ip
* sbin: the commands executed by root user are present in `sbin`(super binary)
* `etc` is a readable text configuration

### date
* `date`: displays the current date and time (for more info date --help)
* `date +"%d"`: displays the date i.e., 25
* `date +"%d-%m-%y"`: displays date, month and year i.e., 25-11-23

### scp
* `scp`: Secure Copy file Protocol. To copy/upload any file from local to remote machine
```
scp <source-file-name> user@<public-ip>:<dest-path>

scp .\develop.sh ubuntu@52.23.165.157:/home/ubuntu/develop.sh

or

scp -i <privatekey-pemfile-path> <source-file-name> user@<public-ip>:<dest-path>
```

### sftp
* `sftp`: Secure File Transfer protocol. To download files from remote to local machine
* Connect to sftp
```
sftp -i <privatekey-pemfile-path> user@<public-ip>
```
* After connecting to sftp, use `put`, `get`
*  `put`: this command uploads local files to remote
```
put <local-file-name>
```
![linux02](https://github.com/Nikhita-A/Learning-Journey/assets/148535211/62654101-b444-492a-be49-7a2e820ade5d)

* `get`:  this command uploads remote files to local
```
get <remote-file-name>
```
![linux03](https://github.com/Nikhita-A/Learning-Journey/assets/148535211/0565ecf2-7b22-4c24-96d2-9ca2dd32a744)


* `ls` and `lls`
* `pwd`: Remote wordir
* `lpwd`: local workdir
* `cd` and `lcd`
* Check for `pwd`and `lpwd` in `sftp`

### crontab
* `crontab`: To run a particular job on particular time based on cron expressions. It does the work of cron job in Linux machine [Refer here for website](https://crontab.guru/)
* `chmod +x <file-name>`: execution permissions to a particular file

### tar
* `tar`: to compress the files or zip files
* tar -cf: c: compress; f: file
* tar -tvf: t: time; v: verbose(to show the logs); f: file
* tar -cvzf: z: zip the tar file
* tar -cvzf: when used z: zip, file name should be .gz extension (file.tar.gz)
* tar -xf: x: extract; f: file

### logs
* `logs`: troubleshoot errors based on loga
* `/var/log`:  default linux machine logs folder. Any installed application logs will be present in this folder. For example, when we install apache2 the logs would be present in `/var/log/apache2 `
  
![linux04](https://github.com/Nikhita-A/Learning-Journey/assets/148535211/3ff312ce-a5c4-42d8-aeee-8f2716f6a650)

* `/var/log/syslog`: default system logs

### environmental variables
* `env`:  environmental variables
```
export sysname=developer
echo $sysname
Output: developer
```
* The above example is temporary environmental variable
```
echo "export sysname=developer" >> ~/.bashrc
echo $sysname
Output: developer
```
*  The above example is permanent environmental variable
