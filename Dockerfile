FROM node:20

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

RUN mkdir -p /data

EXPOSE 5001

USER node

CMD ["node", "node_modules/node-red/red.js", "--userDir", "/data", "--port", "5001"]
