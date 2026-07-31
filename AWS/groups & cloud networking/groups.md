# AWS Security Groups

## What is a Security Group?

A **Security Group (SG)** is a **virtual firewall** that controls traffic to and from an EC2 instance.

- Works at the **instance level**.
- Controls **inbound (incoming)** and **outbound (outgoing)** traffic.
- Each EC2 instance must have at least one Security Group.
- An instance can have **multiple Security Groups** attached.

---

# Key Features

- **Stateful firewall**
  - If inbound traffic is allowed, the response is automatically allowed back out.
  - If outbound traffic is allowed, the response is automatically allowed back in.
  - No need to create separate return rules.

- Only **Allow** rules.
  - Security Groups **do not support Deny rules**.
  - Anything not explicitly allowed is automatically denied.

---  