# Stage 1: Build the application
FROM node:16-alpine as build

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

FROM node:16-alpine

WORKDIR /app

COPY --from=build /app .

EXPOSE 3000

CMD ["node", "index.js"]
