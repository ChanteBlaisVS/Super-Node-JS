FROM openjdk:latest

RUN apt-get install -y curl \
  && curl -sL https://deb.nodesource.com/setup_9.x | bash - \
  && apt-get install -y nodejs \
  && curl -L https://www.npmjs.com/install.sh | sh \
RUN npm install -g grunt grunt-cli

#Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

# Bundle app source
COPY . .

EXPOSE 8080
CMD ["npm", "start"]
