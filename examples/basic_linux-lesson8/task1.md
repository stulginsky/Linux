## Lesson 8

### Задание 1. подключить репозиторий Docker.

```bash
ing@shikin-test:~$ sudo apt-get remove docker docker-engine docker.io containerd runc
[sudo] password for ing: 
Reading package lists... Done
Building dependency tree       
Reading state information... Done
E: Unable to locate package docker-engine
ing@shikin-test:~$ sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
Reading package lists... Done
Building dependency tree       
Reading state information... Done
ca-certificates is already the newest version (20201027ubuntu0.20.04.1).
ca-certificates set to manually installed.
curl is already the newest version (7.68.0-1ubuntu2.2).
curl set to manually installed.
software-properties-common is already the newest version (0.98.9.3).
software-properties-common set to manually installed.
The following NEW packages will be installed:
  apt-transport-https gnupg-agent
0 upgraded, 2 newly installed, 0 to remove and 0 not upgraded.
Need to get 6944 B of archives.
After this operation, 206 kB of additional disk space will be used.
Do you want to continue? [Y/n]
Get:1 http://ru.archive.ubuntu.com/ubuntu focal-updates/universe amd64 apt-transport-https all 2.0.2ubuntu0.1 [1708 B]
Get:2 http://ru.archive.ubuntu.com/ubuntu focal/universe amd64 gnupg-agent all 2.2.19-3ubuntu2 [5236 B]
Fetched 6944 B in 12s (590 B/s)  
Selecting previously unselected package apt-transport-https.
(Reading database ... 77228 files and directories currently installed.)
Preparing to unpack .../apt-transport-https_2.0.2ubuntu0.1_all.deb ...
Unpacking apt-transport-https (2.0.2ubuntu0.1) ...
Selecting previously unselected package gnupg-agent.
Preparing to unpack .../gnupg-agent_2.2.19-3ubuntu2_all.deb ...
Unpacking gnupg-agent (2.2.19-3ubuntu2) ...
Setting up apt-transport-https (2.0.2ubuntu0.1) ...
Setting up gnupg-agent (2.2.19-3ubuntu2) ...
ing@shikin-test:~$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
OK
ing@shikin-test:~$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
Hit:1 http://ru.archive.ubuntu.com/ubuntu focal InRelease
Get:2 http://ru.archive.ubuntu.com/ubuntu focal-updates InRelease [114 kB]
Get:3 http://ru.archive.ubuntu.com/ubuntu focal-backports InRelease [101 kB]       
Get:4 http://ru.archive.ubuntu.com/ubuntu focal-security InRelease [109 kB]        
Get:5 https://download.docker.com/linux/ubuntu focal InRelease [36.2 kB]
Get:6 https://download.docker.com/linux/ubuntu focal/stable amd64 Packages [4226 B]
Fetched 364 kB in 1s (550 kB/s)
Reading package lists... Done
ing@shikin-test:~$ grep docker /etc/apt/sources.list
deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable
# deb-src [arch=amd64] https://download.docker.com/linux/ubuntu focal stable
ing@shikin-test:~$ sudo apt update
Hit:1 http://ru.archive.ubuntu.com/ubuntu focal InRelease
Hit:2 http://ru.archive.ubuntu.com/ubuntu focal-updates InRelease
Hit:3 http://ru.archive.ubuntu.com/ubuntu focal-backports InRelease      
Hit:4 http://ru.archive.ubuntu.com/ubuntu focal-security InRelease       
Hit:5 https://download.docker.com/linux/ubuntu focal InRelease          
Reading package lists... Done
Building dependency tree       
Reading state information... Done
All packages are up to date.
ing@shikin-test:~$ sudo apt install docker-ce docker-ce-cli containerd.io    
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following additional packages will be installed:
  aufs-tools cgroupfs-mount pigz
The following NEW packages will be installed:
  aufs-tools cgroupfs-mount containerd.io docker-ce docker-ce-cli pigz
0 upgraded, 6 newly installed, 0 to remove and 0 not upgraded.
Need to get 91.5 MB of archives.
After this operation, 413 MB of additional disk space will be used.
Do you want to continue? [Y/n] 
Get:1 http://ru.archive.ubuntu.com/ubuntu focal/universe amd64 pigz amd64 2.4-1 [57.4 kB]
Get:2 http://ru.archive.ubuntu.com/ubuntu focal/universe amd64 aufs-tools amd64 1:4.14+20190211-1ubuntu1 [104 kB]
Get:3 http://ru.archive.ubuntu.com/ubuntu focal/universe amd64 cgroupfs-mount all 1.4 [6320 B]
Get:4 https://download.docker.com/linux/ubuntu focal/stable amd64 containerd.io amd64 1.3.9-1 [24.4 MB]
Get:5 https://download.docker.com/linux/ubuntu focal/stable amd64 docker-ce-cli amd64 5:19.03.14~3-0~ubuntu-focal [44.2 MB]
Get:6 https://download.docker.com/linux/ubuntu focal/stable amd64 docker-ce amd64 5:19.03.14~3-0~ubuntu-focal [22.7 MB]                                                    
Fetched 91.5 MB in 11s (8057 kB/s)                                                                                                                                         
Selecting previously unselected package pigz.
(Reading database ... 77236 files and directories currently installed.)
Preparing to unpack .../0-pigz_2.4-1_amd64.deb ...
Unpacking pigz (2.4-1) ...
Selecting previously unselected package aufs-tools.
Preparing to unpack .../1-aufs-tools_1%3a4.14+20190211-1ubuntu1_amd64.deb ...
Unpacking aufs-tools (1:4.14+20190211-1ubuntu1) ...
Selecting previously unselected package cgroupfs-mount.
Preparing to unpack .../2-cgroupfs-mount_1.4_all.deb ...
Unpacking cgroupfs-mount (1.4) ...
Selecting previously unselected package containerd.io.
Preparing to unpack .../3-containerd.io_1.3.9-1_amd64.deb ...
Unpacking containerd.io (1.3.9-1) ...
Selecting previously unselected package docker-ce-cli.
Preparing to unpack .../4-docker-ce-cli_5%3a19.03.14~3-0~ubuntu-focal_amd64.deb ...
Unpacking docker-ce-cli (5:19.03.14~3-0~ubuntu-focal) ...
Selecting previously unselected package docker-ce.
Preparing to unpack .../5-docker-ce_5%3a19.03.14~3-0~ubuntu-focal_amd64.deb ...
Unpacking docker-ce (5:19.03.14~3-0~ubuntu-focal) ...
Setting up aufs-tools (1:4.14+20190211-1ubuntu1) ...
Setting up containerd.io (1.3.9-1) ...
Created symlink /etc/systemd/system/multi-user.target.wants/containerd.service → /lib/systemd/system/containerd.service.
Setting up docker-ce-cli (5:19.03.14~3-0~ubuntu-focal) ...
Setting up pigz (2.4-1) ...
Setting up cgroupfs-mount (1.4) ...
Setting up docker-ce (5:19.03.14~3-0~ubuntu-focal) ...
Created symlink /etc/systemd/system/multi-user.target.wants/docker.service → /lib/systemd/system/docker.service.
Created symlink /etc/systemd/system/sockets.target.wants/docker.socket → /lib/systemd/system/docker.socket.
Processing triggers for systemd (245.4-4ubuntu3.3) ...
Processing triggers for man-db (2.9.1-1) ...
Processing triggers for libc-bin (2.31-0ubuntu9.1) ...
ing@shikin-test:~$ sudo docker run hello-world
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
0e03bdcc26d7: Pull complete 
Digest: sha256:e7c70bb24b462baa86c102610182e3efcb12a04854e8c582838d92970a09f323
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/

ing@shikin-test:~$ sudo usermod -aG docker ing
ing@shikin-test:~$ grep docker /etc/group
docker:x:998:ing
ing@shikin-test:~$ sudo reboot
ing@shikin-test:~$ Connection to 192.168.1.38 closed by remote host.
Connection to 192.168.1.38 closed.
ing@shikin:~$ 
```
