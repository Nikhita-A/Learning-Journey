Evolution of running applications
---------------------------------

[Refer here for explaination](https://directdevops.blog/2023/12/29/devops-classroom-notes-29-dec-2023/)

### Generation 1: __Physical Machines__

![Physical machines architecture](https://i0.wp.com/directdevops.blog/wp-content/uploads/2023/12/docker1.png?w=800&ssl=1)

### Generation 2: __Hypervisors (Vmware)__

![Hypervisors architecture](https://i0.wp.com/directdevops.blog/wp-content/uploads/2023/12/docker2.png?w=800&ssl=1)

### Generation 3: __Containers (Docker)__

![Containers architecture](https://i0.wp.com/directdevops.blog/wp-content/uploads/2023/12/docker3.png?w=800&ssl=1)

* [Refer here](https://directdevops.blog/2023/12/30/devops-classroom-notes-30-dec-2023/) for the differences in the above three generations


Architectures for running applications
----------------------------------------

[Refer here for complete notes](https://directdevops.blog/2023/12/31/devops-classroom-notes-31-dec-2023/)

### Monolith architecture

![Monolith architecture](https://i0.wp.com/directdevops.blog/wp-content/uploads/2023/12/docker5.png?w=800&ssl=1)

### Microservice architecture

![Microservice architecture](https://i0.wp.com/directdevops.blog/wp-content/uploads/2023/12/docker6.png?w=800&ssl=1)

### Docker architecture


Docker Installation
--------------------

* Points to remember while installing Docker
    * Docker when installed on a linux machine creates a group called as `docker` group.
    * Docker client communicates with docker server (docker daemon) on the unix socket which is accessible only to the users of docker group.
    * So after installation add your user to docker group
    ```bash
    sudo usermod -aG docker <user-name>
    # exit
    # relogin

    # example 1: for ubuntu linux distribution
    sudo usermod -aG docker ubuntu

    # example 2: for RedHat linux distribution
    sudo usermod -aG dpcker ec2-user

    # example 3: for other users like Dell etc..
    sudo usermod -aG docker Dell
    ```

Docker Internals
-----------------

[Refer here for complete notes](https://directdevops.blog/2024/01/04/devops-classroom-notes-04-jan-2024/)

* [Must Read](https://directdevops.blog/2019/01/31/docker-internals/) article on namespaces and cgroups

* Container can be defined as isolation with some resource limits
    * `Isolations` on the linux machines are created using a linux kernel feature called `Namespaces`.
    * `Resource Limits` are applied using kernel feature called as `cgroups (Control groups)`.

* __Namespaces:__
    * Process namespace (pID)
    * Network namespace
    * Mount namespace
    * User namespace

### Port Forwarding in Docker

* Port forwarding is a crucial method for Docker that allows you to expose container ports to the outside world. 
* It enables you to run apps in a separate environment while keeping them accessible.

Containerization
------------------

[Refer here for explaination](https://directdevops.blog/2024/01/05/devops-classroom-notes-05-jan-2024/)

* This is a way of ensuring your application developed runs on containers.
* Application Types:
    * Client Side Applications
    * Server Side Applications
    * Stateful Applications
    * Stateless Applications