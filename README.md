[![Build Status](https://travis-ci.org/e-government-ua/vagrant.svg?branch=master)](https://travis-ci.org/e-government-ua/vagrant)
# Як розгорнути тестове середовище розробника

## В перший раз треба встановити деякі залежності.

### У Windows:
Запустити скрипт `prestart.bat` від імені адміністратора

### В Ubuntu:
Спочатку додати PPA з Ansible:
```
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
```
Потім встановити необхідні пакети
```
sudo apt-get install ansible vagrant virtualbox
```
### Інша система
Для інших систем Linux або Unix спробуйте встановити пакети: ansible, vagrant, та virtualbox за допомогою інструментів вашої системи.

## Отримати
```
git clone git@github.com:e-government-ua/vagrant.git
```

## Запустити
### В Linux
```
cd vagrant 
./start.sh
```

### У Windows
```
start.bat
```

## Перевірити
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
