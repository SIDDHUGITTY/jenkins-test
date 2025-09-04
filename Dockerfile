# Use official Node.js base image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# (Optional) Force npm to use registry explicitly (helps behind firewalls/DNS issues)
RUN npm config set registry https://registry.npmjs.org/

# Copy package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install 

# Copy the rest of the app
COPY . .

# Expose app port
EXPOSE 3000

# Start app
CMD ["node", "server.js"]
