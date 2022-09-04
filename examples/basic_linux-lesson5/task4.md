## Lesson 5

### Задание 4. Создать пользователя, обладающего возможностью выполнять действия от имени суперпользователя.

```bash
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ sudo adduser --ingroup sudo someuser
Добавляется пользователь «someuser» ...
Добавляется новый пользователь «someuser» (1002) в группу «sudo» ...
Создаётся домашний каталог «/home/someuser» ...
Копирование файлов из «/etc/skel» ...
Введите новый пароль UNIX: 
Повторите ввод нового пароля UNIX: 
passwd: пароль успешно обновлён
Изменение информации о пользователе someuser
Введите новое значение или нажмите ENTER для выбора значения по умолчанию
        Полное имя []: someuser
        Номер комнаты []: 
        Рабочий телефон []: 
        Домашний телефон []: 
        Другое []: 
Данная информация корректна? [Y/n] Y
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ id someuser
uid=1002(someuser) gid=27(sudo) группы=27(sudo)
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ touch somefile
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ sudo -u someuser bash
someuser@shikin:/media/data/devel/GeekBrains/basic_linux$ ll somefile 
-rw-rw-r-- 1 ing ing 0 ноя 26 23:23 somefile
someuser@shikin:/media/data/devel/GeekBrains/basic_linux$ rm somefile 
rm: удалить защищенный от записи пустой обычный файл 'somefile'? y
rm: невозможно удалить 'somefile': Отказано в доступе
someuser@shikin:/media/data/devel/GeekBrains/basic_linux$ sudo rm somefile 
[sudo] пароль для someuser: 
someuser@shikin:/media/data/devel/GeekBrains/basic_linux$ ll somefile 
ls: невозможно получить доступ к 'somefile': Нет такого файла или каталога
someuser@shikin:/media/data/devel/GeekBrains/basic_linux$ exit
ing@shikin:/media/data/devel/GeekBrains/basic_linux$
```
