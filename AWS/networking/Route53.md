# Route 53

- AWS's managed DNS service
- Authoritative, meaning the user can update, manage, delete and have full control of DNS entries
- Lets you buy domains too
- Built-in health checks and changes DNS accordingly
- Never goes down

## Hosted Zone

- Holds all DNS records for a domain and its sub-domains and tells Route 53 how to route traffic.

**Public** – contains records that specify how to route traffic on the internet.

**Private** – contains records that specify how traffic is routed within one or more VPCs.

- $0.50 per hosted zone.

## Record Types

- **A** – maps to IPv4
- **AAAA** – IPv6
- **CNAME** – maps hostname to another hostname
- **NS** – Name Servers for the hosted zone

## CNAME vs Alias

**CNAME** – points hostname to another hostname (e.g. yaseen.domain.com → aws-alb.awsdns.net)
- Only for non-hosted-zone-root domains

**Alias** – points hostname to an AWS service
- Works for root and non-root domains
- Free of charge
- Built-in health checks

## Alias Records

- Maps hostnames to AWS records
- Automatically recognises IP changes and handles it
- TTL is managed by AWS
- Always IPv4 and IPv6 (A and AAAA)

### Alias Targets

- ELB
- CloudFront distributions
- API Gateway
- Elastic Beanstalk environments
- S3 websites
- VPC endpoints

## Routing Policies

- **Simple** – gives same IP each time
- **Weighted** – sets specific weighting to each server
- **Failover** – when main server is down, Route 53 detects this and routes to backup server
- **Latency** – routes users to the server that responds fastest
- **Geolocation** – based on where the user is located
- **Multi-value answer** – provides multiple IPs for a DNS name

## Health Checks

- Route 53 pings server/application to see if it is alive (endpoint health check)
- **Calculated health checks** – relies on other health checks and combines them into an overall health status
- **CloudWatch-based** – uses metrics from CloudWatch to make decisions, e.g. if database is being throttled, or app is running low on memory – adjusts automatically
