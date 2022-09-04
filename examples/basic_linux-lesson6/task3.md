## Lesson 6

### Задание 3. * Использовать команду AWK на вывод длинного списка каталога, чтобы отобразить только права доступа к файлам. Затем отправить в конвейере этот вывод на sort и uniq, чтобы отфильтровать все повторяющиеся строки.

```bash
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ls -l|awk '{print $1}'|sort -u|grep -vi 'итого'
drwxrwxr-x
-rw-rw-r--
-rwxrwxr-x
```
