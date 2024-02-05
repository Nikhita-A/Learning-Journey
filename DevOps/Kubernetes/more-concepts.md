Statefulsets, ConfigMaps and Secrets
------------------------------------

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

### Config Maps

* Config maps can be used in two ways:
    * environmental variables
    * mount paths
* When we update the values in a config map, the changes doesnot apply for the existing pod but gets applied for the new pods created after the changes are done

### Kubernetes Secrets

* Secrets like passwords in k8s are stored in the form of `base64` encoding