
vpc peering 


Cross-Account / Cross-Region Connectivity

* VPC peering allows VPCs to communicate with each other.
* Useful when you need to communicate with different infrastructure securely.
* Referencing Security Groups across accounts:
    * Allows you to use an account ID in the SG rule without needing to hard-code an IP.
    * Adds a layer of security between VPCs.
    * Useful when you have two accounts isolated for security reasons but still need them to communicate.


VPC Endpoints

* Allows you to connect to AWS services privately without using the internet, helping keep traffic secure.
* Does not expose the VPC to the public internet.
* Scales horizontally.
* No need for an internet gateway.
* Supports most AWS services.
* Pay per hour + per GB.

Types of Endpoints

Interface Endpoint

* Powered by AWS privately.
* Provides an ENI private IP.
* Supports most AWS services.
* Needs a Security Group (SG) because it uses an ENI.
* Pay per hour and per GB.

Gateway Endpoint

* Provision a gateway; this is targeted in the route table to route traffic to services.
* No Security Group (SG) needed.
* Free.
* Only supports:
    * Amazon S3
    * dynamo db

