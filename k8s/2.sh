#!/bin/bash
: <<'END'
Spark executors need more resources than drivers. We thus need to constrain driver pods and executor pods to only be able to run on particular node(s). We will use Node Affinities with label selectors to make the selection.
END


# Execute the following command for the node(s) intended to execute driver pods:
kubectl label nodes <node-name> type=driver

# For executor pods:
kubectl label nodes <node-name> type=compute

