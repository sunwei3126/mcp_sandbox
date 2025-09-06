# MCP Sandbox Docker Image

This guide explains how to build the Docker image for MCP Sandbox and push it to Docker Hub.

## Prerequisites
- Docker installed on your system
- Docker Hub account

## Build the Docker Image

Open a terminal in the project directory and run:

```sh
# Build the Docker image with a custom tag
 docker build  -t sunwei3126/mcpsandbox:latest .
```

## Test the Image Locally

```sh
# Run the image
 docker run --rm -it sunwei3126/mcpsandbox:latest
```

## Login to Docker Hub

```sh
 docker login
```

Enter your Docker Hub credentials when prompted.

## Push the Image to Docker Hub

```sh
 docker push sunwei3126/mcpsandbox:latest
```

## Notes
- Make sure your Dockerfile is correct and all dependencies are installed.
- You can change the tag (`latest`) as needed for versioning.

---
For more details, see the official Docker documentation: https://docs.docker.com/get-started/
