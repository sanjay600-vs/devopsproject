#!/bin/bash
docker build -t sample .
echo Hyyy
docker login -u sanjayvs600-p 09-Mar-05
docker tag sample sanjayvs600/agri
docker push  sanjayvs600/agri
kubectl apply -f  deploy.yaml --validate=false
kubectl apply -f svc.yaml --validate=false
