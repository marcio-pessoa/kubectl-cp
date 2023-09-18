# kubectl-cp

An easy way to copy files from/to containers running on Kubernetes

Theres no dependencies needed on container side, batteries included.

## Usage

### From container to localhost

``` sh
kubectl-cp -a '-n iam deployment/keycloak' /tmp/opa .
```

### From localhost to container

``` sh
kubectl-cp -a '-n iam deployment/keycloak' source_file.txt /tmp/out_file.txt
```
