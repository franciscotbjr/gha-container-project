FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL undefined
ENV MONGODB_DB_NAME undefined
ENV MONGODB_CLUSTER_ADDRESS undefined
ENV MONGODB_USERNAME undefined
ENV MONGODB_PASSWORD undefined

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]