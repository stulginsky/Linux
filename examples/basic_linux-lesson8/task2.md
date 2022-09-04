## Lesson 8

### Задание 2. Запустить контейнер с Ubuntu.

```bash
ing@shikin-test:~$ egrep 'VERSION\b' /etc/os-release 
VERSION="20.04.1 LTS (Focal Fossa)"
ing@shikin-test:~$ docker run -ti ubuntu:trusty
Unable to find image 'ubuntu:trusty' locally
trusty: Pulling from library/ubuntu
2e6e20c8e2e6: Pull complete 
95201152d9ff: Pull complete 
5f63a3b65493: Pull complete 
Digest: sha256:63fce984528cec8714c365919882f8fb64c8a3edf23fdfa0b218a2756125456f
Status: Downloaded newer image for ubuntu:trusty
root@61d45469b563:/# egrep 'VERSION\b' /etc/os-release 
VERSION="14.04.6 LTS, Trusty Tahr"
root@61d45469b563:/# 
```
