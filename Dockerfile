FROM node:20.18.0-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
COPY yarn.lock ./

RUN yarn install

# Bundle app source
COPY . .

# build the app
RUN yarn build

EXPOSE 1337

CMD [ "yarn", "start" ]
