# IPv6

* In AWS, there aren't any private IPv6 addresses.
* IPv4 can't be disabled even when IPv6 is enabled.
* Dual-stack mode works alongside IPv6 and IPv4.
* Both an internal private IPv4 and a public IPv6, which is internet-routable (through a gateway).
* Useful for environments that are moving to IPv6 but still need IPv4.
* Unlikely to ever run out of IPv6 addresses, so if there is ever an issue, it will be IPv4, and you can create a CIDR to get more IPs.

# Egress-Only Gateway

* Only used for IPv6 traffic.
* Outbound traffic only. Instances can use this to access the internet but do not allow the internet to access the instances.
* Route tables need to be updated.

# IP Routing

* In a VPC, a private instance will use a NAT Gateway to allow internet access for IPv4.
* Whereas when using IPv6, it can use the Internet Gateway directly.
