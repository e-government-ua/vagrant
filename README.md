[![Build Status](https://travis-ci.org/e-government-ua/vagrant.svg?branch=master)](https://travis-ci.org/e-government-ua/vagrant)
# Як розгорнути тестове середовище розробника

## Отримати
```
git clone git@github.com:e-government-ua/vagrant.git
```
## В перший раз треба встановити деякі залежності.
### У Windows:
```
cd vagrant
prestart.bat
```
### В Ubuntu:
```
cd vagrant
./prestart.sh
```
### Інша система
Для інших систем Linux або Unix спробуйте встановити пакети: ansible, vagrant, та virtualbox за допомогою інструментів вашої системи.
## Запустити
### В Linux
```
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
В улюбленному браузерi відкрити сторінку з проектом http://192.168.10.10:8080/wf-central/ або http://192.168.10.10:8080/wf-region/.
## Тестування ваших змін до коду
В директорії project можно вести розробку та деплоїти зміни в java аплікації за допомогою команди:
```
vagrant up --provision
```
