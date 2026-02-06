# Arguments defined in docker-compose.yml
ARG DOCKER_NODE_VERSION=24.13.0
# Используем официальный образ Node.js в качестве базового образа
FROM node:${DOCKER_NODE_VERSION}

WORKDIR /app

COPY package*.json ./

RUN npm install

CMD ["npm", "run", "dev"]