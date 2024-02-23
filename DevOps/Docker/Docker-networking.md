Docker Networking
------------------

[Refer here for more info](https://github.com/iam-veeramalla/Docker-Zero-to-Hero/blob/main/networking.md)

* Docker networking provides
    * Communication between two containers 
    * Communication between containers and the host
    * Good network isolation between the containers
* Single Host Container networking is straight forward but multi host container networking is beyond just networking. So generally `orchestration` is used.
* Container orchestration is used to `manage multiple containers running on multiple hosts`. 
* Popular container orchestration engines
    * Kubernetes
    * Docker Swarm
    * Elastic Container Services (ECS)
    * Azure Container Instances (ACI)
    * Apache Mesos


### Types of Docker Networking

* __Bridge networking__:
    * This is the `default` networking in Docker
    * Whenever a container is created by default Docker creates a _virtual ethernet_ `veth` which is basically `Docker 0`
    * Without this virtual ethernet a container cannot communicate with the host
    * When there is no `bridge networking`, the application running inside the container cannot be accessed because user will be able to access the host but not the container as there is no networking between the host and container
    * __Custom Bridge networking__:
        * Logical isolation between containers can be achieved using this `Custom Bridge networking`
        * We can create our own bridge network i.e., `veth` using the `docker network create -d bridge my-bridge-network` command and connect it to the container
* __Host networking__:
    * In this networking, the containers will directly use the network of the host
    * Whenever a container is created, Docker will directly bind the container with the `eth0` of the host
    * This means whoever has access to the host will have access to the container as well
    * But, this is not that secure approach
* __Overlay networking__:
    * This mode enables communication between containers across multiple Docker host machines, allowing containers to be connected to a single network even when they are running on different hosts.
* __Macvlan Networking__:
    * This mode allows a container to appear on the network as a physical host rather than as a container.
