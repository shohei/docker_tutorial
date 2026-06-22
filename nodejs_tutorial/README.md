# Docker Tutorial

A simple Node.js application to learn the basics of Docker.

## Prerequisites

- [Docker](https://www.docker.com/get-started) installed on your machine

## Project Structure

```
docker_tutorial/
├── Dockerfile
├── package.json
├── app.js
└── README.md
```

## Getting Started

### Build the Docker image

```bash
docker build -t docker-tutorial .
```

### Run the container

```bash
docker run -p 3000:3000 docker-tutorial
```

### Verify it works

Open your browser or use `curl`:

```bash
curl http://localhost:3000
```

Expected response:

```json
{
  "message": "Hello from Docker!",
  "timestamp": "2026-06-22T12:00:00.000Z"
}
```

### Health check

```bash
curl http://localhost:3000/health
```

Expected response:

```json
{
  "status": "ok"
}
```

## Useful Docker Commands

| Command | Description |
|---|---|
| `docker ps` | List running containers |
| `docker ps -a` | List all containers |
| `docker images` | List built images |
| `docker stop <container_id>` | Stop a running container |
| `docker rm <container_id>` | Remove a container |
| `docker rmi docker-tutorial` | Remove the image |

## Running Without Docker

If you want to run the app locally without Docker:

```bash
npm install
npm start
```
