kubectl delete deployment dogs-deployment cats-deployment
kubectl delete svc cats-service dogs-service
kubectl delete ingress nginx
kubectl delete hpa dogs-hpa cats-hpa
kubectl delete pod load-generator-cats load-generator-dogs # if the load generator is still around