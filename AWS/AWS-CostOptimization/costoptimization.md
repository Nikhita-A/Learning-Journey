AWS Cost Optimization
----------------------

[Refer here for detailed notes](https://github.com/iam-veeramalla/aws-devops-zero-to-hero/tree/main/day-18)

* The primary responsibility of a DevOps engineer is to reduce the cost of cloud resources as much as possible i.e., optimize the cost based on the requirements of the organization
* One primary thing that he could do is to `delete the stale resources` 
    * Stale resources: Resources that are not in use for a longer time and will not be used further
* We can write a `lambda function` for each of the resources in AWS using `boto3` module of `python` to call the AWS API and get the information about any _stale resouces_ and delete them
* Use Case:

```markdown
Say for example:

* A user has created an `ec2 instance` and takes the `snapshot` of the `volume` attached to that instance

* And for some reason he wants to delete that instance and the volume gets deleted automatically along with the instance but the snapshot still remains and he forgot to delete the snapshot manually

* Due to this, he will still be charged for the existing snapshot even though the instance is deleted

* So, the solution for this is to create a `lambda function` to look for any stale snapshots and delete them

* The lambda function searches for the snapshots that are not associated to any volume (as the volumes associated to these snapshots are already deleted) and deletes them
```