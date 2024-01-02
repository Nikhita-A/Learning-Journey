Cloud Formation
----------------

* CloudFormation automates the infrastructure on AWS
* CFT implements the principles of IaC
* CFT has `drift detection` feature along with `infrastructure creation`
    * `Drift detection`: Drift detection enables you to detect whether a stack's actual configuration differs, or has drifted, from its expected configuration. 
* CFT can be written either in `JSON` or `YAML` format

### CFT Workflow

* AWS CloudFormation => create stack => import written CF template => done
* `Stack` is something that implements the template

### Skeleton of a CloudFormation template

```
Version
Description
Metadata
Parameters
Rules
Mappings
Conditions
Resources *
```

### Parameters in CFT

* Defining a parameter in a template
* Referencing a parameter within a template

[Refer here for detailed explaination](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/parameters-section-structure.html)

### DIfference between Terraform and CloudFormation 

* `Terraform` is basically used in a _muti-cloud_ environment whereas `CloudFormation` is confined to AWS