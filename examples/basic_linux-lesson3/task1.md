## Lesson 3

### Задание 1 Управление пользователями:
a) создать пользователя, используя утилиту useradd;
```bash
ing@31-31-192-65:~$ sudo useradd -g 100 -G 999  -m  -s /bin/bash testuser1
[sudo] пароль для ing:
ing@31-31-192-65:~$ id testuser1
uid=1013(testuser1) gid=100(users) groups=100(users),999(docker)
ing@31-31-192-65:~$ 
ing@31-31-192-65:~$ ll /home/
total 24
drwxr-xr-x  6 root       root       4096 Nov 20 23:35 ./
drwxr-xr-x 22 root       root       4096 Sep 22  2019 ../
......
drwxr-xr-x 13 ing        ing        4096 Nov 16 22:15 ing/
drwxr-xr-x  2 testuser1  users      4096 Nov 20 23:35 testuser1/
ing@31-31-192-65:~$ 
ing@31-31-192-65:~$ cat /etc/passwd
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/var/run/ircd:/usr/sbin/nologin
gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
systemd-network:x:100:102:systemd Network Management,,,:/run/systemd/netif:/usr/sbin/nologin
systemd-resolve:x:101:103:systemd Resolver,,,:/run/systemd/resolve:/usr/sbin/nologin
syslog:x:102:106::/home/syslog:/usr/sbin/nologin
messagebus:x:103:107::/nonexistent:/usr/sbin/nologin
_apt:x:104:65534::/nonexistent:/usr/sbin/nologin
sshd:x:105:65534::/run/sshd:/usr/sbin/nologin
ing:x:1000:1000::/home/ing:/bin/bash
...
testuser1:x:1013:100::/home/testuser1:/bin/bash
```
b) удалить пользователя, используя утилиту userdel;
```bash
ing@31-31-192-65:~$ sudo userdel -rf testuser1
[sudo] пароль для ing:
userdel: testuser1 mail spool (/var/mail/testuser1) not found
ing@31-31-192-65:~$ ll /home/
total 20
drwxr-xr-x  5 root       root       4096 Nov 20 23:41 ./
drwxr-xr-x 22 root       root       4096 Sep 22  2019 ../
.....
drwxr-xr-x 13 ing        ing        4096 Nov 16 22:15 ing/
ing@31-31-192-65:~$ id testuser1
id: ‘testuser1’: no such user
```
c) создать пользователя в ручном режиме. (альтернатива - скрипт)
```bash
ing@31-31-192-65:~$ cat t.sh 
#/bin/bash

if [ $UID -ne 0 ]; then
        echo "Can't execute this script. Need root privileges"
        exit 1
fi

useradd -g 100 -G 999  -m  -s /bin/bash testuser1
id testuser1
userdel -rf testuser1
id testuser1

ing@31-31-192-65:~$ bash t.sh 
Can't execute this script. Need root privileges
ing@31-31-192-65:~$ sudo bash t.sh
[sudo] пароль для ing: 
uid=1003(testuser1) gid=100(users) groups=100(users),999(docker)
userdel: testuser1 mail spool (/var/mail/testuser1) not found
id: ‘testuser1’: no such user
```