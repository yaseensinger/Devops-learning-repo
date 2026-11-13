## Config Maps
- where configuration settings are stored
- holds variables, configuration values, URLs, etc.
- used for non-confidential data
- ensures pods get the correct configuration when they start
- can be used as environment variables or mounted as files

## Secrets
- designed to store sensitive data
- used for passwords, API keys, tokens, and certificates
- data is Base64 encoded (not encrypted by default)
- can be accessed by pods and containers that are configured to use them

## Sealed Secrets
- used in GitOps workflows to safely store secrets in Git
- secrets are encrypted before being committed to Git
- only the Sealed Secrets controller in the Kubernetes cluster can decrypt them
- the controller creates a normal Kubernetes Secret from the Sealed Secret