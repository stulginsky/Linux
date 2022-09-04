## Lesson 7

### Задание 2. Установить пакет на свой выбор, используя snap.

```bash
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ snap find hello|grep canon
hello                          2.10                         canonical*           -      GNU Hello, the "hello world" snap
hello-world                    6.4                          canonical*           -      The 'hello-world' of snapssudo snap install
ing@shikin:/media/data/devel/GeekBrains/basic_linux$  hello
[sudo] пароль для ing: 
hello 2.10 from Canonical✓ installed
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ hello
Hello, world!
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ which hello
/snap/bin/hello
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll /snap/bin/hello
lrwxrwxrwx 1 root root   13 дек  6 12:53 hello -> /usr/bin/snap*
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll /snap/|grep hello
drwxr-xr-x  3 root root 4096 дек  6 12:53 hello/
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ sudo snap remove hello
hello removed
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ hello
bash: /snap/bin/hello: Нет такого файла или каталога
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ 
```
