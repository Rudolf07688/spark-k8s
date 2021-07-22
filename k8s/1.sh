#!/bin/bash

kubectl create namespace spark-jobs
kubectl create -f k8s/driver-sa-rbac.yaml

: <<'END'
Spark driver pods need a Kubernetes service account in the pod's namespace that has permissions to create, get, list, and delete executor pods. Below an example RBAC setup that creates a driver service account named driver-sa in the namespace spark-jobs, with a RBAC role binding giving the service account the needed permissions.
END
