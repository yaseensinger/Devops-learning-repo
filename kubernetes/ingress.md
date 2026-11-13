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