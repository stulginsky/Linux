## Lesson 5

### Задание 2. Дать созданным файлам другие, произвольные имена. Создать новую символическую ссылку. Переместить ссылки в другую директорию.

```bash
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll file*
-rw-rw-r-- 1 ing ing  111 ноя 26 22:29 file2.task1
lrwxrwxrwx 1 ing ing   11 ноя 26 22:30 file3.task1 -> file1.task1
-rw-rw-r-- 1 ing ing  111 ноя 26 22:28 file4.task1
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ rm file3.task1 
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll file*
-rw-rw-r-- 1 ing ing 111 ноя 26 22:29 file2.task1
-rw-rw-r-- 1 ing ing 111 ноя 26 22:28 file4.task1
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ mv file2.task1 file2.task2
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ mv file4.task1 file4.task2
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll file*
-rw-rw-r-- 1 ing ing 111 ноя 26 22:29 file2.task2
-rw-rw-r-- 1 ing ing 111 ноя 26 22:28 file4.task2
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ln  -s file2.task2 filesymlink.rel
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ln  -s /media/data/devel/GeekBrains/basic_linux/file4.task2 filesymlink.abs
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll file*
-rw-rw-r-- 1 ing ing 111 ноя 26 22:29 file2.task2
-rw-rw-r-- 1 ing ing 111 ноя 26 22:28 file4.task2
lrwxrwxrwx 1 ing ing  52 ноя 26 22:48 filesymlink.abs -> /media/data/devel/GeekBrains/basic_linux/file4.task2
lrwxrwxrwx 1 ing ing  11 ноя 26 22:48 filesymlink.rel -> file2.task2
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ mkdir somedir
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ mv filesymlink.* somedir/
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll file*
-rw-rw-r-- 1 ing ing 111 ноя 26 22:29 file2.task2
-rw-rw-r-- 1 ing ing 111 ноя 26 22:28 file4.task2
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll somedir/
итого 8
drwxrwxr-x 2 ing ing 4096 ноя 26 22:50 ./
drwxrwxr-x 6 ing ing 4096 ноя 26 22:51 ../
lrwxrwxrwx 1 ing ing   52 ноя 26 22:48 filesymlink.abs -> /media/data/devel/GeekBrains/basic_linux/file4.task2
lrwxrwxrwx 1 ing ing   11 ноя 26 22:48 filesymlink.rel -> file2.task2
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ cat somedir/filesymlink.abs 
for i in {1..7}; do echo -e "## Lesson 5\n\n### Задание $i. \n\n\`\`\`bash\n\`\`\`" > "task$i.md"; done
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ cat somedir/filesymlink.rel 
cat: somedir/filesymlink.rel: Нет такого файла или каталога
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ 

```
