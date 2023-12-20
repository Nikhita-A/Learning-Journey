Compute
--------

* Compute refers to the capability of running applications
* There are three main categories of compute:
    * Virtual machines
    * Platforms
    * Serverless

### Virtual Machine

* A Virtual Machine (VM) is a compute resource that uses software instead of a physical computer to run programs and deploy applications.
* AWS provides EC2 instances as VMs which are elastic(scalable) in nature and that is why they are called `Elastic Cloud Compute`

### Elastic Bean Stack

* This looks like PaaS(Platform as a Service)
* Elastic Beanstalk is a service for deploying and scaling web applications and services.
* Upload your code and Elastic Beanstalk automatically handles the deployment from capacity provisioning, load balancing, and auto scaling to application health monitoring.
* This is the `runtime environment` for the application. 
* The service automatically creates a URL for access to the application and a CNAME.

### Batch

* Batch is basically a `high performance compute`
* AWS Batch helps you to run batch computing workloads of any scale. 
* AWS Batch automatically provisions compute resources and optimizes the workload distribution based on the quantity and scale of the workloads.

### Lambda

* AWS Lambda is a serverless, event-driven compute service that lets you run code for virtually any type of application or backend service without provisioning or managing servers. 
* You can trigger Lambda from over 200 AWS services and software as a service (SaaS) applications, and `only pay for what you use`.
* Lambda is an ideal compute service for application scenarios `that need to scale up rapidly, and scale down to zero` when not in demand.

### Vertical Scaling and Horizontal Scaling

* Vertical Scaling:
    * To resize the machine
    * To scale up or scale down the size lo existing instance
* Horizontal Scaling:
    * To change the number of servers or machines
    * To scale up or scale down the number of machines depending on the requirement