## Lesson 4

### Задание 1 Потоки ввода/вывода. Создать файл, используя команду echo. Используя команду cat, прочитать содержимое каталога etc, ошибки перенаправить в отдельный файл.

```bash
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll task1.txt
ls: невозможно получить доступ к 'task1.txt': Нет такого файла или каталога
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ echo > task1.txt
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll task1.txt
-rw-rw-r-- 1 ing ing 1 ноя 24 21:40 task1.txt
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ cat task1.txt 

ing@shikin:/media/data/devel/GeekBrains/basic_linux$ cat /etc/* >task1.txt 2>task1_err.txt
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ ll task1*
-rw-rw-r-- 1 ing ing   6640 ноя 24 21:41 task1_err.txt
-rw-rw-r-- 1 ing ing    658 ноя 24 21:42 task1.md
-rw-rw-r-- 1 ing ing 491255 ноя 24 21:41 task1.txt
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ cat task1_err.txt 
cat: /etc/acpi: Это каталог
cat: /etc/alternatives: Это каталог
cat: /etc/apache2: Это каталог
cat: /etc/apm: Это каталог
cat: /etc/apparmor: Это каталог
................
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ 
```