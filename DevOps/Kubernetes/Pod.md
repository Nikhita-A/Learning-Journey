Pod in Kubernetes
------------------

[Refer here for full notes](https://directdevops.blog/2024/01/27/devops-classroom-notes-27-jan-2024/)

* In k8s, _pod_ is the smallest unit. A pod is nothing but one or group of containers (init containers and side car containers)
* In k8s, we deploy pods instead of containers.
* A pod can contain single container or multiple containers
* A pod allows `shared network` and `shared storage` between the containers which can connect with each other through the local host
* _Kube-proxy_ allocates the pod with a `cluster IP address` and the application inside the container can be accessed using this _cluster IP address_

### Sample Pod YAML manifest

* Kubernetes pod manifest

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx
spec:
  containers:
  - name: nginx
    image: nginx:1.14.2
    ports:
    - containerPort: 80
```
* Now create the pod

```bash
kubectl apply -f pod.yaml
kubectl get pods
kubectl get pods -w    # To watch logs as to what is happening while pod creation
kubectl get pods -o wide   # To get the detailed info about the pod
kubectl delete pod nginx
```

### How do you debug a pod?

* I use a command `kubectl describe pod <pod-name>` to get all the all the necessary information related to the pod and check for any kind of errors happened and where things had gone wrong
* `kubectl logs <pod-name>` can also be used to check for the logs of the pod