# Use labels and selectors — Inferno

## Incident

A platform team reports a failure involving **use labels and selectors**. Several symptoms may have the same apparent cause.

Recover the service while preserving the existing resource names, namespace boundaries, and availability requirements. Separate control-plane, node, object-specification, and application evidence. Inspect Events and status before changing anything.

~~~bash
kubectl get nodes -o wide
kubectl get pods -A -o wide
kubectl get events -A --sort-by=.lastTimestamp
kubectl describe RESOURCE NAME -n NAMESPACE
kubectl get RESOURCE NAME -n NAMESPACE -o yaml
~~~

Resolve every related fault, then prove the intended state and explain which observation led to each repair.
