# Load Balancer

## Instances

![Instances](image.png)

I created two EC2 instances that will be used by the load balancer.
These instances will receive the traffic that is distributed by the load balancer.

## Target Group

![Target group](image-1.png)

I created a target group and added the EC2 instances to it.
The target group tells the load balancer which instances it can send traffic to.

![Target group](image-3.png)

The instances are in the same Availability Zone for this setup.

## Application Load Balancer (ALB)

![Application Load Balancer](image-2.png)

I created an Application Load Balancer to distribute incoming traffic between the EC2 instances.
The ALB sends requests to the healthy instances in the target group.