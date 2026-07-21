# AWS EC2 Notes

## Amazon EC2 (Elastic Compute Cloud)

- **EC2 = Infrastructure as a Service (IaaS)**
- Rent virtual machines (VMs) in the cloud.
- One of the most popular AWS services.
- Easily **scale up** or **scale down** based on demand.

---

# Related EC2 Services

## Elastic Block Store (EBS)

- Persistent network-attached storage for EC2 instances.
- Data remains even if the instance is stopped.

## Elastic Load Balancer (ELB)

- Distributes incoming traffic across multiple EC2 instances.
- Improves availability and fault tolerance.
- Makes it easy to handle large numbers of requests.

## Auto Scaling Group (ASG)

- Automatically adds or removes EC2 instances based on demand.
- Helps maintain performance.
- Reduces costs by scaling down when traffic decreases.

---

# EC2 Sizing and Configuration

When launching an EC2 instance, consider:

## Operating System (OS)

Choose based on your application requirements.

Examples:
- Amazon Linux
- Ubuntu
- Windows Server
- Red Hat Enterprise Linux (RHEL)

## Compute Power

- Number of CPUs (vCPUs)
- CPU performance
- Depends on application workload.

## Memory (RAM)

- More memory allows handling larger datasets.
- Important for databases and memory-intensive applications.

## Storage

### Network-attached storage

- **EBS (Elastic Block Store)**
- **EFS (Elastic File System)**

### Instance Storage

- Physical storage attached directly to the EC2 host.
- Very fast but temporary (ephemeral).

## Networking

- Network bandwidth/speed
- Public IP address (optional)
- Private IP address

## Firewalls

Controlled using **Security Groups**.

- Control inbound traffic.
- Control outbound traffic.
- Act as virtual firewalls.

## Bootstrap Script (User Data)

A script that automatically runs when the instance launches.

Common uses:
- Install software
- Install updates
- Configure applications
- Start services

---

# EC2 User Data

EC2 User Data is used to automate setup when an instance starts.

Features:
- Runs automatically when the instance launches.
- Typically runs **once** on first boot.
- Executes with **root (administrator)** privileges.
- Saves time by automating configuration.

Common tasks:
- Install software
- Install updates
- Configure the system
- Download application code
- Start services

---

# EC2 Instance Types

## 1. General Purpose

Balanced compute, memory, and networking.

Use cases:
- Web servers
- Small databases
- Development environments

---

## 2. Compute Optimized

High CPU performance.

Use cases:
- Batch processing
- Gaming servers
- Scientific computing
- High-performance web servers

---

## 3. Memory Optimized

Large amounts of RAM.

Use cases:
- Databases
- Real-time analytics
- Big data processing
- In-memory caching

---

## 4. Storage Optimized

Fast, high-performance storage.

Use cases:
- NoSQL databases
- Data warehousing
- Log processing
- Applications requiring fast disk access

---

## 5. Accelerated Computing

Uses hardware accelerators such as GPUs or FPGAs.

Use cases:
- Machine Learning
- AI
- Graphics rendering
- Video processing

---

## 6. HPC Optimized (High Performance Computing)

Designed for compute-intensive workloads.

Use cases:
- Weather simulations
- Scientific research
- Financial modeling
- Engineering simulations

---

# EC2 Purchasing Options

AWS offers several ways to pay for EC2 instances:

## On-Demand

- Pay by the second/hour.
- No long-term commitment.
- Best for short-term or unpredictable workloads.

## Reserved Instances (RI)

- Commit to 1 or 3 years.
- Lower cost than On-Demand.
- Best for predictable workloads.

## Savings Plans

- Flexible pricing model.
- Commit to a consistent amount of usage.
- Lower prices than On-Demand.

## Spot Instances

- Use unused AWS capacity.
- Up to **90% cheaper** than On-Demand.
- Can be interrupted at any time.
- Best for fault-tolerant workloads.

## Dedicated Hosts

- Physical server dedicated to a single customer.
- Useful for compliance and licensing requirements.
