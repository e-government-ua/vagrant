IF EXIST "project" (
    CD project
    git pull
    CD ..
) ELSE (
    git clone https://github.com/e-government-ua/i.git project --branch=test
)

vagrant up --provision
