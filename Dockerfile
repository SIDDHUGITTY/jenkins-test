# 1. Use official Node.js image
FROM node:18

# 2. Set working directory inside container
WORKDIR /usr/src/app

# 3. Copy package files
COPY package*.json ./

# 4. Install dependencies
RUN npm install 

# 5. Copy all source code
COPY . .

# 6. Expose app port
EXPOSE 3000

# 7. Start the app
CMD ["node", "server.js"]

