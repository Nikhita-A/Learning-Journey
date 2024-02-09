Pod Scheduling
--------------

[Refer here for full notes](https://directdevops.blog/2024/02/03/devops-classroom-notes-03-feb-2024-2/)

### Assigning pods to nodes  

[Refer here for official docs](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/)

* A Pod goes into `pending state` when the scheduler has not assigned any node

* nodeSelector: 
    * assign pod to a node which matches particular labels (pod chooses the node)
* nodeName: 
    * scheduling pod based on the name of node
* Pod Affinity: 
    * Choosing the pod based on other pod's location is present based on topology(other external factors like nodes, availability zones, disk type etc..) using labels 
* Pod Anti-affinity: 
    * Choosing the pod based on other pod's location is __NOT__ present

[Refer here for affinity and anti-affinity manifests](https://github.com/asquarezone/KubernetesZone/commit/65baeef714ac1c688f3f7ba0b26a073f79dd23ce)

* Node Affinity: 
    * It is almost like nodeSelector but the rules of nodeAffinity are flexible and not that rigid as nodeSelector
* taints and tolerations: 
    * There has to be a matching toleration for a taint. 
    * For example, if a node 'A' has a `taint=NoSchedule` no pod can be scheduled on this node 'A' unless and untill that pod has a `toleration=NoSchedule`  (node chooses the pod)
* priorityClass: 
    * We define pods with some priority level using `priorityClass` and when there is a situation to remove the pods, the _scheduler_ first removes the low priority pods and then the medium priority pods and then the higher ones

Kubernetes Volumes
------------------

[Refer here for full notes](https://directdevops.blog/2024/02/04/devops-classroom-notes-04-feb-2024/)

* Volumes give resuable storage to the container and not to the pod
* Even though volumes claim to be permanent, there are permanent only inside the pod. Once the pod gets deleted, the volume also gets deleted

* CSI: Container Storage Interface
* When we create CSI, there is something called `Storage Class` that comes into play
* Storage Class: 
    * It is about the type of driver/disk which we want to create 
* Kubernetes gives the flexibility to work with any type of disk with the help of CSI
* Before CSI, we had to use only limited storage devices. But as CSI supports plugin mechanism, we can work with any kind of storage devices

### Persistent Volumes

* We create PVs and mount them to pods. So when the pod gets deleted and new pod is created, the same volume will be used and the data is not lost
* The PVs can be stored anywhere either is laptop, cloud, netapp storage etc..
* Kubernetes supports `both static and dynamic provision of volumes` (k8s creates volumes automatically) whereas in docker there is a `static provision of volumes` (we need to create volumes and docker doesnot do it automatically)

* Persistent Volume Claim: 
    * The request made by a pod for a PersistentVolume(PV) is called `Persistent Volume Claim`
* Storage Classes and Persistent Volumes only belong to a cluster and do not belong to any namespace whereas Persistent Volume Claim belong to a namespace