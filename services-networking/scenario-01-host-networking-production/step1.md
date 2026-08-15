# Understand host networking configuration — Production

## Operational task

Apply **understand host networking configuration** to a production-style workload or cluster component. Keep the public contract stable: preserve resource names, namespaces, ports, access boundaries, and availability unless the task explicitly changes them.

Capture before-and-after evidence, make the smallest safe change, and verify both Kubernetes state and user-visible behavior.

~~~bash
kubectl get nodes -o wide
kubectl get pods,svc -A -o wide
kubectl get events -A --sort-by=.lastTimestamp
kubectl describe RESOURCE NAME -n NAMESPACE
kubectl rollout status deployment/NAME -n NAMESPACE
~~~

Leave a short handoff containing the diagnosis, commands used, final status, and rollback consideration.
