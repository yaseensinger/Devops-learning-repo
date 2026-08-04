# Amazon Elastic File System (EFS)

## What is EFS?

* A **managed network file system** for EC2.
* Can be **mounted on multiple EC2 instances** at the same time.
* Designed to work across **multiple Availability Zones (AZs)**.

## Key Points

* Highly available and fault tolerant.
* Automatically grows as you add more data.
* Makes it easy to share files between multiple EC2 instances.
* Ideal for applications that need shared file access.

## Benefits

* Shared storage across multiple instances.
* No need to manage storage size.
* Highly available across multiple AZs.

## Downsides

* More expensive than EBS.
* Best used only when shared file storage is needed.

### Exam Tip

**EFS = Shared file storage for multiple EC2 instances across multiple AZs.**
