# Use the official Node.js image as a base image
FROM node:16-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the application code to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run your app
CMD [ "node", "index.js" ]