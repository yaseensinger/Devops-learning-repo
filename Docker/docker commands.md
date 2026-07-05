## Docker Commands

### Images

| Command                          | Description                        |
| -------------------------------- | ---------------------------------- |
| `docker pull <image>`            | Download an image from Docker Hub. |
| `docker images`                  | List all local images.             |
| `docker build -t <name>:<tag> .` | Build an image from a Dockerfile.  |
| `docker rmi <image>`             | Remove an image.                   |

### Containers

| Command                                  | Description                              |
| ---------------------------------------- | ---------------------------------------- |
| `docker run <image>`                     | Create and start a container.            |
| `docker run -d <image>`                  | Run a container in the background.       |
| `docker run --name my-container <image>` | Give a container a custom name.          |
| `docker run -p 8080:80 <image>`          | Map a host port to a container port.     |
| `docker ps`                              | Show running containers.                 |
| `docker ps -a`                           | Show all containers (including stopped). |
| `docker stop <container>`                | Stop a container.                        |
| `docker start <container>`               | Start a stopped container.               |
| `docker restart <container>`             | Restart a container.                     |
| `docker rm <container>`                  | Remove a container.                      |
| `docker rm -f <container>`               | Force remove a running container.        |

### Access & Logs

| Command                            | Description                                  |
| ---------------------------------- | -------------------------------------------- |
| `docker logs <container>`          | View container logs.                         |
| `docker logs -f <container>`       | Follow logs in real time.                    |
| `docker exec -it <container> bash` | Open a Bash shell inside a container.        |
| `docker exec -it <container> sh`   | Open a shell if Bash isn't installed.        |
| `docker inspect <container>`       | View detailed information about a container. |
| `docker top <container>`           | Show running processes inside a container.   |

### Docker Compose

| Command                     | Description                       |
| --------------------------- | --------------------------------- |
| `docker compose up`         | Start services.                   |
| `docker compose up -d`      | Start services in the background. |
| `docker compose up --build` | Rebuild and start services.       |
| `docker compose down`       | Stop and remove services.         |

### Cleanup

| Command                  | Description                                    |
| ------------------------ | ---------------------------------------------- |
| `docker system prune`    | Remove unused containers, images and networks. |
| `docker system prune -a` | Remove all unused Docker resources.            |

### Other

| Command                            | Description                                  |
| ---------------------------------- | -------------------------------------------- |
| `docker --version`                 | Show Docker version.                         |
| `docker info`                      | Display Docker information.                  |
| `docker stats`                     | Show live container resource usage.          |
| `docker cp <source> <destination>` | Copy files between the host and a container. |
| `docker network ls`                | List Docker networks.                        |
| `docker volume ls`                 | List Docker volumes.                         |
