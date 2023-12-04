TERRAFORM BASICS
-----------------

* Infrastructure as code(IaC)
    * Terraform
    * cloud formtion
    * any template format like json or yaml
* Multi-cloud 
    * AWS: CloudFormation
    * Azure: Azure Resource manager
    * OpenStack: Heat template
* Why terraform when there are many IaC tools available?
    * Terraform automates the infrastructure irrespective of the cloud provider. 
    * Just tell terraform the provider(AWS, Azure, OpenStack, GCP etc..) where to automate infrastructure and it does the rest of the work.
* `HASHICORP(HCL)` is the terraform templating language.
* Terraform also uses the `API as a Code` approach i.e., it directly talks to the provider APIs

### Terraform Template:

* 'Provider' configuration: 
    * This step will verify if terraform has access to the provider (say AWS) or not when you run a particular command

### Terraform Commands:

* 'terraform init': 
    * It will initialize the configuration i.e., it will read the terraform configuration file 
* 'terraform plan': 
    * It is just like a dry run where before creating the infrastructure or before applying the infrastructure we can use this `terraform plan` command and it will show you what exactly it is going to create

* Terraform State file:
    * Terraform uses this state file to record whatever infrastructure it is creating (so next time when you write a new terraform script or you will add more script to this) 

### TERRAFORM LIFECYCLE(in short):
```
init --> plan --> apply --> destroy 
```
 
