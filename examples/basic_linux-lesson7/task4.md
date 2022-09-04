## Lesson 7

### Задание 4. * Настроить проброс портов локально с порта 80 на порт 8080.

Гостевая машина
```bash
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
ing@shikin-test:~/http$ sudo iptables -S -t nat
-P PREROUTING ACCEPT
-P INPUT ACCEPT
-P OUTPUT ACCEPT
-P POSTROUTING ACCEPT
ing@shikin-test:~/http$ sudo iptables -t nat -A PREROUTING -i enp0s3 -p tcp --dport 80 -j DNAT --to :8000
ing@shikin-test:~/http$ sudo iptables -t nat -A POSTROUTING -o enp0s3 -j MASQUERADE
ing@shikin-test:~/http$ sudo iptables -S -t nat
-P PREROUTING ACCEPT
-P INPUT ACCEPT
-P OUTPUT ACCEPT
-P POSTROUTING ACCEPT
-A PREROUTING -i enp0s3 -p tcp -m tcp --dport 80 -j DNAT --to-destination :8000
-A POSTROUTING -o enp0s3 -j MASQUERADE
ing@shikin-test:~/http$ python3 -m http.server
Serving HTTP on 0.0.0.0 port 8000 (http://0.0.0.0:8000/) ...
192.168.1.30 - - [06/Dec/2020 14:08:09] "GET / HTTP/1.1" 200 -
```

Хост-машина
```bash
ing@shikin:~$ wget -t 1 -T 2 -O /dev/stdout http://192.168.1.38
--2020-12-06 18:08:09--  http://192.168.1.38/
Подключение к 192.168.1.38:80... соединение установлено.
HTTP-запрос отправлен. Ожидание ответа… 200 OK
Длина: 22 [text/html]
Сохранение в: «/dev/stdout»

/dev/stdout                                  0%[                                                                                         ]       0  --.-KB/s               <h1>Hello world</h1>

/dev/stdout                                100%[========================================================================================>]      22  --.-KB/s    за 0s      

2020-12-06 18:08:09 (254 KB/s) - «/dev/stdout» сохранён [22/22]

ing@shikin:~$ 
```