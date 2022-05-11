#!/bin/bash
cd "$(dirname "$0")"
oc apply -f openshift-operators/openshift-gitops-operator-subscription.yaml