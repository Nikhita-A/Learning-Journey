Kubernetes Ingress
-------------------

### Microservice

[Refer here for detailed notes](https://directdevops.blog/2023/12/31/devops-classroom-notes-31-dec-2023/)
 
* These category of applications where you have a smaller component of the application running on its own with its own database is called a `microservice`
* The basic concept of microservice is it is a smaller component which can run individually and for each microservice we write a `deployment`
* Every microservice has a service 
* All internal communications will be via `service` and external communications via `loadbalancer`

### Ingress

[Refer here for official docs](https://kubernetes.io/docs/concepts/services-networking/ingress/)

* Ingress exposes HTTP and HTTPS routes from outside the cluster to services within the cluster. 
* Traffic routing is controlled by rules defined on the Ingress resource.
* Ingress cannot run on it own. Whenever we create an ingress, we also need to create an `Ingress Controller`
* Here is a simple example where an Ingress sends all its traffic to one Service:

![image1](https://github.com/Nikhita-A/Learning-Journey/assets/148535211/83c84ff1-bd16-44c0-a541-0cb1d2791252)

* Service operates at `layer 4` load balancing and it does  not have the intelligence of _http_ and thus cannot operate via urls
* The only thing it knows it __ip addresses and port__
* We need a `layer 7` load balancing which is not there is k8s service
* This is where `Ingress` comes into play
* Here we can do
    * path based routing
    * domain/name based routing 
* The problem with k8s ingress is, ingress cannot do routing
* We can only specify the routing rules in ingress
* So, here we take the help of `Ingress Controller` which can actually do routing
* k8s by default do not have any ingress controller. So we need to rely on third party ingress controllers. Eg: nginx, traefik, HAProxy, aws application LB
* We specify the rules in _ingress_ and those rules are implemented by _ingress controller_
![osi model](https://cf-assets.www.cloudflare.com/slt3lc6tev37/6ZH2Etm3LlFHTgmkjLmkxp/59ff240fb3ebdc7794ffaa6e1d69b7c2/osi_model_7_layers.png)

* How to secure urls in k8s?
    * tls termination: security at the LoadBalancer(Ingress Controller) level
    * secure containers: providing security to every single container running inside the cluster
    * service mesh (linkerd and istio)

* Simple ingress YAML

```yaml
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: test-ingress
spec:
  defaultBackend:
    service:
      name: test-service
      port:
        number: 80       
```

* Sample ingress YAML

```yaml
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: minimal-ingress
spec:
  ingressClassName: nginx-example
  rules:
  - http:
      paths:
      - path: /testpath
        pathType: Prefix
        backend:
          service:
            name: test
            port:
              number: 80
```
* Host-based and Path-based routing

![image3](https://github.com/Nikhita-A/Learning-Journey/assets/148535211/cd82e1a3-90c5-41f9-9055-3a2c043bf03b)


### Ingress Controller

[Refer here official docs](https://kubernetes.io/docs/concepts/services-networking/ingress-controllers/)

* Ingress Controller is loadbalancer that we can choose from the requirements
* Ingress Controller looks for the ingress resources and updates and configures the load balancer
* The configuration of ingress varies from controller to controller, it can sometimes be inside the cluster or outside the cluster

### Why Ingress over Service?

* While running an application, say for example there are 100 microservices running within the application, we need to create 100 `services` for each of the microservice which is not effective
* So, to solve this we create an `ingress` and with an `ingress controller` and it will route the traffic to the service
* Ingress is an API object in Kubernetes that manages external access to services within a cluster. 
* It allows you to define how external HTTP/S traffic should be routed to your services based on rules.
* Ingress is particularly useful for handling HTTP and HTTPS traffic, providing features like path-based routing, SSL termination, and load balancing.
* `Service` works at `layer 4` 
* Ingress acts as a `layer 7 (application layer)` load balancer.
* External endpoint for every service not a good idea
* So, The main advantage of ingress is 
    * Rather than having multiple public endpoints(service), we will have only one public endpoint(ingress)