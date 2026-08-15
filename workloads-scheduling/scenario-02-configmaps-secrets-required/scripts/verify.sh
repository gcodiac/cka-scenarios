#!/bin/bash
set -euo pipefail
kubectl get namespace cka-workloads--02 >/dev/null
kubectl -n cka-workloads--02 get configmap objective-context >/dev/null
kubectl -n cka-workloads--02 rollout status deployment/practice --timeout=10s >/dev/null
