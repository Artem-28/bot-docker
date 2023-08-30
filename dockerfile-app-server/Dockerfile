# Arguments defined in docker-compose.yml
ARG DOCKER_NODE_VERSION
# Используем официальный образ Node.js в качестве базового образа
FROM node:${DOCKER_NODE_VERSION}-alpine

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файл package.json и package-lock.json внутрь контейнера
COPY package*.json ./

# Устанавливаем зависимости приложения
RUN npm install

# Копируем все файлы проекта в текущую рабочую директорию внутри контейнера
COPY ../app-server-1 /app

# Определяем команду, которая будет запускаться при старте контейнера
CMD [ "npm", "run", "start:dev" ]