# Use the official Node.js image as the base image
FROM node:20

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock) to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 3000 (or the port your app uses)
EXPOSE 5173

# Command to run the application
CMD ["npm", "run","dev"]
