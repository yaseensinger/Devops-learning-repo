# Amazon Elastic Block Store (EBS)

## What is EBS?

* A **network-attached storage volume** for EC2 instances.
* Works like a **virtual hard drive**.
* Provides **persistent storage**, so data remains even if an instance is stopped or terminated.

## Key Points

* Attach and detach volumes from EC2 instances.
* Can only be attached within the **same Availability Zone (AZ)**.
* To move data to another AZ, create a **snapshot** and restore it.
* Snapshots are backups stored in **Amazon S3**.
* Useful for storing operating systems, applications, and databases.

## Benefits

* Keeps data safe.
* Easy to back up with snapshots.
* Can be reattached to another EC2 instance.
* Good for persistent storage in the cloud.

### Exam Tip

**EBS = Persistent block storage for EC2.**
