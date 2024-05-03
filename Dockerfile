FROM node:17-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY public/ . 
COPY src/ .
EXPOSE 5000
CMD ["npm", "start"]
