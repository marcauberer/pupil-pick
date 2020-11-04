# Create image from node base image
FROM node:12-alpine

# Create and cd into /usr/src/app
WORKDIR /usr/src/app

# Copy repo (except of the files listed in .dockerignore) to the workdir
COPY . ./

# Install dependencies
RUN npm i

# Expose port 8080 to the web
EXPOSE 8080

# Specify command, which will get executed at container startup
CMD ["node", "./dist/server.js"]