Kubernetes Architecture
------------------------

* In Kubernetes, there are two components:
    * Control Plane (Master nodes): 
        * Responsible for controlling all the actions
    * Data Plane (Worker nodes): 
        * Responsible for executing all the actions

### Master nodes or Control Plane

* In k8s Control Plane, there are Five components
    * api-server
    * scheduler
    * etcd
    * controller
    * cloud controller manager

### Worker nodes or data plane

* In k8s worker nodes, we have three components:
    * kubelet
    * kube-proxy
    * container runtime

* Kubernetes supports 
    * clusters 
    * auto scaling 
    * auto healing  
    * enterprise level support
* In Docker, the smallest unit is `container` and in Kubernetes, the smallest unit is `Pod`
* Whenever a container is created, it does not run automatically. We need to have a `Container Runtime (CRI)` to run a container.
* `Docker shim` is the CRI in Docker
* In k8s, we have master or control plane and worker nodes
* Any request in kubernetes is received by the control plane and passed to the worker nodes
* `kubelet` is responsible for running pods and maintaining them
* `kube-proxy` provides networking in k8s
* `api-server` is the heart of k8s
* `scheduler` is responsible for scheduling the pods and resources on k8s
* The entire k8s cluster information is stored as objects or key value pairs in `etcd`
* `Replica set` is like a `controller` in k8s
* If the k8s cluster is created on _on-premises_, there is no need of creating the component `cloud controller manager`
* `kubectl` is a command line for k8s

Kubernetes Production Systems
------------------------------

### Kubernetes distributions

* Kubernetes with tools that make the installation easier and come with other add-ons are known as a Kubernetes distribution.
* 9 Popular Kubernetes Distributions
    * Google Kubernetes Engine (GKE) ...
    * Azure Kubernetes Service (AKS) ...
    * Rancher. ...
    * Red Hat OpenShift. ...
    * Docker Kubernetes Service (DKS) ...
    * Amazon Elastic Kubernetes Service (EKS) ...
    * VMware Tanzu Kubernetes Grid (TKG) ...
    * Mirantis.

### KOPS

* Kubernetes Operations (KOPS)
* The lifecycle of k8s is managed by KOPS and it is most widely used fot installing k8s