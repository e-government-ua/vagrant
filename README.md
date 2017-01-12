# Як розгорнути тестове середовище розробника

## В перший раз треба встановити деякі залежності.

### У Windows:
1. Завантажити та встановити [Vagrant](https://www.vagrantup.com/downloads.html);
2. Перевирити та оновити [VirtualBox](https://www.virtualbox.org/wiki/Downloads) до останьої версіі;
3. Встановити Ansible згідно [документациії](http://docs.ansible.com/intro_installation.html);
4. Встановити [Git](https://git-scm.com/download/win);

### В Ubuntu:
```
apt-get install ansible vagrant virtualbox
```

Якщо у вас інша системах Linux/Unix, то спробуйте встановити пакети: ansible, vagrant, virtualbox за допомогою інструментів вашого дистрибутуву.

## Отримати
```
git clone git@github.com:e-government-ua/vagrant.git
```
## Запустити
```
cd vagrant 
./start.sh
```
##Перевірити
Останнім повідомленням має бути подібна строка:
```
PLAY RECAP *********************************************************************
vagrant                    : ok=15   changed=2    unreachable=0    failed=0
```
В улюбленному браузерi відкрити сторінку з проектом http://192.168.10.10:8080/wf/.

## Тестування ваших змін до коду
В директорії project можно вести розробку та деплоїти зміни в java аплікації за допомогою команди:
```
vagrant up --provision
```