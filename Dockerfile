FROM node:lts-alpine

WORKDIR /app

COPY package.json ./
RUN npm install

COPY . .

RUN mkdir -p build && echo "console.log('Hola desde Docker')" > build/index.js

EXPOSE 3000

CMD ["node", "build/index.js"]
