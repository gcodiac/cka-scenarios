#!/bin/bash
set -euo pipefail
kubectl get namespace cka-troublesho-01 >/dev/null
kubectl -n cka-troublesho-01 get configmap objective-context >/dev/null
kubectl -n cka-troublesho-01 rollout status deployment/practice --timeout=10s >/dev/null
