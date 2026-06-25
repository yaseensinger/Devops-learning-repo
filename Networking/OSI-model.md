# Communications Models

## Why Do We Need a Communications Model?

- **Application independence** — applications can work independently and still communicate with each other.
- **Standards** make it easier to upgrade systems.
- **Each layer can be upgraded independently.**

---

## OSI Model Layers

### Layer 7 – Application Layer
- Provides network services to applications.
- Examples: HTTP, FTP, SMTP.

### Layer 6 – Presentation Layer
- Syntax layer.
- Ensures that data being sent is usable.
- Handles encryption and data formatting.
- Examples: SSL and TLS.

### Layer 5 – Session Layer
- Establishes, maintains, and terminates sessions.
- Examples: RPC and NetBIOS.

### Layer 4 – Transport Layer
- Provides reliable services to upper layers.
- Ensures data arrives safely and in the correct order.
- **TCP** – ordered and error-free.
- **UDP** – faster but less reliable.

### Layer 3 – Network Layer
- Determines how data is sent to the recipient.
- Packet forwarding.
- Routing through different routers.
- Uses IP addresses and routers.
- Organises data into packets.

### Layer 2 – Data Link Layer
- Node-to-node data transfer.
- Provides links between devices.
- Puts data into frames.
- Uses MAC addresses, switches, and bridges.

### Layer 1 – Physical Layer
- Transmits raw bits over a physical medium.
- Includes cables, switches, and network cards.

---

## TCP/IP Model Layers

| Layer | Examples |
|---|---|
| Application Layer | HTTP, TLS, DNS |
| Transport Layer | TCP, UDP |
| Internet Layer | IP |
| Network Access Layer | LAN technologies (e.g., Ethernet, Wi-Fi) |

---

## OSI Model — Sender's Perspective

### Layer 7 – Application Layer
- Sends a POST request with JSON data to the HTTPS server.

### Layer 6 – Presentation Layer
- Serialises the JSON into a stream of bytes.
- Handles encryption and data formatting.

### Layer 5 – Session Layer
- Requests the establishment of a TCP connection.

### Layer 4 – Transport Layer
- Sends a SYN request to the target port.
- Breaks data into TCP segments.

### Layer 3 – Network Layer
- Places the TCP segment into an IP packet.
- Adds the source and destination IP addresses.

### Layer 2 – Data Link Layer
- Encapsulates each packet into a frame.
- Adds the source and destination MAC addresses.

### Layer 1 – Physical Layer
- Converts each frame into a stream of bits.
- Transmits the bits across the physical medium.

---

## OSI Model — Recipient's Perspective

### Layer 1 – Physical Layer
- Receives electrical, optical, or wireless signals.
- Converts the signals into bits.

### Layer 2 – Data Link Layer
- Groups the bits into frames.
- Verifies frame integrity and removes frame headers.

### Layer 3 – Network Layer
- Extracts and processes the IP packets from the frames.

### Layer 4 – Transport Layer
- Reassembles the TCP segments.
- Ensures data is received in the correct order and without errors.

### Layer 5 – Session Layer
- Establishes and manages the connection session.

### Layer 6 – Presentation Layer
- Decrypts and decompresses the data.
- Converts the byte stream back into a usable format.

### Layer 7 – Application Layer
- Processes the HTTPS request.
- Passes the request to the appropriate application or service.
