# ECS

Amazon ECS (Elastic Container Service) is AWS's own container orchestration platform.

It is a fully managed service that lets you run and manage containerized applications.

# EKS

Amazon EKS (Elastic Kubernetes Service) is Amazon's managed Kubernetes service.

You can take advantage of Kubernetes features while AWS manages the Kubernetes control plane, so you don't have to manage it yourself.

AWS takes care of the heavy lifting for the Kubernetes control plane.

It supports automated deployment, scaling and management of containerized applications through Kubernetes.

## Node types

### Managed Node Groups

* AWS creates and manages the EC2 instances.
* The nodes are part of an Auto Scaling Group.
* AWS manages much of the node lifecycle.

### Self-Managed Nodes

* You create and manage the EC2 instances yourself.
* The instances are registered as worker nodes in the EKS cluster.
* The nodes are usually managed using an Auto Scaling Group.
* You are responsible for managing the instances and their lifecycle.

# AWS Fargate

Fargate is a serverless container platform that works with both ECS and EKS.

It removes the need to manage EC2 instances.

You define the task/pod and specify the resources it needs, and AWS manages the underlying infrastructure.

You can scale by increasing the number of tasks/pods.

AWS handles the underlying compute infrastructure.

It is useful for teams that want to avoid managing servers and focus on running containers.

# ECR

Amazon ECR (Elastic Container Registry) is like Docker Hub for AWS.

It allows you to store and manage Docker/container images.

It integrates with other AWS services such as ECS and EKS.

Permissions are managed using IAM.

# ECS

The ECS agent is the middleman between the EC2 instance and the ECS cluster.

## Launch Types

### EC2 Launch Type

* You are responsible for managing the EC2 instances.
* The ECS agent must run on the EC2 instance.
* The ECS agent registers the EC2 instance with the ECS cluster, making it available to run containers.
* The ECS agent communicates with ECS and handles the container lifecycle.
* You are responsible for managing the underlying EC2 infrastructure.

### Fargate Launch Type

Fargate is the serverless option.

* You don't need to manage EC2 instances.
* AWS handles the underlying infrastructure.
* You tell AWS how many resources the task needs, such as CPU and memory.
* AWS runs the containers based on the resources you specify.
* You can scale by increasing the number of tasks.
* AWS handles the underlying compute infrastructure.
* Good for teams that want to avoid managing infrastructure and focus on containers.

# IAM for ECS

## ECS Instance Profile

**EC2 launch type only**

* The ECS agent needs permissions to interact with AWS services.
* The EC2 instance uses an IAM instance profile.
* The IAM role attached to the instance gives the ECS agent the permissions it needs to communicate with AWS services.

## Task Role

* Allows each ECS task to have its own IAM role.
* Different tasks can use different IAM roles.
* Only gives the container/application the permissions it needs.
* Helps follow the principle of least privilege.
* The task role is defined in the ECS task definition.

# ECS Load Balancer Integration

ECS can integrate with Elastic Load Balancing.

An Application Load Balancer (ALB) can distribute traffic across ECS tasks.

The ECS service can register running tasks with a target group.

When new tasks are started, they can be registered with the target group so the load balancer can send traffic to them.

When tasks are stopped, they are removed from the target group.

This works well with ECS service scaling because new tasks can automatically receive traffic from the load balancer.
