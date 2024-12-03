# Use Node.js version 10
FROM node:10

# Set the working directory in the container
WORKDIR /usr/src/lafs

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install Angular CLI globally and project dependencies
RUN npm install -g @angular/cli@v6-lts
RUN npm install

# Copy all source code from your local directory to the container’s working directory
COPY . .

# Expose port 4200 for the frontend app
EXPOSE 4200

# Command to start the Angular server in development mode
CMD ng serve --host 0.0.0.0
