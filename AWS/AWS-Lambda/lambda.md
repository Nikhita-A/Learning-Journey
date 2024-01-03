AWS Lambda
-----------

[Refer here for detailed notes](https://github.com/iam-veeramalla/aws-devops-zero-to-hero/tree/main/day-17)

* AWS Lambda can be used for 
    * Cost optimization
    * event driven actions
        * Lambda functions are `event driven` i.e., they can be triggered by a specific event from _cloudwatch, s3 etc.._ and cannot be run manually
* AWS Lambda deals with two primary characteristics:
    * Compute
    * Serverless
* Lambda functions belong to the  family of `Compute` but solves the problem of `serverless` 
* Lambda functions offer _compute_ services but follow the _serverless_ architecture
* AWS automatically takes care of the server depending upon the application that we are running
* Whenever we create an `lambda function` an `AWS role` gets created automatically and if needed we can also assign a role of our choice or alter the default role as well by changing the permissions in the role

### Serverless

* AWS will automatically create a compute service (say ec2 instance) depending upon the requirements (CPU, memory, RAM, autoscaling etc...) of the application and once the application is run and the functionality is done AWS will automatically `tear down` the instance
* In the `serverless` architecture, we are not responsible for the server at all and AWS will handle everything and automates everything
* Example:

```markdown
__A food delivery application:__

* Whenever a user places an order AWS Lambda creates the infrastructure and runs the application

* Once the payment is done, AWS Lambda will automatically tear down the server
```

* Whereas in `EC2`, we need to manually scale-up and scale-down or tear down the instances when not in use as AWS EC2 is a _pay-as-you-go_ service
* In `EC2`, we get the details of the instance like the _ip-addresses, subnet ranges etc.._ but whereas in `AWS Lambda`, we don't get any information about the server on which the application is hosted
* Opting for a `serverless architecture` or `server architecture` depends on the approach on which the application is written
    * For example, a food delivery application can run both on _serverless architecture_ and _server architecture_