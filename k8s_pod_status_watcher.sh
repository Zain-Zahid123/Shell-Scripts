#!/bin/bash
# Cloud DevOps: Kubernetes Pod Status Monitoring using WHILE loop

echo "Starting Kubernetes pod monitoring..."

namespace="default"
pod_name="my-app-pod"

while true
do
    pod_status=$(kubectl get pod "$pod_name" -n "$namespace" -o jsonpath='{.status.phase}')

    echo "Current Status of $pod_name: $pod_status"

    if [[ "$pod_status" == "Running" ]]; then
        echo "✅ Pod is healthy and running."
        break
    elif [[ "$pod_status" == "Failed" || "$pod_status" == "CrashLoopBackOff" ]]; then
        echo "❌ Pod has failed. Manual intervention required!"
        exit 1
    fi

    echo "⏳ Waiting for pod to be ready..."
    sleep 5
done

echo "Monitoring completed."
