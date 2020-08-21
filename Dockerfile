FROM node:latest

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
RUN npm install -D typescript
RUN npm install -D tslint

COPY . .

EXPOSE 3000
CMD [ "npm", "start" ]
