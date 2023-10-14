# this the base image to my image 
FROM node:lts-alpine

# setting the working directory for the container 
WORKDIR /app


# copy the package.json file from the current directory to the app directory of the image
COPY package.json ./

# this line copy all the source code from the current directory
#  to the /app directory in the container
COPY . ./

# this line install all the dependencies for the node app and omit the devdependencies
RUN npm install --only=production

# this is the command which will run if the container starts
CMD [ "node","server.js" ]

# this expose the port to interact with the container through it
EXPOSE 8000
