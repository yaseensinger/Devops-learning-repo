# Scalability

Scalability means a system can handle increasing loads and adapt to demand.

There are two types:

* Vertical scaling
* Horizontal scaling (elasticity)

## Vertical Scaling

* Adding more compute/resources to an existing machine.
* Used for non-distributed systems.
* There is a limit to how large an instance can become.
* When you reach the limit, scale horizontally.

## Horizontal Scaling

* Adding more instances, machines, or nodes.
* Distributes the load across multiple machines.
* Eliminates a single point of failure.
* If one instance fails, others can take over.
* Instances can be started when needed.
* Easy to implement with AWS.

# High Availability

High availability means having a system that remains available even when parts of it fail.

* Run applications across two or more Availability Zones (AZs).
* Helps survive a data centre/AZ failure.

### Passive

* Primary database runs in one AZ.
* Backup is used when the primary fails.

### Active

* Workload is distributed across multiple AZs or instances.
* If one fails, traffic is routed to the others.
* Helps keep the system available.

# EC2

## Vertical Scaling

* Increase the size of the EC2 instance.
* Example: `t2.nano` → `u-12tb1.metal`
* There is always a limit.

## Horizontal Scaling

* **Auto Scaling Group:** Adds or removes instances based on demand.
* **Load Balancer:** Distributes traffic across instances.

# High Availability with EC2

* Auto Scaling across multiple AZs.
* Load balancing across multiple AZs.
