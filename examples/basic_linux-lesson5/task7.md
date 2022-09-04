## Lesson 5

### Задание 7. * Создать директорию, в которой есть несколько файлов. Сделать так, чтобы открыть файлы можно было, только зная имя файла, а через ls список файлов посмотреть было нельзя.

```bash
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ mkdir task7testdir
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ chmod 331 task7testdir/
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll | grep task7testdir
d-wx-wx--x 2 ing ing 4096 ноя 26 23:36 task7testdir/
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ touch task7testdir/test1
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ touch task7testdir/test2
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ cat > task7testdir/test2
test line
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll task7testdir/*
ls: невозможно получить доступ к 'task7testdir/*': Нет такого файла или каталога
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ cat task7testdir/test2
test line
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ cd task7testdir/
ing@shikin:/media/data/devel/GeekBrains/basic_linux/task7testdir$ ll
ls: невозможно открыть каталог '.': Отказано в доступе
```
