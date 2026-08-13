# Load Balancing

Load balancing is a way to distribute traffic across different servers.

# ELB

**Elastic Load Balancer (ELB)** sits between users and instances.

When traffic comes in, the ELB forwards requests to healthy targets.

* Keeps applications responsive and available.
* Performs health checks on targets.
* If a target becomes unhealthy, the ELB stops sending traffic to it.
* Traffic is redirected to healthy targets.
* Acts as a reverse proxy.
* Provides a single point of access through DNS.

## Why Use a Load Balancer?

* Distributes load across instances.
* Handles failures automatically.
* Performs regular health checks.
* Can handle SSL/HTTPS encryption.
* Supports sticky sessions.
* Provides high availability across Availability Zones.
* Can separate public and private traffic.

## Why Use an ELB?

ELB is a **managed load balancer**, meaning AWS manages the underlying infrastructure.

### AWS Managed ELB

* AWS handles maintenance and updates.
* Less configuration and management.
* Integrates with other AWS services.

### DIY Load Balancer

Requires more work for:

* Maintenance.
* Monitoring.
* Scaling.
* Management.

### ELB Integrations

* Auto Scaling Groups.
* Amazon ECS.
* AWS Certificate Manager.
* Amazon CloudWatch.

# Health Checks

Health checks allow a load balancer to determine whether a target is healthy.

* The load balancer sends a request to a specific port and path.
* Example: `/health`
* If the target does not respond as expected, it is considered unhealthy.
* Unhealthy targets stop receiving traffic.
* Health checks are automatic.

# AWS Load Balancers

## CLB — Classic Load Balancer

* Older generation load balancer.
* Supports basic HTTP, HTTPS, and TCP.
* Generally replaced by ALB and NLB for new applications.

## ALB — Application Load Balancer

* Operates at **Layer 7**.
* Understands HTTP/HTTPS requests.
* Can inspect things such as:

  * Headers.
  * Cookies.
  * URLs.
* Supports HTTP/2 and WebSockets.

### ALB Routing

ALB can route traffic to different target groups.

Targets can include:

* EC2 instances.
* Lambda functions.
* Containers.

Routing can be based on:

* **Path:** `/users`
* **Host:** `blog.yaseen.com`
* **Query string:** `/users?id=425&order=false`

ALB is useful for:

* Microservices.
* Container-based applications.
* ECS applications.
* Applications requiring advanced HTTP routing.

### ALB Hostname

* Each ALB has a DNS hostname.
* Clients use this hostname to access the load balancer.
* For a custom domain, Route 53 can point the domain to the ALB.

### Client IP Address

The load balancer receives the client's connection.

The original client IP can be passed to the application using the:

* `X-Forwarded-For` header.

Other headers include:

* `X-Forwarded-Port`
* `X-Forwarded-Proto`

The application can read these headers when it needs the information.

# Target Groups

Target groups are groups of resources that an ALB routes traffic to.

* Each target group can represent a service or application.
* Different parts of an application can scale independently.
* EC2 instances can be managed by an Auto Scaling Group.
* ALB can route traffic to Lambda functions.
* An ALB can route traffic to multiple target groups.
* Targets using IP addresses must use private IP addresses.

# NLB — Network Load Balancer

* Operates at **Layer 4**.
* Supports TCP and UDP.
* Optimised for very high performance and low latency.
* Can handle very high numbers of connections and requests.
* Has a static IP per Availability Zone.
* Supports Elastic IP addresses.
* Useful for applications requiring high-performance TCP/UDP traffic.
* Commonly used where low latency is important.

### NLB Use Cases

* Gaming.
* Financial services.
* High-performance network applications.
* Applications requiring TCP or UDP.

### How NLB Works

NLB works at Layer 4.

* Routes TCP and UDP traffic to targets.
* Uses rules that you define.
* Does not inspect HTTP-level details like an ALB.
* Focuses on efficiently routing network traffic.

