# Manage Role-Based Access Control (RBAC) — Learn

## The objective

Manage Role-Based Access Control (RBAC) is a CKA task: understand the API objects, the node or control-plane boundary involved, and the evidence that proves the result.

## Practice workflow

~~~bash
kubectl cluster-info
kubectl get nodes -o wide
kubectl api-resources
kubectl get events -A --sort-by=.lastTimestamp
~~~

Read the relevant object with kubectl get ... -o yaml, make a small change in a disposable namespace, and verify it with a status, condition, or functional check. Learn the difference between desired state (spec) and observed state (status).

## Study checklist

- Identify the exact resource, field, and scope used by this objective.
- Know the shortest imperative command or YAML workflow for the exam.
- Know how to inspect Events, conditions, logs, and related resources.
- Practice preserving names, namespaces, ports, and other constraints while editing.
