# AWS Security Groups

## What are Security Groups?

A **Security Group (SG)** is a **virtual firewall** for your EC2 instances.

- Controls how **traffic flows into and out of EC2 instances**.
- Operates **one layer above the EC2 instance**.
- Controls **which ports are open**.
- Controls **which IP addresses or Security Groups** are allowed to communicate with an instance.
- Attached to **EC2 instances**, not subnets.

---

# Key Features

- **Only Allow rules** are supported.
- Anything that is **not explicitly allowed is automatically blocked**.
- **Stateful firewall**:
  - If inbound traffic is allowed, the response is automatically allowed outbound.
  - If outbound traffic is allowed, the response is automatically allowed inbound.
- Acts as a virtual firewall protecting EC2 instances.

---

# Inbound and Outbound Traffic

## Inbound Rules

Control traffic coming **into** the EC2 instance.

Examples:
- HTTP (Port 80)
- SSH (Port 22)

By default:
- **All inbound traffic is blocked** until you create Allow rules.

---

## Outbound Rules

Control traffic leaving the EC2 instance.

By default:
- Most Security Groups allow **all outbound traffic**.

---

# Security Group Scope

- A Security Group can be attached to **multiple EC2 instances**.
- Security Groups are **regional**.
- They exist within a single **VPC (Virtual Private Cloud)**.

---

# Referencing Other Security Groups

Instead of allowing traffic from specific IP addresses, you can **reference another Security Group**.

Benefits:
- Allows instances in one Security Group to communicate with instances in another.
- Easier to manage than using IP addresses.
- Rules automatically apply to new instances added to the referenced Security Group.

Example:
- Allow web servers (SG-Web) to communicate with application servers (SG-App).
- Allow application servers (SG-App) to communicate with database servers (SG-DB).

---

# Good Practice

Create a **separate Security Group for SSH access**.

Benefits:
- Easier to troubleshoot connection issues.
- Better security by restricting SSH access.
- Can be reused across multiple EC2 instances.

---

# Common Ports to Know

| Port | Service | Purpose |
|------|---------|---------|
| 22 | SSH | Secure remote login to Linux instances |
| 21 | SFTP/FTP* | File transfer (*FTP uses Port 21; SFTP typically uses SSH on Port 22) |
| 80 | HTTP | Unsecured web traffic |
| 443 | HTTPS | Secure web traffic |
| 53 | DNS | Domain Name System |
| 3389 | RDP | Remote Desktop for Windows instances |