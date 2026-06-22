# Debian Container Tutorial

A quick guide to running and managing a Debian container with Docker.

## Prerequisites

- [Docker](https://www.docker.com/get-started) installed on your machine

## Usage

### 1. Create and start a new container

```bash
docker run -it --name mydebian debian:bookworm-slim /bin/bash
```

- `run` — Creates and starts a new container
- `-it` — Opens an interactive terminal session
- `--name mydebian` — Names the container `mydebian`
- `debian:bookworm-slim` — Uses the lightweight Debian Bookworm image
- `/bin/bash` — Starts a Bash shell inside the container

After running this command, you will be inside the container's shell. Type `exit` to leave.

### 2. Start the stopped container

```bash
docker start mydebian
```

Restarts the existing container in the background without opening a shell.

### 3. Attach to the running container

```bash
docker exec -it mydebian /bin/bash
```

Opens a new interactive Bash session in the already running container. Type `exit` to leave (the container keeps running).

### 4. Stop the container

```bash
docker stop mydebian
```

Gracefully stops the running container.

## Cleanup

To remove the container after stopping it:

```bash
docker rm mydebian
```

To remove the downloaded Debian image:

```bash
docker rmi debian:bookworm-slim
```
