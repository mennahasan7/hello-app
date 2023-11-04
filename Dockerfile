## it uses node js image alpine version from image registries.
FROM node:alpine
## it sets directory in the container to /app to store files and launch our app.
WORKDIR /app
## it copies the app to /app directory with dependencies.
COPY package.json /app
RUN npm install
COPY . /app
##  it exposes the port where our app is running that is port 8085.
EXPOSE 8085
# Specify the command to start the app
CMD ["npm", "start"]