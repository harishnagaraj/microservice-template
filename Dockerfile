FROM node:6.2.0

# Create app directory
RUN mkdir -p /usr/src
RUN mkdir -p /usr/src/<microservicename>
WORKDIR /usr/src/<microservicename>

# Install app dependencies
ADD package.json /usr/src/<microservicename>
RUN npm install

# Bundle app source
COPY . /usr/src/<microservicename>
CMD [ "npm", "start" ]
