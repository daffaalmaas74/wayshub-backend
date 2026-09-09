#!/bin/sh

npx sequelize-cli db:migrate

pm2-runtime start ecosystem.config.js
