## Lesson 4

### Задание 3. Управление процессами. Изменить конфигурационный файл службы SSH: /etc/ssh/sshd_config, отключив аутентификацию по паролю PasswordAuthentication no. Выполните рестарт службы systemctl restart sshd (service sshd restart), верните аутентификацию по паролю, выполните reload службы systemctl reload sshd (services sshd reload). В чём различие между действиями restart и reload? Создайте файл при помощи команды cat > file_name, напишите текст и завершите комбинацией ctrl+d. Какой сигнал передадим процессу?

Q: Изменить конфигурационный файл службы SSH: /etc/ssh/sshd_config, отключив аутентификацию по паролю PasswordAuthentication no. Выполните рестарт службы systemctl restart sshd (service sshd restart), верните аутентификацию по паролю, выполните reload службы systemctl reload sshd (services sshd reload). В чём различие между действиями restart и reload?

A: Как видно из /etc/systemd/system/sshd.service
```
[Unit]
Description=OpenBSD Secure Shell server
After=network.target auditd.service
ConditionPathExists=!/etc/ssh/sshd_not_to_be_run

[Service]
EnvironmentFile=-/etc/default/ssh
ExecStartPre=/usr/sbin/sshd -t
ExecStart=/usr/sbin/sshd -D $SSHD_OPTS
ExecReload=/usr/sbin/sshd -t
ExecReload=/bin/kill -HUP $MAINPID
KillMode=process
Restart=on-failure
RestartPreventExitStatus=255
Type=notify
RuntimeDirectory=sshd
RuntimeDirectoryMode=0755

[Install]
WantedBy=multi-user.target
Alias=sshd.service
```
на reload процессу будет отправлен SIGHUP
на restart - зависит от ряда параметров, таких как 
[KillMode=](https://www.freedesktop.org/software/systemd/man/systemd.kill.html#KillMode=), 
[Restart=](https://www.freedesktop.org/software/systemd/man/systemd.service.html#Restart=) 
и некоторых других, но как правило процессу шлется SIGTERM.
И как следствие разница в том, что в случае SIGHUP процесс перечитывает конфиг 
и начинает работать с новыми настройками (далеко не всегда завершая текущие сессии),
а в случае SIGTERM пытается освободить все занятые ресурсы, проводит различные действия 
по завершению работы и нормально завершается.

Q: Создайте файл при помощи команды cat > file_name, напишите текст и завершите комбинацией ctrl+d. Какой сигнал передадим процессу?

A: EOF - но он не имеет отношения к сигналам для kill