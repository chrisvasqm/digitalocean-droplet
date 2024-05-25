# Docker + Node + TypeScript Demo

Demostration project to show how to dockerize a Node.js API using TypeScript.

## Requirements 🛑

1. Node
2. Code editor/IDE
3. pnpm
4. Docker

## Getting started 👨🏻‍💻

### Running the server locally:

- Install all the dependencies from this project:

```bash
pnpm install
```

- Run the server locally

```bash
pnpm dev
```

If everything is working correclty, you should see the following message in the console:

```
Server listening on http://localhost:3000
```

## Running the server from a Docker container 🐳

- Generate an image of the current code

```bash
docker build -t <image-name> .
```

- Run the image in a container

```bash
docker run -p 3030:3030 <image-name>
```

If you see the following message:

```bash
Server listening on http://localhost:3030
```

This means that you can make HTTP Requests to the dockerized app 🎉