FROM node:17.2.0-alpine3.12
WORKDIR /app
EXPOSE 3000
LABEL maintainer bahmanbs@hotmail.com

COPY package.json .
RUN npm install

COPY . .
RUN npm run build
CMD ["npm", "run", "start:prod"]
