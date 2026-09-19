# Terraform

* Terraform allows you to deploy code on any cloud.
* Code can be stored on Git to allow members of a team to collaborate.

## State File

* Like a blueprint: a record of the existing infrastructure.

## Idempotency

* No matter how many times you run the configuration, it will produce the same result.
* When one change is made, it will only apply that one change.

## Desired vs Current State

* **Current state:** The state file.
* **Desired state:** Your configuration changes or new deployments.
* The state file decides, by comparing the desired state to the current state, and only makes those changes.

## Provider

* A provider is a plugin that allows you to connect to a cloud provider.

## Terraform Init
git rraform init` — command to set up the workspace.

## Terraform Plan

`terraform plan` previews the changes that Terraform will make before applying them.

It analyzes the configuration files, compares them with the current state, and generates an execution plan.

The output represents the **desired state** and shows what Terraform intends to change.

### Plan Symbols

* `+` — Create
* `~` — Update
* `-` — Destroy

---

## Terraform Apply

`terraform apply` takes the execution plan and applies it to the infrastructure.

It will generate the same plan as the `terraform plan` command and ask you to confirm before applying the changes.

---

## Terraform Destroy

`terraform destroy` is used to destroy all remote objects managed by Terraform.

It reads the configuration and state files to determine which resources Terraform is managing. After you confirm, Terraform deletes those resources and updates the state file.

---

## Resource Block

A **resource block** is used to define a piece of infrastructure that you want Terraform to manage, such as an EC2 instance.

### Example

```hcl
resource "aws_instance" "test" {
  ami           = "ami-012349s21ed"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
```

In this example:

* `aws_instance` is the **resource type**.
* `test` is the **resource name**.
* `ami` specifies the Amazon Machine Image (AMI) to use.
* `instance_type` specifies the type of EC2 instance.
* `tags` adds metadata to the EC2 instance.

---

## Terraform Registry

![alt text](image.png)

# importing 

allows you to take exising resorces uncer terrafrom control 