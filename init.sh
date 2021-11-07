#!/bin/bash

helm install --values=./mongodb/values.yaml mongo-echo  ./mongodb
sleep 120
kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.6.1/cert-manager.crds.yaml
sleep 50
gcloud container clusters get-credentials echo-app
kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.6.0/cert-manager.yaml
sleep 50
helm install --values=./myechochart/values.yaml tova-chart ./myechochart
helm install nginx ./ingress-nginx/