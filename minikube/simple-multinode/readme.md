# Deployment su più nodi di un'applicazione stateless su Minikube
In questa cartella si ha la configurazione per il deployment ed i servizi di un'applicazione web che espone tutto tramite Ingress.

## Spiegazione
Il deployment crea 2 repliche di pods con un container di Hello-World. Successivamente il Service racchiude tutti i pods e li espone con ClusterIP. Infine l'Ingress espone il servizio verso l'esterno sempre su porta 80. 
La contenuta in affinity evita che i pods vengano creati sullo stesso nodo al momento del deployment. Da notare che con ```requiredDuringSchedulingIgnoredDuringExecution``` si concede che i pod abitino lo stesso nodo in un momento secondario, per esempio dopo un riavvio.

## Utilizzo

### Prerequisiti
- Minikube installato e funzionante
- Kubectl installato e funzionante
- Addon Ingress abilitato

### Avvio di Minikube
Per avviare Minikube con più nodi, eseguire il seguente comando:
```bash
minikube start --nodes 2 --driver=docker -p multinode-demo
```
Viene anche creato un profilo di Minikube (non so a cosa serva ma il tutorial lo faceva).
Possiamo verificare la presenza dei nodi con il comando:
```bash
kubectl get nodes
```
e
```bash
minikube status -p multinode-demo
```

### Deployment
Per creare il cluster, eseguire il seguente comando:
```bash
kubectl apply -f .
```

### Verifica del deployment
Per verificare che il deployment sia andato a buon fine, eseguire il seguente comando:
```bash
kubectl get pods -o wide
```
e con altri comandi per controllare servizi e ingress. 

### Accesso al servizio
Per accedere al servizio non basta connettersi all'IP del cluster perché questo non è esposto. 
```bash
curl  http://192.168.49.2:31000
```
Infatti dobbiamo aprire il tunnel per l'Ingress. 
```bash
minikube tunnel -p multinode-demo
```
Dopo di che possiamo accedere al servizio con il comando:
```bash
curl --resolve "www.example.com:80:127.0.0.1" -i http://www.example.com
```