# Arguments defined in docker-compose.yml
ARG DOCKER_NODE_VERSION
# Используем официальный образ Node.js в качестве базового образа
FROM node:${DOCKER_NODE_VERSION}

WORKDIR /app

COPY package*.json ./

RUN npm install

# Копируем все файлы проекта в текущую рабочую директорию внутри контейнера
COPY . /app

CMD ["npm", "run", "dev"]