## TLS Certificates in Kubernetes 
- TLS secures communication using HTTPS.
- In Kubernetes, TLS is commonly handled at the Ingress level.
- A TLS certificate and its private key are stored in a Kubernetes Secret.
## cert-manager
- cert-manager automates TLS certificate management in Kubernetes.
- It can:
  - Request certificates from a Certificate Authority (CA), such as Let's Encrypt.
  - Store certificates in Kubernetes Secrets.
  - Automatically renew certificates before they expire.
## Certificate Renewal
- cert-manager monitors certificate expiration.
- It automatically requests a new certificate before expiry.
- The Kubernetes TLS Secret is updated with the renewed certificate.


## ExternalDNS
- ExternalDNS is a tool that automatically manages DNS records.
- It connects your k8s resources with a DNS provider.
- It creates, updates, and deletes DNS records based on your Kubernetes configuration.

### Without ExternalDNS:
- You manually create DNS records.
- You need to update DNS when load balancer IPs change.
- DNS management can become difficult with many applications.
### With ExternalDNS:
- DNS records are managed automatically.
- Reduces manual work and configuration errors.
- Keeps Kubernetes resources and DNS records in sync.


ExternalDNS detects the Kubernetes resource, gets the IP address or hostname of the Load Balancer, creates or updates the DNS record with your DNS provider.