# Sticky Sessions

Sticky sessions ensure that a client is routed to the same instance.

* Uses a cookie to keep track of the instance.
* You can set how long the session lasts using an expiration time.
* Useful when an application stores session data locally on an instance.
* Helps prevent users from losing session information such as carts or login sessions.
* Can create an imbalance because some instances may receive more users than others.

# GWLB — Gateway Load Balancer

# Load Balancer Security Groups

Security groups control who can communicate with the load balancer and the targets.

### Load Balancer Security Group

Allows users to connect to the load balancer.

For a public load balancer:

* Port `80` → HTTP.
* Port `443` → HTTPS.
* Source can be `0.0.0.0/0` when public internet access is required.

### EC2 Security Group

The EC2 security group can restrict access so that EC2 instances only accept traffic from the load balancer.

# SSL and TLS

## SSL

**SSL (Secure Sockets Layer)** is used to secure traffic between clients and servers.

* Encrypts data while it is **in transit (in-flight)**.
* Protects traffic from being read while travelling between the client and server.
* SSL is now outdated and has been replaced by TLS.

## TLS

**TLS (Transport Layer Security)** is the modern version of SSL.

* TLS provides encryption for data in transit.
* People often say **SSL** when they actually mean **TLS**.

## Certificates

TLS certificates are issued by **Certificate Authorities (CAs)**.

* CAs are trusted third parties that verify the identity of websites.
* Certificates have an expiration date.
* Certificates need to be renewed before they expire.

how load balancers handel certificates 
load balancer is the middle man between users and ex2 instances 
uses x.509 
aws certificate manager acm creating renewing and managing (can uplaod your ow)
https listner ensuress traffic is encrypted 
 - specifiy certificate 
 - sni servername indication 
 - le
user connectcs via https 
load balancer handels this connection 
forwards trhe request using http (privcate traffic )

SNI -server name indiaction 

allows multiple ssl cirts to be loaded on the same web server  
sends the host name of websites as part of the ssl handhake server uses this info to find the right cirt 
if no mathc uses the defualt cirt 


Elastic load balancers - ssl 

classic load balancers 
  - only use one ssl per
  - you will need more 
application load balancer 
  - server diffrfent 


# Connection Draining

* Lets an instance finish requests before it is removed, updated, or shut down.
* Called **deregistration delay** for ALB and NLB.
* Stops new requests to the instance but allows in-flight requests to finish.
* Can set a value to control how long it takes.

# Auto Scaling Groups

Goal is to adjust the number of EC2 instances depending on load.

* **Scale in:** Remove an instance.
* **Scale out:** Add instances.
* Ensures we have a minimum number of instances and maximum.
* Automatically registers new instances with the LB.
* ASG can recreate EC2 instances when they are unhealthy.

Operates on:

* Minimum target.
* Desired target.
* Maximum target.

# Auto Scaling with a Load Balancer

* ALB will distribute the traffic to the instances.
* ALB also checks the health and routes traffic accordingly.
* ASG will scale as needed.
* AMIs are used by the ASG when more instances are needed.

# Launch Templates

* AMI + instance types.
* EC2 user data — include scripts when needed.
* EBS.
* Security groups.
* Key pair.
* IAM roles for the EC2.
* Network + subnets.
* Load balancer info.
* Minimum / maximum sizes.
* Scaling policies.

# CloudWatch Alarms and Scaling

* Alarms keep an eye on metrics, e.g. CPU, memory.
* When alarms are triggered, AWS will take action.
* When under heavy load, an alarm goes off and AWS will increase instances.
* CloudWatch alarms are basically the checker that tells AWS to scale.

# Scaling Policies

### Target Tracking Scaling

* Maintain average load.

### Simple Step Scaling

* When a CloudWatch alarm is triggered, scale accordingly.
* More granular.

### Scheduled Scaling

* Instances can be scheduled for predictable needs.
