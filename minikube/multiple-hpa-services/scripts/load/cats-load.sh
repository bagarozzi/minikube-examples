kubectl run -i --tty load-generator-cats --rm --image=busybox:1.28 --restart=Never -- /bin/sh -c "while sleep 0.01; do wget -q -O- http://cats-service; done"
