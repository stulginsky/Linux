## Lesson 2

 ### Задание 2 
 #### Управление файлами и каталогами и текстовые редакторы. Создать файл с наполнением, используя несколько способов. Использовать разобранные текстовые редакторы для наполнения файлов данными. Создать копии созданных файлов, создать несколько каталогов с подкаталогами, перенести несколько файлов в созданные каталоги. Перечислить команды и используемые параметры команд.

```bash
ng@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2$ ll
итого 16
drwxrwxr-x 2 ing ing 4096 ноя 16 21:39 ./
drwxrwxr-x 5 ing ing 4096 ноя 16 21:31 ../
-rw-rw-r-- 1 ing ing  886 ноя 16 21:39 task1.md
-rw-rw-r-- 1 ing ing  740 ноя 16 21:39 task2.md
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2$ mkdir task2
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2$ ll
итого 20
drwxrwxr-x 3 ing ing 4096 ноя 16 21:40 ./
drwxrwxr-x 5 ing ing 4096 ноя 16 21:31 ../
-rw-rw-r-- 1 ing ing  886 ноя 16 21:39 task1.md
drwxrwxr-x 2 ing ing 4096 ноя 16 21:40 task2/
-rw-rw-r-- 1 ing ing  740 ноя 16 21:39 task2.md
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2$ cd task2/
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ touch file1.txt
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ touch ../file2.txt
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ mv ../file2.txt .
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ ll
итого 8
drwxrwxr-x 2 ing ing 4096 ноя 16 21:43 ./
drwxrwxr-x 3 ing ing 4096 ноя 16 21:43 ../
-rw-rw-r-- 1 ing ing    0 ноя 16 21:43 file1.txt
-rw-rw-r-- 1 ing ing    0 ноя 16 21:43 file2.txt
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ cat > file1.txt 
test msg
^C
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ cat > file3.txt
^C
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ ll
итого 12
drwxrwxr-x 2 ing ing 4096 ноя 16 21:45 ./
drwxrwxr-x 3 ing ing 4096 ноя 16 21:44 ../
-rw-rw-r-- 1 ing ing  256 ноя 16 21:45 file1.txt
-rw-rw-r-- 1 ing ing    0 ноя 16 21:43 file2.txt
-rw-rw-r-- 1 ing ing    0 ноя 16 21:45 file3.txt
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ cat file1.txt 
test msg
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ cp file1.txt copy_file1.txt
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ 
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ 
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ cat copy_file1.txt 
test msg
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ 
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ 
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ mkdir somedir1
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ mkdir somedir2
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ mkdir somedir2/test
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ mv copy_file1.txt somedir2/test/
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ 
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ 
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ ll somedir2/test/
итого 12
drwxrwxr-x 2 ing ing 4096 ноя 16 21:53 ./
drwxrwxr-x 3 ing ing 4096 ноя 16 21:52 ../
-rw-rw-r-- 1 ing ing    9 ноя 16 21:51 copy_file1.txt
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ 
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ 
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ mv -r somedir2 somedir1/
mv: неверный ключ — «r»
По команде «mv --help» можно получить дополнительную информацию.
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ mv  somedir2 somedir1/
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ 
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ 
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ mkdir somedir3
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ 
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ 
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ cp -r somedir1 somedir3/
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ 
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ ll somedir3/somedir1/somedir2/test/
итого 12
drwxrwxr-x 2 ing ing 4096 ноя 16 21:54 ./
drwxrwxr-x 3 ing ing 4096 ноя 16 21:54 ../
-rw-rw-r-- 1 ing ing    9 ноя 16 21:54 copy_file1.txt
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ vim somedir3/somedir1/somedir2/test/copy_file1.txt
```
[VIM screen](./task2/Screenshot%20at%2022-02-26.png)
``` bash
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ cat somedir3/somedir1/somedir2/test/copy_file1.txt 
test msg

test msg 2
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$
```
[nano screen](./task2/Screenshot%20at%2022-08-22.png)
``` bash
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ 
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$ cat somedir3/somedir1/somedir2/test/copy_file1.txt 
test msg

test msg 2

test msg 3
ing@shikin:/media/data/devel/GeekBrains/basic_linux/lesson2/task2$
```