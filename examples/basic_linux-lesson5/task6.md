## Lesson 5

### Задание 6. * Создать в директории для совместной работы поддиректорию для обмена файлами, но чтобы удалять файлы могли только их создатели.

```bash
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll devs_share/
итого 12
drwxrwsr-x 2 root     developer 4096 ноя 29 18:22 ./
drwxrwxrwx 8 ing      ing       4096 ноя 29 18:29 ../
-rw-rw-r-- 1 devuser1 developer 0 ноя 29 17:55 testscript.py
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ 
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ sudo chmod +t devs_share/
[sudo] пароль для ing: 
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll devs_share/
итого 12
drwxrwsr-t 2 root     developer 4096 ноя 29 18:22 ./
drwxrwxrwx 8 ing      ing       4096 ноя 29 18:40 ../
-rw-rw-r-- 1 devuser1 developer 0 ноя 29 17:55 testscript.py
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ rm devs_share/testscript.py 
rm: удалить защищенный от записи обычный файл 'devs_share/testscript.py'? y
rm: невозможно удалить 'devs_share/testscript.py': Отказано в доступе
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ sudo -u devuser2 rm devs_share/testscript.py 
rm: невозможно удалить 'devs_share/testscript.py': Операция не позволена
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ sudo -u devuser1 rm devs_share/testscript.py 
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll devs_share/
итого 8
drwxrwsr-t 2 root developer 4096 ноя 29 18:47 ./
drwxrwxrwx 8 ing  ing       4096 ноя 29 18:46 ../
ing@shikin:/media/data/devel/GeekBrains/basic_linux$
```
