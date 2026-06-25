# DNS — Domain Name System

A **Domain Name Server** helps keep track of websites by name rather than by IP address.

---

## Name Servers

Load DNS settings and configs, and respond to queries.

- **Authoritative** — hold the actual DNS records of IP addresses.
- **Recursive** — do not hold the records, but query other servers.

---

## Zone Files

Stored on name servers.

- Contain information about the domain.
- Help name servers answer queries.
- Organise DNS in a readable way.

### Resource Records

Zone files are comprised of multiple **resource records**, each containing specific information about hosts, name servers, and other resources.

| Record Type | Purpose |
|---|---|
| **A** | Maps a domain to an IPv4 address |
| **AAAA** | Maps a domain to an IPv6 address |
| **CNAME** | Maps multiple domain names to the same IP address |
| **MX** | Points to the mail server for a domain |
| **TXT** | Used for verification of domain owners |

---

## DNS Hierarchy and Distribution

```
DNS Root
└── TLD (e.g. .com, .co.uk)
    └── Authoritative Domains (e.g. google.com, x.com, youtube.com)
        └── Domain
            └── Zone Files & Records
```

- **DNS Root** — keeps information about TLDs.
- **TLD** — holds top-level domains like `.com` and `.co.uk`.
- **Authoritative Domains** — e.g. google.com, x.com, youtube.com.
- **Domain** — has zone files; zones hold the records for that domain.

---

## DNS Resolution Process

User types `google.com`:

```
Browser → DNS Resolver → Root Server → Resolver → TLD Server → Authoritative Server → Returns IP
```

---

## Domain Registrar

- Allows you to purchase and register domains.
- Has a relationship with TLD registries.
- Examples: GoDaddy, Cloudflare.

## DNS Hosting Provider

- Operates DNS nameservers that host DNS zones.
- The zone must be hosted on a DNS nameserver to function.

---

## DNS Query Process (Step by Step)

1. **Local cache** is checked (e.g. `/etc/hosts`).
2. **DNS resolver** checks its cache, then asks the root server for the `.com` TLD.
3. **Root server** responds with the address of the `.com` registry nameserver.
4. **Resolver** queries the `.com` registry nameserver, which responds with the `google.com` nameserver.
5. **Resolver** queries the `google.com` DNS nameserver.
6. **Google's nameserver** responds with the DNS records.
7. **Resolver caches** the result and returns the IP to the browser.