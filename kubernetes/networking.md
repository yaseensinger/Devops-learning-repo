# Kubernetes Networking --- Quick Notes

## 1. Pod IPs

-   Every Pod gets its own IP address.
-   Pods can usually talk directly to other Pods across nodes.
-   A Pod IP is temporary: it can change when the Pod is replaced.
-   Use a **Service** for a stable way to reach a group of Pods.

## 2. DNS

-   Kubernetes provides internal DNS so workloads can find Services by
    name.
-   A Service name usually resolves to its **ClusterIP**.
-   Common name format: `service-name.namespace.svc.cluster.local`
-   Pods in the same namespace can usually use just `service-name`.

## 3. Services

-   A **ClusterIP Service** gives a stable virtual IP and load-balances
    traffic to matching Pods.
-   The Service selects Pods using labels.
-   Clients connect to the Service; Kubernetes networking directs
    traffic to a ready backend Pod.

## 4. CNI (Container Network Interface)

-   The CNI plugin sets up Pod networking.
-   It gives Pods network connectivity and helps connect Pods across
    nodes.
-   It may also enforce network policies, depending on the plugin.
-   Examples: **Calico**, **Cilium**, **Flannel**.

## 5. North--South vs East--West Traffic

### North--South (in and out of the cluster)

Traffic between the cluster and something outside it.

Examples: - User → Ingress / Gateway → Service → Pod - Pod → external
API or website

**Remember:** North--South = entering or leaving the cluster.

### East--West (inside the cluster)

Traffic between workloads inside the cluster.

Examples: - Frontend Pod → Backend Service → Backend Pod - Backend Pod →
Database Pod

**Remember:** East--West = service-to-service traffic inside the
cluster.

## Quick mental model

-   **Pod IP:** where a Pod is right now.
-   **Service:** stable address for reaching Pods.
-   **DNS:** finds Services by name.
-   **CNI:** provides the Pod network.
-   **North--South:** traffic in/out of the cluster.
-   **East--West:** traffic within the cluster.
