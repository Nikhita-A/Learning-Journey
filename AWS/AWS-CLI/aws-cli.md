AWS-CLI
--------

* AWS CLI is a `python utility`
* It acts a layer between _User and AWS API_
* This can be used to automate infrastructure in AWS through command line
* To do this, we need to first `install and configure` AWS CLI
* AWS CLI will call the `API (Application Programming Interface)` of the application to automate infrastructure
* AWS CLI is a `quick usecase` when compared to other IaC tools i.e., quick actions can be performed using AWS CLI

```bash
# example
aws s3 ls
```
* But, when a large and complicated infrastructure is to be created we use terraform, CFT, CDK etc... over AWS CLI