AWS Networking

VPC

CIDR

Classless Inter-Domain Routing (CIDR) — a method for allocating and representing IP address ranges.

Helps us define IP ranges.

* www.xx.yy.zz/32 = one IP
* 0.0.0.0/0 = all IPv4 addresses

Base IP — included in the range.

xx.xx.xx.xx/24
base IP     prefix length

The smaller the CIDR prefix length, the larger the range of IPs.

/32 → 1 IP
/24 → 256 IPs
/16 → 65,536 IPs
/8  → 16,777,216 IPs

The /24 is the CIDR prefix length.
The corresponding subnet mask is 255.255.255.0.

VPC - Subnet

* AWS reserves 5 IPv4 addresses in each subnet; they are not available for use.
* .0 — network address
* .1 — reserved for the VPC router
* .2 — IP address for the DNS server
* .3 — reserved for future use
* .255 — network broadcast address

Note: AWS reserves the broadcast address, but VPCs do not support broadcast traffic.

Internet Gateway

* An Internet Gateway allows resources in a VPC to communicate with the public internet.
* Scales horizontally.
* Not created by default; it needs to be created and attached to the VPC.
* Route tables need to be configured to direct traffic in and out of a network.
* For internet access, a route such as 0.0.0.0/0 → Internet Gateway is typically added to the route table.

Public resources

An Internet Gateway and a route table do not automatically make a resource public.

For an EC2 instance to have direct internet connectivity, it generally also needs a public IPv4 address and appropriate security rules.

Bastion Host

* A bridge to a private instance.
* The bastion host is placed in a public subnet and can be accessed from a trusted external IP.
* It can then be used to SSH into an instance in a private subnet.

Security Groups

* The bastion host security group needs to allow inbound SSH traffic from a trusted/restricted IP.
* The private EC2 security group needs to allow inbound SSH traffic from the bastion host’s security group.

Internet
   ↓ SSH
Bastion Host
   ↓ SSH
Private EC2

This allows the private EC2 instance to remain inaccessible directly from the public internet.