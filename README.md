# bot-docker
<p>Установить <b>docker</b> для ubuntu следуя инструкции из <a href="https://docs.docker.com/engine/install/ubuntu" target="_blank">оффициального сайта</a> или по <a href="https://timeweb.cloud/tutorials/docker/kak-ustanovit-docker-na-ubuntu-22-04" target="_blank">инструкции</a></p>
<p>Установить <b>docker compose</b> можно следуя <a href="https://docs.docker.com/compose/install/" target="_blank">инструкции</a></p>

### Installation
1. Создать новую сеть для docker, для этого выполните следующую команду:
```bash
 sudo docker network create app-bot-network --subnet 172.24.24.0/24
```

2. Создать фаил .env и скопировать в него содержимое файла example.env
3. Создать папку "app-server" и проинициализировать в нее [репозиторий](https://github.com/Artem-28/bot-app-server)
4. В папке "app-server" создать фаил .env и скопировать в него содержимое файла example.env
5. В папке "app-server" выполнить команду:
 ```bash
 npm install
```
6. Создать папку "app-client-constructor" и проинициализировать в нее [репозиторий](https://github.com/Artem-28/bot-client-constructor)
7. В папке "app-client-constructor" выполнить команду:
```bash
 npm install
```
8. Создать папку "app-client-chat" и проинициализировать в нее [репозиторий](https://github.com/Artem-28/bot-client-chat)
9. В папке "app-client-chat" выполнить команду:
```bash
 npm install
```
10. В корневой папке с проектом выполнить следующие команды:
```bash
 sudo docker compose build
```
```bash
 sudo docker compose up
```


