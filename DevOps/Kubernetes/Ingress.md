Kubernetes Ingress
-------------------

### Microservice
 
* These category of applications where you have a smaller component of the application running on its own with its own database is called a `microservice`
* The basic concept of microservice is it is a smaller component which can run individually and for each microservice we write a `deployment`
* Every microservice has a service 
* All internal communications will be via `service` and external communications via `loadbalancer`

### Ingress

[Refer here for official docs](https://kubernetes.io/docs/concepts/services-networking/ingress/)

* Ingress exposes HTTP and HTTPS routes from outside the cluster to services within the cluster. 
* Traffic routing is controlled by rules defined on the Ingress resource.
* Here is a simple example where an Ingress sends all its traffic to one Service:

![image1](https://github.com/Nikhita-A/Learning-Journey/assets/148535211/83c84ff1-bd16-44c0-a541-0cb1d2791252)

* Sample ingress YAML

```yaml
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: minimal-ingress
  annotations:
    nginx.ingress.kubernetes.io/rewrite-target: /
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

### Ingress Controller

[Refer here official docs](https://kubernetes.io/docs/concepts/services-networking/ingress-controllers/)

* Ingress Controller is loadbalancer that we can choose from the requirements
