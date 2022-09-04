## Lesson 3

### Задание 4. * Используя дополнительные материалы, выдать одному из созданных пользователей право на выполнение ряда команд, требующих прав суперпользователя (команды выбираем на своё усмотрение).

```bash
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ which userdel
/usr/sbin/userdel
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ which useradd
/usr/sbin/useradd
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ which usermod
/usr/sbin/usermod
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ sudo sudoedit /etc/sudoers
```
[Screenshot sudoedit](sudoedit_task4.png)
```bash
ing@shikin:~$ sudo ls
[sudo] пароль для ing: 
ing@shikin:~$ sudo useradd -g 100 -G 999  -m  -s /bin/bash testuser1
ing@shikin:~$ sudo userdel -rf testuser1
userdel: почтовый ящик testuser1 (/var/mail/testuser1) не найден
ing@shikin:~$
```