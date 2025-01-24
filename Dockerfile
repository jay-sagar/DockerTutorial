FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get upgrade -y
RUN apt-get install -y nodejs

# COPy source destination
# COPY package.json package.json
# COPY package-lock.json package-lock.json

# If you want to specify the directory
# COPY package.json /app/package.json
# COPY package-lock.json /app/package-lock.json

# Instead of mention dir every time
WORKDIR /app
COPY package.json package.json
COPY package-lock.json package-lock.json

# go to app dir and then install npm
RUN npm install

# COPY main.js main.js => instead of copying every single file
# COPY . .
COPY main.js main.js

ENTRYPOINT [ "node", "main.js" ]