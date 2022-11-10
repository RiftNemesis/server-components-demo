FROM node:14.20.0

WORKDIR /opt/notes-app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

ENTRYPOINT [ "npm", "run" ]
CMD [ "start" ]
