# Amazon Machine Image (AMI) Notes

## What is an Amazon Machine Image (AMI)?

An **Amazon Machine Image (AMI)** is a **pre-configured template** that contains the information needed to launch an EC2 instance.

It includes:

* Operating system
* Software packages
* Configuration settings
* Application code (if required)

## Why use an AMI?

Using an AMI:

* Saves time by avoiding manual configuration.
* Provides faster boot times.
* Reduces the time spent configuring new instances.
* Allows you to create a pre-packaged, customised instance that can be launched repeatedly.

## AMI Availability

* AMIs are built for specific AWS Regions.
* They can be copied to other AWS Regions if needed.

## Types of AMIs

### Public AMIs

* Provided by AWS or the AWS community.
* Available for anyone to use.
* Commonly used for popular operating systems such as:

  * Amazon Linux
  * Ubuntu
  * Windows Server

### Private (Own) AMIs

* Created from an EC2 instance that you have customised.
* Only available within your AWS account unless you choose to share it.

### AWS Marketplace AMIs

* Created by third-party vendors.
* Available through the AWS Marketplace.
* Some are free, while others require payment.

## Benefits of AMIs

* Automate the deployment of EC2 instances.
* Ensure every instance launches with the same configuration.
* Maintain consistency across environments.
* Ideal for scaling infrastructure quickly and reliably.
* Reduce setup errors by using standardised images.

## Summary

An Amazon Machine Image (AMI) is a reusable template for launching EC2 instances. It helps automate deployments, ensures consistent configurations, speeds up instance creation, and is especially useful when scaling infrastructure.
