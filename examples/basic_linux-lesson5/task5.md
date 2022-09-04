## Lesson 5

### Задание 5. * Создать группу developer и нескольких пользователей, входящих в неё. Создать директорию для совместной работы. Сделать так, чтобы созданные одними пользователями файлы могли изменять другие пользователи этой группы.

```bash
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ sudo groupadd developer
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ sudo useradd -G developer devuser1
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ sudo useradd -G developer devuser2
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ grep developer /etc/group
developer:x:1001:devuser1,devuser2
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ sudo install -o root -g developer -m 775 -d devs_share
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ sudo chmod g+s devs_share
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll | grep devs_share
drwxrwsr-x  2 root developer 4096 ноя 29 17:49 devs_share/
 ing@shikin:/media/data/devel/GeekBrains/basic_linux$ cd devs_share/
ing@shikin:/media/data/devel/GeekBrains/basic_linux/devs_share$ touch testfile
touch: невозможно выполнить touch для 'testfile': Отказано в доступе
ing@shikin:/media/data/devel/GeekBrains/basic_linux$
ing@shikin:/media/data/devel/GeekBrains/basic_linux/devs_share$ sudo -u devuser1 bash
devuser1@shikin:/media/data/devel/GeekBrains/basic_linux/devs_share$ umask -S
u=rwx,g=rx,o=rx
devuser1@shikin:/media/data/devel/GeekBrains/basic_linux/devs_share$ umask g+w
devuser1@shikin:/media/data/devel/GeekBrains/basic_linux/devs_share$ touch testscript.py
devuser1@shikin:/media/data/devel/GeekBrains/basic_linux/devs_share$ ll testscript.py 
-rw-rw-r-- 1 devuser1 developer 0 ноя 29 17:51 testscript.py
devuser1@shikin:/media/data/devel/GeekBrains/basic_linux/devs_share$ exit 
ing@shikin:/media/data/devel/GeekBrains/basic_linux/devs_share$ sudo -u devuser2 bash
devuser2@shikin:/media/data/devel/GeekBrains/basic_linux/devs_share$ echo "print('hellow world')" > testscript.py
devuser2@shikin:/media/data/devel/GeekBrains/basic_linux/devs_share$ cat testscript.py 
print('hellow world')
devuser2@shikin:/media/data/devel/GeekBrains/basic_linux/devs_share$ exit
ing@shikin:/media/data/devel/GeekBrains/basic_linux/devs_share$ cat >> testscript.py 
bash: testscript.py: Отказано в доступе
ing@shikin:/media/data/devel/GeekBrains/basic_linux/devs_share$
```
