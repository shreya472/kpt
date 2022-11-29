FROM node:boron

# Create app directory
WORKDIR /usr/src/app

# Install App Dependencies
COPY package.json .
RUN npm install

# Bundle App Source
COPY . .

EXPOSE 8080

CMD ["npm", "start"]