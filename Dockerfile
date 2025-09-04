# Use official Node.js image
FROM node:18

WORKDIR /usr/src/app

# Force npm to use registry
RUN npm config set registry https://registry.npmjs.org/

COPY package*.json ./
RUN npm install --production

COPY . .
EXPOSE 3000
CMD ["node", "server.js"]
