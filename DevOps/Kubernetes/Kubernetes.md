Kubernetes 
-----------

### api-server

* Kubernetes is like a captain of the ship who actually carries the containers
* In k8s, there is an `api server` in control plane  
* All the communication (internal and external) in k8s is handled by `api-server`
* api server is responsible for all types of communication of k8s

### etcd

* `etcd` is the memory(storage, backups etc..) of k8s cluster. It is not developed by k8s. It is a third party component. It stores the information about the pods running but not about what is running inside the pod. To solve this, we can use something called `labels` in k8s. So, the information about what is running inside the pod can be identified using `labels`. K8s identifies all the resources with the help of `labels`

### kubectl

* `kubectl`: kubectl is a command line way of interacting with k8s cluster. A user speaks with `kubectl` (through command line) and `kubectl` speaks with `api-server` of k8s [yaml format]

* User can approach k8s through `rest-api` way also [json format]

### manifest

* `manifest`: user passes the instructions in a `manifest` which is received by the `api-server` and the api-server stores that information in `etcd`

### scheduler

* `scheduler`: anything new to be created (checks from `etcd`) is done by `scheduler`. Out of all the available servers, it finds a suitable server and runs the container on it.

### controller

* `controller`: It is responsible for maintaining the state i.e., actual state=desired state.

### kubelet

* `kubelet`: It is the agent of control plane. On every worker node, there will be one `kubelet` present. Whenever scheduler wants to create something, it speaks with the `kubelet`. This is the component that communicates between control plane and node. kubelet can create containers for those who follow a standard called CRI

* `container runtime(CRI)`: kubelet can speak with any container technology as long as it is a CRI compliant. CRI is the standard for k8s to support any container technology

### other important terms

* `kube-proxy`: It helps in dealing with some of the network aspects of the pod

* `Cloud Controller Manager`: related to eks and aks etc i.e when we use EKS on AWS, this component has the knowledge of all the AWS related resources and when when we use AKS on azure, this component has the knowledge of all the azure related resources

* `service`: equivalent to a layer 4 load balancer
