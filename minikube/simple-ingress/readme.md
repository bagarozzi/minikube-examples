# Simple Ingress example
In this example we will deploy a simple web service. First we create a deployment and a service to create the pod and expose it to the cluster on port 80.
Then we will create an ingress resource that will expose the service to the outside world on port 80. The host is ```www.example.com```.

## Explanation

## Deployment of the service
To deploy the service we apply the configuration and then open the minikube tunnel to expose the service on ```127.0.0.1```.
```bash
minikube addon enable ingress
kubectl apply -f .
minikube tunnel
```

## Verification of the deployment
To verify that the service is running we can use the following command:
```bash
curl --resolve "www.example.com:80:127.0.0.1" -i http://www.example.com
```
This command is needed because in Minikube every service is exposed on ```localhost``` therefore the Ingress controller can't route correctly to the service requested. This command puts inside the HTTP header the requested path.
It will return a response like this:
```
HTTP/1.1 200 OK
Date: Wed, 07 May 2025 15:24:57 GMT
Content-Type: text/html
Content-Length: 615
Connection: keep-alive
Last-Modified: Tue, 15 Aug 2023 17:03:04 GMT
ETag: "64dbafc8-267"
Accept-Ranges: bytes

<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
html { color-scheme: light dark; }
body { width: 35em; margin: 0 auto;
font-family: Tahoma, Verdana, Arial, sans-serif; }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
```

### Notes about the deployment
In the real world we will create a DNS record to point to the Ingress address. 