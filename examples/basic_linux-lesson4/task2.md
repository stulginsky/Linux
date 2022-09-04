## Lesson 4

### Задание 2 Конвейер (pipeline). Использовать команду cut на вывод длинного списка каталога, чтобы отобразить только права доступа к файлам. Затем отправить в конвейере этот вывод на sort и uniq, чтобы отфильтровать все повторяющиеся строки.

```bash
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll -ld /etc/* | cut -f1 -d " " | sort | uniq
drwxr-s---
drwxr-xr-x
lrwxrwxrwx
-r--r-----
-r--r--r--
-rw-r-----
-rw-r--r--
-rw-rw-r--
-rwxr-xr-x
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll -ld /etc/* | cut -f1 -d " " | sort -u
drwxr-s---
drwxr-xr-x
lrwxrwxrwx
-r--r-----
-r--r--r--
-rw-r-----
-rw-r--r--
-rw-rw-r--
-rwxr-xr-x
ing@shikin:/media/data/devel/GeekBrains/basic_linux$
```