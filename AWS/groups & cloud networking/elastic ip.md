# Elastic IP (EIP)

- When you restart an EC2 instance, it may receive a different public IP address.
- If you need a fixed public IP, use an **Elastic IP (EIP)**.
- An Elastic IP is a static public IPv4 address that you own until you release it.
- AWS charges for Elastic IPs when they are **not attached** to a running instance.
- Useful when external services or clients need to point to a server using a fixed IP address.

## High Availability

- You can mask the failure of an EC2 instance by remapping the Elastic IP to another instance.
- This allows traffic to be quickly redirected with minimal downtime.

## Limits

- By default, you can have **5 Elastic IPs per AWS account** (per Region).

## Best Practices

- Avoid using Elastic IPs unless they are necessary.
- Heavy reliance on Elastic IPs can be a sign of poor architecture.
- Instead of relying on a fixed IP:
  - Use a random public IP and register a **DNS** record.
  - Use an **Elastic Load Balancer (ELB)** to distribute traffic.
- Elastic IPs are best suited for **quick recovery** and failover scenarios. 