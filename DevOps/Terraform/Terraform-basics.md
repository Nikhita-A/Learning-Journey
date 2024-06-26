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

[Refer here for detailed notes](https://github.com/iam-veeramalla/terraform-zero-to-hero)

### Difference between a 'resource' and 'data source' in terraform

* Resource: 
    * A resource in Terraform represents a piece of infrastructure that Terraform can manage. 
    * It could be a virtual machine, a network interface, a DNS record, etc. 
    * Resources are typically things that you create, update, or delete as part of managing your infrastructure.
* Data Source: 
    * A data source in Terraform is used to fetch information or data from an external source that Terraform does not manage. 
    * This could include information about existing resources or configurations that you need to reference or use in your Terraform configuration.
