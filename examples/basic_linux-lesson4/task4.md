## Lesson 4

### Задание 4. Сигналы процессам. Запустите mc. Используя ps, найдите PID процесса, завершите процесс, передав ему сигнал 9.

Начинаем редактировать файл в mcedit [mcedit](./task4_mcedit.png)

Смотрим в текущей директории

```bash
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll
итого 536
drwxrwxr-x 5 ing ing   4096 ноя 25 10:30 ./
drwxrwxr-x 9 ing ing   4096 ноя 16 19:36 ../
drwxrwxr-x 8 ing ing   4096 ноя 24 23:35 .git/
-rw-rw-r-- 1 ing ing   1588 ноя 16 19:41 .gitignore
drwxrwxr-x 4 ing ing   4096 ноя 24 23:34 .idea/
-rw-rw-r-- 1 ing ing     15 ноя 16 21:31 README.md
drwxrwxr-x 2 ing ing   4096 ноя 23 16:21 saper/
-rw-rw-r-- 1 ing ing   6640 ноя 24 21:41 task1_err.txt
-rw-rw-r-- 1 ing ing   1434 ноя 24 21:47 task1.md
-rw-rw-r-- 1 ing ing 491255 ноя 24 21:41 task1.txt
-rw-rw-r-- 1 ing ing    891 ноя 24 22:02 task2.md
-rw-rw-r-- 1 ing ing   3166 ноя 24 23:34 task3.md
-rw-rw-r-- 1 ing ing     10 ноя 24 23:32 task3.txt
-rw-rw-r-- 1 ing ing    239 ноя 24 23:36 task4.md
lrwxrwxrwx 1 ing ing     15 ноя 25 10:30 .#task4.txt -> 'ing@shikin.1765'
-rw-rw-r-- 1 ing ing      0 ноя 25 10:27 task4.txt
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ps ax|grep mc
 1700 pts/3    S+     0:00 mc
 1765 pts/3    S+     0:00 /usr/bin/mcedit /media/data/devel/GeekBrains/basic_linux/task4.txt
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ kill -9  1700
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ps ax|grep mc
 3568 pts/4    R+     0:00 grep --color=auto mc
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll
итого 548
drwxrwxr-x 5 ing ing   4096 ноя 25 10:36 ./
drwxrwxr-x 9 ing ing   4096 ноя 16 19:36 ../
drwxrwxr-x 8 ing ing   4096 ноя 24 23:35 .git/
-rw-rw-r-- 1 ing ing   1588 ноя 16 19:41 .gitignore
drwxrwxr-x 4 ing ing   4096 ноя 25 10:32 .idea/
-rw-rw-r-- 1 ing ing     15 ноя 16 21:31 README.md
drwxrwxr-x 2 ing ing   4096 ноя 23 16:21 saper/
-rw-rw-r-- 1 ing ing   6640 ноя 24 21:41 task1_err.txt
-rw-rw-r-- 1 ing ing   1434 ноя 24 21:47 task1.md
-rw-rw-r-- 1 ing ing 491255 ноя 24 21:41 task1.txt
-rw-rw-r-- 1 ing ing    891 ноя 24 22:02 task2.md
-rw-rw-r-- 1 ing ing   3166 ноя 24 23:34 task3.md
-rw-rw-r-- 1 ing ing     10 ноя 24 23:32 task3.txt
-rw-rw-r-- 1 ing ing   8721 ноя 25 10:30 task4_mcedit.png
-rw-rw-r-- 1 ing ing   1514 ноя 25 10:36 task4.md
lrwxrwxrwx 1 ing ing     15 ноя 25 10:30 .#task4.txt -> 'ing@shikin.1765'
-rw-rw-r-- 1 ing ing      0 ноя 25 10:27 task4.txt
ing@shikin:/media/data/devel/GeekBrains/basic_linux$
```

Такие последствия not-grecefull завершения mc и его подпроцессов