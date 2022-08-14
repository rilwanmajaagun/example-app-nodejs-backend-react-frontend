FROM node:12-alpine

WORKDIR /app

COPY package*json ./
COPY . /app 

RUN npm install
RUN npm build

EXPOSE ${PORT}

CMD npm run start