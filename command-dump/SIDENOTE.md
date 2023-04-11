# SIDE NOTE OF INTERESTING COMMAND OR WHATEVER

## Multiple pattern with grep

and this command i pipe the command so it can print multiple pattern at the same
line at `routes.php`

```bash
grep commentmonitoring/ routes.php --color=always | grep CommentMonitoringController@
```

\
\
next we can check the installed software packages on linux with this command

```bash
sudo apt list --installed
```

\
\
if you want to know the specific installed package, pipe it with grep

```bash
sudo apt list --installed | grep "apache"
```

\
\
for list a content inside a directory we can use "ls"

```bash
ls <--- list all visible named file or folder in current working directory
ls -a <--- list all hidden file or folder (usually begin with dot prefix)
ls /var/www <--- give first argument a specify directory that we want to look
ls -la <--- use "-l" take a look for permission, date created, and size file
```

\
\
if you want to know where is the location of you binary or your source application

```bash
whereis ls <--- this will output the location of ls
whereis grep <--- even grep is a binary program that can be executable
```

\
\
if you want to activate firewall you can activate it with ufw

```bash
sudo ufw status <--- check if firewall is enable or not
sudo ufw enable <--- enable the firewall
sudo ufw status verbose <--- check status with verbose (or detailed)
sudo ufw allow ssh <--- if you want to enable firewall for ssh connection
```

\
if you want to connect to a server or maybe a host via ssh

```bash
ssh root@192.168.xx.x <--- connect to a server with root privilege at host 192.168.xx.xx
```
