## Lesson 3

### Задание 3. Создать пользователя с правами суперпользователя. Сделать так, чтобы sudo не требовал пароль для выполнения команд.

```bash
ing@shikin:~$ sudo useradd -G sudo -m -s /bin/bash testuser1
[sudo] пароль для ing: 
ing@shikin:~$ id testuser1
uid=1001(testuser1) gid=1001(testuser1) группы=1001(testuser1),27(sudo)
ing@shikin:~$ grep sudo /etc/group
sudo:x:27:ing,testuser1
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ sudo passwd testuser1 
[sudo] пароль для ing: 
Введите новый пароль UNIX: 
Повторите ввод нового пароля UNIX: 
passwd: пароль успешно обновлён
ing@shikin:~$ sudo sudoedit /etc/sudoers
[sudo] пароль для ing: 
```
[Screenshot sudoedit](sudoedit_task3.png)

```bash
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ su testuser1 
Пароль: 
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.
testuser1@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ ll
итого 100
drwxrwxr-x 2 ing ing  4096 ноя 21 18:14 ./
drwxrwxr-x 6 ing ing  4096 ноя 20 23:51 ../
-rw-rw-r-- 1 ing ing 75745 ноя 21 17:58 sudoedit.png
-rw-rw-r-- 1 ing ing  3300 ноя 21 09:11 task1.md
-rw-rw-r-- 1 ing ing   433 ноя 21 00:22 task2.md
-rw-rw-r-- 1 ing ing  1112 ноя 21 18:14 task3.md
-rw-rw-r-- 1 ing ing   238 ноя 21 18:09 t.sh
testuser1@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ sudo chmod 775 t.sh 
testuser1@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ ll
итого 100
drwxrwxr-x 2 ing ing  4096 ноя 21 18:14 ./
drwxrwxr-x 6 ing ing  4096 ноя 20 23:51 ../
-rw-rw-r-- 1 ing ing 75745 ноя 21 17:58 sudoedit.png
-rw-rw-r-- 1 ing ing  3300 ноя 21 09:11 task1.md
-rw-rw-r-- 1 ing ing   433 ноя 21 00:22 task2.md
-rw-rw-r-- 1 ing ing  1112 ноя 21 18:14 task3.md
-rwxrwxr-x 1 ing ing   238 ноя 21 18:09 t.sh*
testuser1@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$
testuser1@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ sudo ./t.sh 
Add user testuser2
Show testuser2 info
uid=1002(testuser2) gid=100(users) группы=100(users),999(docker)
Delete user testuser2
userdel: почтовый ящик testuser2 (/var/mail/testuser2) не найден
Show testuser2 info again
id: «testuser2»: такого пользователя нет
testuser1@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$
```