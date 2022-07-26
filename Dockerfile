FROM node:18

WORKDIR /app

COPY ./package.json /app

# install npm dependencies
RUN npm install

# copy other project files
COPY ./dist .

EXPOSE 3005

# build the folder
CMD [ "node","main.js"]