#!/bin/bash
docker build -t task37 .
echo Hyyy
docker login -u kishores572004 -p 05-Jul-04
docker tag task37 kishores572004/alumni_student
docker push kishores572004/alumni_student
kubectl apply -f  deploy.yaml --validate=false
kubectl apply -f svc.yaml --validate=false
