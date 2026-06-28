# Docker Notes

## What are Containers?

Containers are lightweight, portable units that package an application with all of its dependencies, libraries, and configuration files.

### Features

* Lightweight
* Portable
* Includes all dependencies required to run the application
* Isolated from other containers
* Uses the Docker Engine to run containers

## Benefits of Containers

* **Isolation** – Containers are isolated from each other, so changes in one container do not affect another.
* **Consistent Environment** – Applications run the same way regardless of where they are deployed.
* **Efficient** – Containers share the host operating system's kernel, making them more lightweight than virtual machines.

---

# Docker Overview

Docker is a platform that simplifies creating, managing, and running containers.

## Docker Engine

The Docker Engine is responsible for creating and running containers based on instructions provided in a Dockerfile.

### Components

* **Docker Engine** – Creates and runs containers.
* **Docker Hub** – An online repository for storing and sharing Docker images.
* **Docker Compose** – A tool for defining and managing multi-container applications and how they interact.

---

# Images

A Docker image is a template used to create containers.

### Characteristics

* A snapshot of an application at a specific point in time.
* **Immutable** – Images cannot be changed once they are built, ensuring consistency.

---

# Containers

A container is a running instance of a Docker image.

### What Containers Do

* Run applications
* Can be started and stopped
* Can be modified while running (changes are not reflected in the original image)

---

# Dockerfile

A **Dockerfile** is a text file that contains instructions for building a Docker image.

It defines:

* The base image
* Dependencies to install
* Files to copy
* Commands to run
* The default command to start the application

---

# Uses of Docker

* Simplifies development
* Creates consistent development environments
* Makes applications portable across different systems
* Simplifies deployment
* Supports microservices architecture
* Makes scaling applications easier
