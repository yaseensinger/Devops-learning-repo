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
previre the canges that terrafrom will make before it mkaes them 
analaysise config files and compates it state files and generates a plan 
output represents  desired state 
plasn has 
+: create 
~: update 
-: destroy

## Terrafrom apply 