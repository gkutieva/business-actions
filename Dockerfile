FROM node

ENV NODE_ENV=production

WORKDIR /app

COPY . /app

RUN npm config set registry https://registry.npmjs.org

RUN npm install && npm run build

EXPOSE 3000

CMD [ "node", "server.js" ]
