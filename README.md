# Containerize a node app using docker

Simple Node.js app with Docker:

## Introduction

This repository contains a simple Node.js app with a Dockerfile. The app has a single API endpoint that returns the URL of the request. The Dockerfile can be used to build a Docker image of the app, which can then be deployed to a Docker container.

## Prerequisites

-   Docker
-   Node.js

## Getting started

1. Clone this repository to your local machine.
2. Install the app's dependencies:

```
npm install
```

3. Build the Docker image:

```
docker build -t my-node-app .
```

4. Run the app in a Docker container:

```
docker run -p 5000:8000 my-node-app
```

The app will be accessible at `http://localhost:5000/`.

## Testing the app

You can test the app by sending a GET request to the `/` endpoint. The response should be the URL of the request.

```Json
{
    "message": "Welcome to our Containerized node app",
    "url": "/"
}
```
## Conclusion

This repository provides a simple example of how to use Docker to deploy a Node.js app. You can use this example as a starting point to build your own Dockerized Node.js apps.
