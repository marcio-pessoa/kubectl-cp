# kubectl-cp

An easy way to copy files from/to containers running on Kubernetes

Theres no dependencies needed on container side, batteries included.

## Usage

### Copy a file from container to localhost

``` sh
kubectl-cp -a '-n iam deployment/keycloak' /tmp/opa .
```

### Copy a file from localhost to container

``` sh
kubectl-cp -a '-n iam deployment/keycloak' source_file.txt /tmp/out_file.txt
```

### Copy a directory structure from container to localhost

``` sh
kubectl-cp -a 'pod/example' -r container:/tmp/my_dir .
```
