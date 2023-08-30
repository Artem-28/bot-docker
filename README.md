# bot-docker
1. Создать новую сеть для докера docker network create your-network --subnet 172.24.24.0/24
2. Создать фаил .env и скопировать в него содержимое файла example.env
3. Создать папку "app-server" и проинициализировать в нее репозиторий https://github.com/Artem-28/bot-server.git
4. В папке "app-server" создать фаил .env и скопировать в него содержимое файла example.env
5. В папке "app-server" выполнить команду npm install
6. В корневой папке с проектом выполнить sudo docker-compose build после этого sudo docker-compose up


