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
import block 
you can use the instance id to import 

# Local and Remote State Files

## Local State

Terraform stores the state file locally on your machine.

- Easy to set up
- No additional configuration required
- Good for single-user projects
- State file is stored on the local machine

## Remote State

Terraform stores the state file in a central, secure location, allowing teams to collaborate.

- Multiple team members can access the state
- Automatic state locking prevents users from making changes at the same time
- Automatic backups
- Encryption for improved security
- Better suited for collaborative and production environments

## variables 
instead of hardcodeing names in your code 
allows code to be more re usable and dry 
seperate vailabel.tf file 

input varaiables - recevess input from the user cmd or variable file 
local variables - used to store immidate values that you assign once and use multiple times. internal to the terrerform config 

## Modules
resuablilty oragnisation  consistancy collaboration 
modules - colleation of config files that are grouped together to server a process 

## Terraform Variables

### Output Variables
Used to display values after Terraform runs.
Useful for things like IP addresses, DNS names, and resource IDs.
### Variable Hierarchy

From highest to lowest priority:

- Command-line flags
- .tfvars files
- Environment variables
- Default value

## Variable Types

#### Primitive Types
String – text
Number – numerical values
Bool – true or false

#### Complex Types
List – ordered collection of values
Map – key/value pairs
Object – structured collection of different values

