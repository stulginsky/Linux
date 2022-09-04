## Lesson 7

### Задание 1. Подключить репозиторий с nginx любым удобным способом, установить nginx и потом удалить nginx, используя утилиту dpkg.

```bash
shikin@ts17201:~$ sudo apt purge nginx
Reading package lists... Done
Building dependency tree... Done
Package 'nginx' is not installed, so not removed
0 upgraded, 0 newly installed, 0 to remove and 43 not upgraded.
shikin@ts17201:~$ ll /etc/apt/sources.list.d/
total 16
drwxr-xr-x 1 root root 4096 Sep 28 06:06 ./
drwxr-xr-x 1 root root 4096 Sep 28 06:06 ../
-rw-r--r-- 1 root root  134 Sep 28 06:06 ansible-ubuntu-ansible-xenial.list
-rw-r--r-- 1 root root  134 Sep 28 06:06 ansible-ubuntu-ansible-xenial.list.save
shikin@ts17201:~$ echo "deb http://nginx.org/packages/ubuntu `lsb_release -cs` nginx" > | sudo tee /etc/apt/sources.list.d/nginx.list
deb http://nginx.org/packages/ubuntu xenial nginx
shikin@ts17201:~$ ll /etc/apt/sources.list.d/
total 24
drwxr-xr-x 1 root root 4096 Dec  4 18:50 ./
drwxr-xr-x 1 root root 4096 Sep 28 06:06 ../
-rw-r--r-- 1 root root  134 Sep 28 06:06 ansible-ubuntu-ansible-xenial.list
-rw-r--r-- 1 root root  134 Sep 28 06:06 ansible-ubuntu-ansible-xenial.list.save
-rw-r--r-- 1 root root   50 Dec  4 18:50 nginx.list
shikin@ts17201:~$ curl -fsSL https://nginx.org/keys/nginx_signing.key | sudo apt-key add -
OK
shikin@ts17201:~$ cat /etc/apt/sources.list.d/nginx.list
deb http://nginx.org/packages/ubuntu xenial nginx
shikin@ts17201:~$ sudo apt update
Get:1 http://nginx.org/packages/ubuntu xenial InRelease [4,354 B]
Get:2 http://nginx.org/packages/ubuntu xenial/nginx amd64 Packages [30.9 kB]                            
Hit:3 http://archive.ubuntu.com/ubuntu xenial InRelease                                                      
Hit:4 http://security.ubuntu.com/ubuntu xenial-security InRelease                                                        
Hit:5 http://archive.ubuntu.com/ubuntu xenial-updates InRelease        
Hit:6 http://ppa.launchpad.net/ansible/ansible/ubuntu xenial InRelease  
Hit:7 http://archive.ubuntu.com/ubuntu xenial-backports InRelease      
Hit:8 https://download.docker.com/linux/ubuntu xenial InRelease
Fetched 35.3 kB in 1s (18.3 kB/s)
Reading package lists... Done
Building dependency tree... Done
43 packages can be upgraded. Run 'apt list --upgradable' to see them.
shikin@ts17201:~$ sudo apt install nginx
Reading package lists... Done
Building dependency tree... Done
The following NEW packages will be installed:
  nginx
0 upgraded, 1 newly installed, 0 to remove and 43 not upgraded.
Need to get 845 kB of archives.
After this operation, 3,029 kB of additional disk space will be used.
Get:1 http://nginx.org/packages/ubuntu xenial/nginx amd64 nginx amd64 1.18.0-2~xenial [845 kB]
Fetched 845 kB in 0s (1,876 kB/s)
debconf: delaying package configuration, since apt-utils is not installed
Selecting previously unselected package nginx.
(Reading database ... 33749 files and directories currently installed.)
Preparing to unpack .../nginx_1.18.0-2~xenial_amd64.deb ...
----------------------------------------------------------------------

Thanks for using nginx!

Please find the official documentation for nginx here:
* http://nginx.org/en/docs/

Please subscribe to nginx-announce mailing list to get
the most important news about nginx:
* http://nginx.org/en/support.html

Commercial subscriptions for nginx are available on:
* http://nginx.com/products/

----------------------------------------------------------------------
Unpacking nginx (1.18.0-2~xenial) ...
Processing triggers for systemd (229-4ubuntu21.29) ...
Setting up nginx (1.18.0-2~xenial) ...
invoke-rc.d: could not determine current runlevel
invoke-rc.d: policy-rc.d denied execution of start.
Processing triggers for systemd (229-4ubuntu21.29) ...
shikin@ts17201:~$ ll /etc/nginx/
total 52
drwxr-xr-x 3 root root 4096 Dec  4 18:53 ./
drwxr-xr-x 1 root root 4096 Dec  4 18:53 ../
drwxr-xr-x 2 root root 4096 Dec  4 18:53 conf.d/
-rw-r--r-- 1 root root 1007 Apr 21  2020 fastcgi_params
-rw-r--r-- 1 root root 2837 Apr 21  2020 koi-utf
-rw-r--r-- 1 root root 2223 Apr 21  2020 koi-win
-rw-r--r-- 1 root root 5231 Apr 21  2020 mime.types
lrwxrwxrwx 1 root root   22 Oct 29 18:24 modules -> /usr/lib/nginx/modules/
-rw-r--r-- 1 root root  643 Oct 29 18:23 nginx.conf
-rw-r--r-- 1 root root  636 Apr 21  2020 scgi_params
-rw-r--r-- 1 root root  664 Apr 21  2020 uwsgi_params
-rw-r--r-- 1 root root 3610 Apr 21  2020 win-utf
shikin@ts17201:~$ sudo dpkg -P nginx
(Reading database ... 33786 files and directories currently installed.)
Removing nginx (1.18.0-2~xenial) ...
invoke-rc.d: could not determine current runlevel
invoke-rc.d: policy-rc.d denied execution of stop.
Purging configuration files for nginx (1.18.0-2~xenial) ...
shikin@ts17201:~$ ll /etc/nginx/
ls: cannot access '/etc/nginx/': No such file or directory
shikin@ts17201:~$ 
```
