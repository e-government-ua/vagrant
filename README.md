# Як розгорнути тестове середовище розробника

## В перший раз треба встановити деякі залежності.

### У Windows:
1. Завантажити та встановити Vagrant за посиланням  https://www.vagrantup.com/downloads.html;
2. Перевирити та оновити VirtualBox до останьої версіі за посиланням https://www.virtualbox.org/wiki/Downloads;
3. Встановити Ansible згідно документациії http://docs.ansible.com/intro_installation.html;
4. Встановити git;

### В Ubuntu:
`apt-get install ansible vagrant virtualbox`

## Склонувати репозиторій
`git clone git@github.com:e-government-ua/vagrant.git`

Перейти до робочої директорії та запустити :
```
cd vagrant 
./start.sh
```
Останнім повідомленням має бути подібна строка
`PLAY RECAP *********************************************************************
vagrant                    : ok=15   changed=2    unreachable=0    failed=0`

В улюбленному браузерi відкрити сторінку з проектом

http://192.168.10.10:8080/wf/

В директорії project можно вести розробку та деплоїти зміни в java аплікації за допомогою команди

ansible-playbook ./ansible/deploy.yml -i ./ansible/hosts

#Вирішення проблем

##Питання:  
Якщо після команди  ansible-playbook ./ansible/site.yml -i ./ansible/hosts виникає помилка:
TASK: [tomcat | Install Java 1.7] ********************************************* 
FATAL: no hosts matched or all hosts have already failed -- aborting

###Відповідь: 
спробуйте видалити ключі попереднього доступу до вагранту в файлі ~/.ssh/known_hosts




