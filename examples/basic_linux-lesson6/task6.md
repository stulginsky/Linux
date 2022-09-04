## Lesson 6

### Задание 6. * Написать скрипт, делающий архивную копию каталога etc, и прописать задание в crontab.

[backup script](./task6_backup.sh)

[root crontab](./screenshot-2020-11-29_23-41-33.png)

```bash
ing@shikin:/media/data/devel/backups$ tail -f -n3 /var/log/syslog
Nov 29 23:41:10 shikin openconnect[6036]: DTLS handshake failed: Resource temporarily unavailable, try again.
Nov 29 23:42:01 shikin cron[1155]: (root) RELOAD (crontabs/root)
Nov 29 23:42:01 shikin CRON[19883]: (root) CMD (/media/data/devel/GeekBrains/basic_linux/task6.sh)
Nov 29 23:42:40 shikin openconnect[6036]: DTLS handshake failed: Resource temporarily unavailable, try again.
Nov 29 23:43:01 shikin CRON[20055]: (root) CMD (/media/data/devel/GeekBrains/basic_linux/task6.sh)
ing@shikin:/media/data/devel/backups$ ll 2020-*
-rw-r--r-- 1 root root 1891994 ноя 29 23:42 2020-11-29-23-42-01.tar.gz
-rw-r--r-- 1 root root 1891994 ноя 29 23:43 2020-11-29-23-43-01.tar.gz
-rw-r--r-- 1 root root 1891994 ноя 29 23:44 2020-11-29-23-44-01.tar.gz
ing@shikin:/media/data/devel/backups$
```
