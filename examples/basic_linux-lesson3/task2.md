## Lesson 3

### Задание 2. Управление группами:

a) создать группу с использованием утилит и в ручном режиме;
```bash
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ sudo groupadd customgroup1
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ sudo addgroup  customgroup2
[sudo] пароль для ing: 
Добавляется группа «customgroup2» (GID 1002) ...
Готово.
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ grep customgroup /etc/group
customgroup1:x:1001:
customgroup2:x:1002:
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ 
```

b) попрактиковаться в смене групп у пользователей;
```bash
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ sudo useradd -g customgroup1 -G sudo -m -s /bin/bash testuser1
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ id testuser1 
uid=1001(testuser1) gid=1001(customgroup1) группы=1001(customgroup1),27(sudo)
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ sudo usermod -g users testuser1 
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ id testuser1 
uid=1001(testuser1) gid=100(users) группы=100(users),27(sudo)
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ sudo usermod -G users testuser1 
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ id testuser1 
uid=1001(testuser1) gid=100(users) группы=100(users)
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$
```

c) добавить пользователя в группу, не меняя основной;
```bash
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ sudo usermod -aG customgroup1,customgroup2,sudo,docker testuser1 
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ id testuser1 
uid=1001(testuser1) gid=100(users) группы=100(users),27(sudo),999(docker),1001(customgroup1),1002(customgroup2)
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$
```

d) удалить пользователя из группы.
```bash
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ sudo deluser testuser1 customgroup2
Удаляется пользователь «testuser1» из группы «customgroup2» ...
Готово.
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ id testuser1 
uid=1001(testuser1) gid=100(users) группы=100(users),27(sudo),999(docker),1001(customgroup1)
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ sudo deluser testuser1 customgroup1
Удаляется пользователь «testuser1» из группы «customgroup1» ...
Готово.
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ id testuser1 
uid=1001(testuser1) gid=100(users) группы=100(users),27(sudo),999(docker)
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$
```

e) Удаляем группы
```bash
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ sudo deluser --group  customgroup2
Удаляется группа «customgroup2» ...
Готово.
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ sudo deluser --group  customgroup1
Удаляется группа «customgroup1» ...
Готово.
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$ sudo deluser testuser1
Удаляется пользователь «testuser1» ...
Готово.
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson3$
```