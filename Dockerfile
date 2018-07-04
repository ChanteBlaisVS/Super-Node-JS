FROM node:carbon

# Install OpenJDK-8 && set up JAVA home
RUN apt-get update && \
    apt-get install -y openjdk-8-jdk && \
    apt-get install -y ant && \
    apt-get clean;
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME

#Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install 

# Bundle app source
COPY . .

EXPOSE 8080
CMD ["npm", "start"]
