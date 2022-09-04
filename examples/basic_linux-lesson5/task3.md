## Lesson 5

### Задание 3. Создать два произвольных файла. Первому присвоить права на чтение и запись для владельца и группы, только на чтение — для всех. Второму присвоить права на чтение и запись только для владельца. Сделать это в численном и символьном виде.

```bash
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ touch task3.file1 task3.file2
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll task3.file*
-rw-rw-r-- 1 ing ing 0 ноя 26 22:55 task3.file1
-rw-rw-r-- 1 ing ing 0 ноя 26 22:55 task3.file2
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ chmod a-rwx task3.file*
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll task3.file*
---------- 1 ing ing 0 ноя 26 22:55 task3.file1
---------- 1 ing ing 0 ноя 26 22:55 task3.file2
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ chmod 664 task3.file1
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ chmod 600 task3.file2
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll task3.file*
-rw-rw-r-- 1 ing ing 0 ноя 26 22:55 task3.file1
-rw------- 1 ing ing 0 ноя 26 22:55 task3.file2
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ chmod ug+rw,o+r task3.file1
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ chmod u+rw task3.file2
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll task3.file*
-rw-rw-r-- 1 ing ing 0 ноя 26 22:55 task3.file1
-rw------- 1 ing ing 0 ноя 26 22:55 task3.file2
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ 
```
