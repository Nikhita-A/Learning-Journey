Service in k8s
---------------

* Service is the critical component of k8s
* Whenever we create a _deployment_, we also create a _Service_ along with it
* A abstract way to expose an application running on a set of pods as a network service
* It is just like a proxy that identifies the pods using `labels and selectors`
* When we create a service, the `cloud controller manager` will generate an _external ip address_ to the service
* When we create a service, service creates `endpoint` with all the ip-addresses of matching pods
![svc endpoint](https://i0.wp.com/directdevops.blog/wp-content/uploads/2024/01/k8s26.png?w=800&ssl=1)


### Purpose of /etc/resolve.conf

* Specifically, it `translates domain names to IP addresses` by querying the Domain Name Server (DNS). 
* The /etc/resolv. conf file is the file that configures the domain name resolver.
* It's responsible for translating machine names into IP addresses.

### Is the load balancer service type only restricted to cloud providers?


![image2](https://github.com/Nikhita-A/Learning-Journey/assets/148535211/f6c34852-07fb-4dcc-b9b7-3eab086f0eb5)


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

