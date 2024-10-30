# Base image
FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Copy dependencies
COPY package*.json ./
RUN npm install

# Copy app source
COPY . .

# Expose the port
EXPOSE 3000

# Run the application
CMD ["npm", "start"]

