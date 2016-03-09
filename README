# Як розгорнути тестове середовище розробника

1. Завантажити та встановити Vagrant за посиланням  https://www.vagrantup.com/downloads.html;
2. Перевирити та оновити VirtualBox до останьої версіі за посиланням https://www.virtualbox.org/wiki/Downloads;
3. Встановити Ansible згідно документациії http://docs.ansible.com/intro_installation.html;
4. Встановити git;
5. Розгорнути проект.

Перейти до робочої директорії:
cd ./vagrant

./start.sh

або в ручному режимі:

Розгорнути віртуальну машину за допомогою Vagrant:
vagrant up

Запустити автомтичну систему для деплоймента: 
ansible-playbook ./ansible/site.yml -i ./ansible/hosts

останнім повідомленням має бути подібна строка
PLAY RECAP ******************************************************************** 
e-gov                      : ok=28   changed=24   unreachable=0    failed=0 

В улюбленному браузерi відкрити сторінку з проектом

http://192.168.10.10:8080/wf-dniprorada/

В директорії project  можно вести розробку та деплоїти зміни в java аплікації за допомогою команди

ansible-playbook ./ansible/deploy.yml -i ./ansible/hosts

#Вирішення проблем

##Питання:  
Якщо після команди  ansible-playbook ./ansible/site.yml -i ./ansible/hosts виникає помилка:
TASK: [tomcat | Install Java 1.7] ********************************************* 
FATAL: no hosts matched or all hosts have already failed -- aborting

###Відповідь: 
спробуйте видалити ключі попереднього доступу до вагранту в файлі ~/.ssh/known_hosts




