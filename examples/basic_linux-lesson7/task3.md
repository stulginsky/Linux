## Lesson 7

### Задание 3. Настроить iptables: разрешить подключения только на 22-й и 80-й порты.

На гостевой машине
```bash
ing@shikin-test:~$ sudo iptables -S
-P INPUT DROP
-P FORWARD DROP
-P OUTPUT DROP
-A INPUT -i lo -j ACCEPT
-A INPUT -p icmp -j ACCEPT
-A INPUT -p tcp -m state --state RELATED,ESTABLISHED -j ACCEPT
-A INPUT -p udp -m state --state RELATED,ESTABLISHED -j ACCEPT
-A INPUT -i enp0s3 -p tcp -m tcp --dport 22 -j ACCEPT
-A INPUT -i enp0s3 -p tcp -m tcp --dport 80 -j ACCEPT
-A OUTPUT -o lo -j ACCEPT
-A OUTPUT -p icmp -j ACCEPT
-A OUTPUT -p tcp -m tcp --sport 32768:61000 -j ACCEPT
-A OUTPUT -p udp -m udp --sport 32768:61000 -j ACCEPT
-A OUTPUT -o enp0s3 -p tcp -m tcp --sport 22 -j ACCEPT
-A OUTPUT -o enp0s3 -p tcp -m tcp --sport 80 -j ACCEPT
ing@shikin-test:~$ 
ing@shikin-test:~$ cd http/
ing@shikin-test:~/http$ ll
total 12
drwxr-xr-x 2 root root 4096 Dec  6 12:30 ./
drwxr-xr-x 4 ing  ing  4096 Dec  6 12:24 ../
-rw-r--r-- 1 root root   22 Dec  6 12:30 index.html
ing@shikin-test:~/http$ cat index.html 
<h1>Hello world</h1>
ing@shikin-test:~/http$ python3 -m http.server
Serving HTTP on 0.0.0.0 port 8000 (http://0.0.0.0:8000/) ...
^C
Keyboard interrupt received, exiting.
ing@shikin-test:~/http$ 
```

Пробуем подключиться с хост-машины
```bash
ing@shikin:~$ wget -t 1 -T 2 -O /dev/stdout http://192.168.1.38:8000
--2020-12-06 16:50:21--  http://192.168.1.38:8000/
Подключение к 192.168.1.38:8000... ошибка: Время ожидания соединения истекло.
Завершение.

ing@shikin:~$ 
```

Добавляем соответствующие правила на гостевой и запускаем вебсервер
```bash
ing@shikin-test:~/http$ sudo iptables -A INPUT -i enp0s3 -p tcp -m tcp --dport 8000 -j ACCEPT
ing@shikin-test:~/http$ sudo iptables -A OUTPUT -o enp0s3 -p tcp -m tcp --sport 8000 -j ACCEPT
ing@shikin-test:~/http$ sudo iptables -S
-P INPUT DROP
-P FORWARD DROP
-P OUTPUT DROP
-A INPUT -i lo -j ACCEPT
-A INPUT -p icmp -j ACCEPT
-A INPUT -p tcp -m state --state RELATED,ESTABLISHED -j ACCEPT
-A INPUT -p udp -m state --state RELATED,ESTABLISHED -j ACCEPT
-A INPUT -i enp0s3 -p tcp -m tcp --dport 22 -j ACCEPT
-A INPUT -i enp0s3 -p tcp -m tcp --dport 80 -j ACCEPT
-A INPUT -i enp0s3 -p tcp -m tcp --dport 8000 -j ACCEPT
-A OUTPUT -o lo -j ACCEPT
-A OUTPUT -p icmp -j ACCEPT
-A OUTPUT -p tcp -m tcp --sport 32768:61000 -j ACCEPT
-A OUTPUT -p udp -m udp --sport 32768:61000 -j ACCEPT
-A OUTPUT -o enp0s3 -p tcp -m tcp --sport 22 -j ACCEPT
-A OUTPUT -o enp0s3 -p tcp -m tcp --sport 80 -j ACCEPT
-A OUTPUT -o enp0s3 -p tcp -m tcp --sport 8000 -j ACCEPT
ing@shikin-test:~/http$ python3 -m http.server
Serving HTTP on 0.0.0.0 port 8000 (http://0.0.0.0:8000/) ...
```

Пробуем подключиться с хост-машины
```bash
ing@shikin:~$ wget -t 1 -T 2 -O /dev/stdout http://192.168.1.38:8000
--2020-12-06 16:58:02--  http://192.168.1.38:8000/
Подключение к 192.168.1.38:8000... соединение установлено.
HTTP-запрос отправлен. Ожидание ответа… 200 OK
Длина: 22 [text/html]
Сохранение в: «/dev/stdout»

/dev/stdout                                  0%[                                                                                         ]       0  --.-KB/s               <h1>Hello world</h1>

/dev/stdout                                100%[========================================================================================>]      22  --.-KB/s    за 0s      

2020-12-06 16:58:02 (2,54 MB/s) - «/dev/stdout» сохранён [22/22]

ing@shikin:~$ 
```

На гостевой видим запрос
```bash
ing@shikin-test:~/http$ python3 -m http.server
Serving HTTP on 0.0.0.0 port 8000 (http://0.0.0.0:8000/) ...
192.168.1.30 - - [06/Dec/2020 12:58:02] "GET / HTTP/1.1" 200 -
```