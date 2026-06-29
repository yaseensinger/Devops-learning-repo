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

The Docker Engine is responsible for creating and running containers based on the instructions in a Dockerfile.

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
* Can be modified while running (changes do not affect the original image)

---

# Dockerfile

A **Dockerfile** is a text file that contains instructions for building a Docker image.

It defines:

* The base image
* Dependencies to install
* Files to copy
* Commands to run
* The default command used to start the application

---

# Uses of Docker

* Simplifies development
* Creates consistent development environments
* Makes applications portable across different systems
* Simplifies deployment
* Supports microservices architecture
* Makes scaling applications easier

---

# Why Docker is Used in Modern Development

* **Simplified Deployment** – Applications run consistently across different environments.
* **Improved Efficiency** – Containers use fewer system resources and start much faster than virtual machines because they share the host operating system's kernel.
* **Enhanced Collaboration** – Developers can easily share applications and environments with their teams.

---

# Virtual Machines (VMs)

A **Virtual Machine (VM)** is a complete virtual computer that runs its own operating system on top of a physical machine.

### VM Architecture

```text
Infrastructure (Hardware)
        │
Host Operating System
        │
Hypervisor
        │
Guest Operating System
        │
Libraries / Binaries
        │
Application
```

### Characteristics

* Each VM has its own operating system.
* Provides strong isolation between environments.
* Uses more memory, CPU, and storage.
* Slower to start than containers.

---

# Containers

Containers virtualise the operating system rather than the hardware.

### Container Architecture

```text
Infrastructure (Hardware)
        │
Host Operating System
        │
Docker Engine
        │
Containers
├── Application
├── Libraries / Binaries
└── Dependencies
```

### Characteristics

* Lightweight
* Fast startup time
* Share the host operating system's kernel
* More resource-efficient than virtual machines

---

# Containers vs Virtual Machines

| Containers               | Virtual Machines                |
| ------------------------ | ------------------------------- |
| Faster startup           | Slower startup                  |
| Lightweight              | Heavier                         |
| Share the host OS kernel | Each VM has its own guest OS    |
| More resource efficient  | Uses more CPU, RAM, and storage |
| Highly portable          | Less portable                   |
| Easier to deploy         | More complex to deploy          |
| Less isolated            | Stronger isolation and security |

---

# Key Terms

| Term               | Description                                                     |
| ------------------ | --------------------------------------------------------------- |
| **Container**      | A running instance of a Docker image.                           |
| **Image**          | An immutable template used to create containers.                |
| **Docker Engine**  | Software responsible for creating and running containers.       |
| **Docker Hub**     | A cloud repository for storing and sharing Docker images.       |
| **Docker Compose** | A tool for defining and running multi-container applications.   |
| **Dockerfile**     | A file containing the instructions for building a Docker image. |
