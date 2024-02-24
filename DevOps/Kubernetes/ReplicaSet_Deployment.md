Replica Set (RS)
----------------

* A ReplicaSet's purpose is to `maintain a stable set of replica Pods` running at any given time.
* A ReplicaSet identifies new Pods to acquire by using its `selector`.
*  As such, it is often used to guarantee the availability of a specified number of identical Pods.
* _Replica set_ is basically a k8s _controller_ which is the one that is implementing the auto-healing feature of the pod
* Whenever a pod is killed or deleted for any reason, it auto heals and creates one more pod to maintain the desired state
* It makes sure that desired state = actual state

Replication Controller (RC)
---------------------------

* Replicaset is the replacement for Replication Controller.
* RC can perform only equality based label selections on Pods where as RS supports set based criteria
* RS supports rolling updates which is used in Deployments, (RS is used by Higher objects such as Deployments and Daemonsets supporting zero downtime deployments)


Deployment
-----------

* A Kubernetes Deployment tells Kubernetes how to create or modify instances of the pods that hold a containerized application. 
* Deployments can help to efficiently scale the number of replica pods, `enable the rollout of updated code in a controlled manner, or roll back to an earlier deployment version if necessary.`
* Deployment is responsible for `auto-healing` and `zero down time` in k8s

Strategy
--------

[Refer here for explanation](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/#strategy)

* Strategy is used to replace old Pods by new ones.
* Strategy type can be "Recreate" or "RollingUpdate".
* "RollingUpdate" is the _default_ value

* `Recreate Deployment`:
    * All existing Pods are killed before new ones are created when type is _Recreate_
* `Rolling Update Deployment`:
    * The Deployment updates Pods in a rolling update fashion when type is _RollingUpdate_
    * You can specify `maxUnavailable` (default is 25%) and `maxSurge` (default is 25%) to control the rolling update process.
* [Refer to Trail 1 for explanation](https://directdevops.blog/2024/01/28/devops-classroom-notes-28-jan-2024-2/) to rollout and rollback new versions

### Difference between container, pod and deployment

![Deployment vs pod vs container](https://github.com/Nikhita-A/Learning-Journey/assets/148535211/d9be2004-7424-4494-b962-ac9ad29d77d0)



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
