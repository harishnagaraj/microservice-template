FROM node:6.2.0

# Create app directory
RUN mkdir -p /usr/src
RUN mkdir -p /usr/src/first-microservice
WORKDIR /usr/src/first-microservice

# Install app dependencies
ADD package.json /usr/src/first-microservice
RUN npm install

# Bundle app source
COPY . /usr/src/first-microservice
CMD [ "npm", "start" ]
