# 1. Use an official Node.js base image
FROM node:18

# 2. Set working directory inside container
WORKDIR /usr/src/app

# 3. Copy package.json and package-lock.json
COPY package*.json ./

# 4. Install dependencies
RUN npm install --production

# 5. Copy application source code
COPY . .

# 6. Expose the app port
EXPOSE 3000

# 7. Start the app
CMD ["node", "server.js"]
