# kubectl-cp

An easy way to copy files from/to containers running on Kubernetes

There is no dependencies needed on container side, batteries included.

## Usage

### Using from localhost

#### Copy a file from container to localhost

``` sh
kubectl-cp -a '-n iam deployment/keycloak' /tmp/opa .
```

#### Copy a file from localhost to container

``` sh
kubectl-cp -a '-n iam deployment/keycloak' source_file.txt /out_file.txt
```

#### Copy a directory structure from container to localhost

``` sh
kubectl-cp -a 'pod/example' -r container:/tmp/my_dir .
```

#### Copy a directory structure from localhost to container

``` sh
kubectl-cp -a 'pod/example' -r my_dir container:/tmp/
```

### Using from Docker image

``` sh
docker run -v /home/user/.kube/config:/root/.kube/config \
  ghcr.io/marcio-pessoa/kubectl-cp -a 'pod/example' \
  container:/tmp/source_file.txt .
```
