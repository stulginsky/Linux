## Lesson 4

### Задание 1. Создать файл file1 и наполнить его произвольным содержимым. Скопировать его в file2. Создать символическую ссылку file3 на file1. Создать жёсткую ссылку file4 на file1. Посмотреть, какие inode у файлов. Удалить file1. Что стало с остальными созданными файлами? Попробовать вывести их на экран.

```bash
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ cat > file1.task1
for i in {1..7}; do echo -e "## Lesson 5\n\n### Задание $i. \n\n\`\`\`bash\n\`\`\`" > "task$i.md"; done
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll file*
-rw-rw-r-- 1 ing ing 111 ноя 26 22:28 file1.task1
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ cp file1.task1 file2.task1 
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll file*
-rw-rw-r-- 1 ing ing 111 ноя 26 22:28 file1.task1
-rw-rw-r-- 1 ing ing 111 ноя 26 22:29 file2.task1
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ln -s file1.task1 file3.task1 
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll file*
-rw-rw-r-- 1 ing ing 111 ноя 26 22:28 file1.task1
-rw-rw-r-- 1 ing ing 111 ноя 26 22:29 file2.task1
lrwxrwxrwx 1 ing ing  11 ноя 26 22:30 file3.task1 -> file1.task1
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ln  file1.task1 file4.task1 
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll -i file*
19552193 -rw-rw-r-- 2 ing ing 111 ноя 26 22:28 file1.task1
19552196 -rw-rw-r-- 1 ing ing 111 ноя 26 22:29 file2.task1
19552197 lrwxrwxrwx 1 ing ing  11 ноя 26 22:30 file3.task1 -> file1.task1
19552193 -rw-rw-r-- 2 ing ing 111 ноя 26 22:28 file4.task1
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ rm file1.task1 
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll -i file*
19552196 -rw-rw-r-- 1 ing ing 111 ноя 26 22:29 file2.task1
19552197 lrwxrwxrwx 1 ing ing  11 ноя 26 22:30 file3.task1 -> file1.task1
19552193 -rw-rw-r-- 1 ing ing 111 ноя 26 22:28 file4.task1
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ cat file1.task1 
cat: file1.task1: Нет такого файла или каталога
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ cat file2.task1 
for i in {1..7}; do echo -e "## Lesson 5\n\n### Задание $i. \n\n\`\`\`bash\n\`\`\`" > "task$i.md"; done
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ cat file3.task1 
cat: file3.task1: Нет такого файла или каталога
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ cat file4.task1 
for i in {1..7}; do echo -e "## Lesson 5\n\n### Задание $i. \n\n\`\`\`bash\n\`\`\`" > "task$i.md"; done
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ 
```
