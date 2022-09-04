## Lesson 6

### Задание 5. Создать разовое задание на перезагрузку операционной системы, используя at.

```bash
ing@shikin:/media/data/devel/backups$ sudo at -f /sbin/reboot 6:00pm 11/30/2020
warning: commands will be executed using /bin/sh
job 1 at Mon Nov 30 18:00:00 2020
ing@shikin:/media/data/devel/backups$ sudo atq
1       Mon Nov 30 18:00:00 2020 a root
ing@shikin:/media/data/devel/backups$ sudo atrm 1
ing@shikin:/media/data/devel/backups$ sudo atq
ing@shikin:/media/data/devel/backups$
```
