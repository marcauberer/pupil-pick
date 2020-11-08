# Create image from node base image
FROM arm32v7/node:12-alpine

# Create and cd into /usr/src/app
WORKDIR /usr/src/app

# Copy repo (except of the files listed in .dockerignore) to the workdir
COPY . .

# Install dependencies & build project
RUN npm i
RUN npm run build

# Expose port 8080 to the web
EXPOSE 8080

# Specify command, which will get executed at container startup
CMD ["npm", "start"]
