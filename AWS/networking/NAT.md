## NAT

-   **NAT** = Network Address Translation.
-   A **managed AWS service** that allows you to connect private
    instances to the internet **without exposing them to the internet**.
-   Keeps private instances secure.
-   AWS manages bandwidth and high availability.
-   Pay per hour.

### NAT Gateway

-   A specific use of an **Elastic IP**.
-   Has to be in the same **VPC**, but a different **subnet** from the
    instance.
-   Requires an **Internet Gateway**.
-   Scales from **5 Gbps to 100 Gbps**.
-   No security group needs to be managed by you; it is managed by AWS.

### NAT High Availability

-   Have a NAT Gateway within a different **Availability Zone (AZ)** but
    in the same VPC, in case one AZ goes down.

## NAT Instance

-   Bandwidth depends on the **instance type**, not the number of
    gateways; can be up to **100 Gbps**.
-   Maintenance is managed by you.
-   Cost is per hour and depends on the instance type.
-   Can be attacked because it can act as a **bastion host**.

## NACL

**NACL** = Network Access Control List.

-   Acts like a **firewall** that controls what traffic is allowed in a
    subnet based on rules.
-   One NACL per subnet, and it applies to everything in the subnet.
-   You have to define **inbound and outbound traffic** explicitly.
-   Rules are given a number from **1--32766**.
-   The **lower the rule number, the higher the precedence**.
