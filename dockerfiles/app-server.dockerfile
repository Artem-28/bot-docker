# Arguments defined in docker-compose.yml
ARG DOCKER_NODE_VERSION
# Используем официальный образ Node.js в качестве базового образа
FROM node:${DOCKER_NODE_VERSION}

# Устанавливаем зависимости для компиляции bcrypt
RUN apt-get update
RUN apt-get -y install build-essential python3
# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

COPY package*.json ./

RUN npm install
# Копируем все файлы проекта в текущую рабочую директорию внутри контейнера
COPY . /app

# Определяем команду, которая будет запускаться при старте контейнера
CMD [ "npm", "run", "start:dev" ]
