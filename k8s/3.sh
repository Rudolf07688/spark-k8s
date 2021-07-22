#!/bin/bash

# To use priority and preemption capabilities, we must first create the necessary PriorityClasses

kubectl create -f priorities.yaml
