FROM node:14-alpine

RUN mkdir -p /app/tasks; touch /app/tasks/tasks.txt

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 8000

CMD [ "node", "tasks-app.js" ]