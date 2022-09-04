 ## Lesson 2

 ### Задание 3
 #### Используя дополнительный материал, настроить авторизацию по SSH с использованием ключей.
 
  ``` bash
# cat /etc/ssh/sshd_config
PasswordAuthentication no
PermitEmptyPasswords no
PermitRootLogin no
UsePAM yes
X11Forwarding yes
PrintMotd no
AcceptEnv LANG LC_*
Subsystem       sftp    /usr/lib/openssh/sftp-server
```

``` bash
$ cat  ~/.ssh/config
....
Host conn_name
  Port 22
  Hostname hostname.ru
  IdentityFile ~/.ssh/id_rsa_private
  User myuser
....
```
