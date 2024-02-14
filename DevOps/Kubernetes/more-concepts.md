Statefulsets
------------

[Refer here for more notes](https://directdevops.blog/2024/02/04/devops-classroom-notes-04-feb-2024-2/)

### Deployment vs Statefulset

* Statefulset creates pods and every pod creates a persistentVolume (PV) i.e., if the replicas are 3, then 3 PV's will be created 
* If the name of statefulset is `mongo`, then the pod name would be something like `mongo-0, mongo-1, mongo-2`
* The names are predictable in case of statefulsets unlike deployments, In deployments, there will be some random names
* A k8s service of type _none_ which doesnot have any ip address is called `headless service`
* The basic functionality of statefulset is
    * If any pod gets deleted or goes down, a new pod will be generated with the same name and gets mounted to the same PV and hence the data will not be lost
* Why do we use statefulset
    * To store data of any application, which requires state. Eg: Database, image repositories etc..
* How do we access pods via statefulset
```bash
<nameOfStatefulset-ordinaryNumber.nameOfService>                 
            or
<nameOfPod.nameOfService>

Eg: mongo-0.nginx-svc

# nameOfStatefulset-ordinaryNumber = nameOfPod
# Eg: nameOfStatefulset = mongo
    # ordinaryNumber = 0
    # nameOfPod = mongo-0
```

Config Maps
-----------

* Config maps can be used in two ways:
    * environmental variables
    * mount paths
* When we update the values in a config map, the changes doesnot apply for the existing pod but gets applied for the new pods created after the changes are done

Kubernetes Secrets
------------------

* Secrets like passwords in k8s are stored in the form of `base64` encoding

AutoScaling in Kuberenetes
--------------------------

* Only thing that works on premises for scaling is `Horizontal Pod Autoscaling (HPA)` when metrics server is enabled
* When it comes to autoscaling, we have three types of autoscaling
    * HPA (on-premises): k8s itself gives this feature
    * VPA
    * ClusterAutoScaler (Cloud/managed k8s service): Every cloud has its own autoscaling feature and the basic autoscaling for managed k8s service comes from the cloud's auto scaling feature itself

Upgrading k8s clusters
-----------------------

* `Cordon`: no further scheduling should be done on that node (take diversion)
* `Drain`: all the running pods on the node should be re-allocated to some other node
* `Upgrade`: upgrading the cluster
* `Uncordon`: allowing scheduling on the node after the cluster upgration is completed
* Before doing all of this, `etcd backup` should be taken
* This should not be done on all the clusters at the same time, it has to be done one by one
```bash
kubectl cordon node-name
kubectl drain node-name
kubectl upgrade node-name
kubectl uncordon node-name
```