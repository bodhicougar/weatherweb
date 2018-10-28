# Test web-app to use with Pluralsight courses and Docker Deep Dive book
# Linux x64
From alpine

LABEL maintainer="contact@bbmediadesign.net"

# Install node and NPM
RUN apk add --update nodejs nodejs-npm

# Copy app to src
COPY . /src

WORKDIR /src

# Install dependencies

RUN npm install

EXPOSE 8080

ENTRYPOINT ["node", "./app.js"]