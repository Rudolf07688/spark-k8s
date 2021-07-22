#!/bin/bash

# Enable job preemption
: <<'END'
The preempt action is responsible for preemptive scheduling of high priority tasks in the same queue according to priority rules.

This action is disabled by default in Volcano. To enable job preemption, edit the Volcano configuration as follows
END

kubectl edit configmap volcano-scheduler-configmap --namespace volcano-system
