FROM node:20.18.0
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY .env ./
COPY . . 
EXPOSE 5001
CMD ["node","server.js"]
