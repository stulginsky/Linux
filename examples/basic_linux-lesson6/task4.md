## Lesson 6

### Задание 4. Используя grep, проанализировать файл /var/log/syslog, отобрав события на своё усмотрение.

```bash
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ grep -i ' CRON' /var/log/syslog | awk '!($1=$2=$3=$5="")'|uniq
   shikin  (root) CMD ( cd / && run-parts --report /etc/cron.hourly)
   shikin  (root) CMD (test -x /usr/sbin/anacron || ( cd / && run-parts --report /etc/cron.daily ))
   shikin  (root) CMD (test -x /usr/sbin/anacron || ( cd / && run-parts --report /etc/cron.weekly ))
   shikin  (root) CMD ( cd / && run-parts --report /etc/cron.hourly)
   shikin  (root) CMD ([ -x /etc/init.d/anacron ] && if [ ! -d /run/systemd/system ]; then /usr/sbin/invoke-rc.d anacron start >/dev/null; fi)
   shikin  (root) CMD ( cd / && run-parts --report /etc/cron.hourly)
   shikin  (ing) CMD (env DISPLAY=:0 /usr/bin/python3 /notifier.py '\320\237\320\276\321\200\320\260 \320\277\321\200\320\270\320\275\321\217\321\202\321\214!!!')
   shikin  (root) CMD ( cd / && run-parts --report /etc/cron.hourly)
   shikin  (root) CMD ( test -x /etc/cron.daily/popularity-contest && /etc/cron.daily/popularity-contest --crond)
   shikin  (root) CMD ( cd / && run-parts --report /etc/cron.hourly)
   shikin  (root) CMD (apt autoclean)
   shikin  (CRON) info (No MTA installed, discarding output)
   shikin  (root) CMD ( cd / && run-parts --report /etc/cron.hourly)
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ 
```
Как видно из вывода, у меня 2 кастомных задачи
* одна запускает скрипт нотификации
* чистит кеш apt