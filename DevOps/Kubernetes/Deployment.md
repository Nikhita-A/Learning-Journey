Deployment in k8s
-----------------

* A Kubernetes Deployment tells Kubernetes how to create or modify instances of the pods that hold a containerized application. 
* Deployments can help to efficiently scale the number of replica pods, enable the rollout of updated code in a controlled manner, or roll back to an earlier deployment version if necessary.
* Deployment is responsible for `auto-healing` and `zero down time` in k8s

### Difference between container, pod and deployment

![Deployment vs pod vs container](https://github.com/Nikhita-A/Learning-Journey/assets/148535211/d9be2004-7424-4494-b962-ac9ad29d77d0)

### Replica set

* _Replica set_ is basically a k8s _controller_ which is the one that is implementing the auto-healing feature of the pod
* Whenever a pod is killed or deleted for any reason, it auto heals and creates one more pod to maintain the desired state
* It makes sure that desired state = actual state

### Deployment vs Replica Set

[Refer here for the differences](https://www.baeldung.com/ops/kubernetes-deployment-vs-replicaset)

* A ReplicaSet ensures that a specified number of pod replicas are running at any given time. 
* However, a Deployment is a higher-level concept that manages ReplicaSets and provides declarative updates to Pods along with a lot of other useful features.

### Sample deployment manifest

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: netflix-app
  labels:
    app: netflix-app
spec:
  replicas: 2
  selector:
    matchLabels:
      app: netflix-app
  template:
    metadata:
      labels:
        app: netflix-app
    spec:
      containers:
      - name: netflix-app
        image: nikhitaa/mydockerrepo:latest
        ports:
        - containerPort: 80
```
