Service in k8s
---------------

* Service is the critical component of k8s
* Whenever we create a _deployment_, we also create a _Service_ along with it

### What does service in k8s do

* Service in k8s does the following:
    * Load balancing
        * Service (SVC) in k8s acts as a `load balancer` by using the _kube-proxy_ component to distribute the requests across the pods
    * Service Discovery
        * Service does a `service discovery` using the `labels` and `selectors`
        * Service keeps a track of the pods using _labels_ and _selectors_. 
        * This the `service discovery mechanism` in k8s
        * The advantage of this is, whenever a pod goes down and gets created again, even if the ip address gets changed, the labels will not change and the service tracks the pods based on the labels specified
    * Expose pods to external world

### Types of service

* There are three types  of service in k8s:
    * `Cluster IP`: 
        * People who has access to the cluster ip address can access the application.
        * This is the _default_ type
    * `Node port`: 
        * People within the organizational network i.e. whoever has access to the node ip address can access the application
    * `Load balancer`: 
        * Exposes the application to external world. People across the web can access the application. 
        * Here the _cloud controller manager_ generates an `Elastic public ip address (eip)` to the service
        * Anyone can access this eip of the svc and it forwards the request to the pod in which the application is running

