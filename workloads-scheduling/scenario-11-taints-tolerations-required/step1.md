# Use taints and tolerations — Required

## Exam task

In the fresh lab environment, complete this objective:

> Use taints and tolerations

Use the smallest valid change and preserve all names and constraints supplied by the task. Diagnose before editing, then verify the final state with API output and a functional check where applicable.

Useful commands:

~~~bash
kubectl get all -A
kubectl describe RESOURCE NAME -n NAMESPACE
kubectl get RESOURCE NAME -n NAMESPACE -o yaml
kubectl get events -A --sort-by=.lastTimestamp
~~~

Your solution must be repeatable from the terminal, scoped to the requested object, and demonstrably correct. Do not delete and recreate resources unless the task explicitly requires it.
