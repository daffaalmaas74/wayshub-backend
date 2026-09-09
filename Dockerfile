FROM node:14-alpine

WORKDIR /app

COPY . .

RUN npm install

RUN npm install -g pm2 sequelize-cli

EXPOSE 5000

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
