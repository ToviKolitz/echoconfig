#!/bin/bash

helm uninstall mongo-echo
helm uninstall nginx
helm uninstall tova-chart
kubectl delete -f https://github.com/jetstack/cert-manager/releases/download/v1.6.1/cert-manager.crds.yaml
kubectl delete -f https://github.com/jetstack/cert-manager/releases/download/v1.6.0/cert-manager.yaml