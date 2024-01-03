AWS Cloudwatch
---------------

[Refer here for detailed notes](https://github.com/iam-veeramalla/aws-devops-zero-to-hero/tree/main/day-16)

* Cloudwatch is a service that `monitor resouces and applications` in AWS
* It is a service that watches all the activities on AWS cloud
* Cloudwatch is like a _gatekeeper_ for AWS which helps in understanding  
    * monitoring 
        * Cloudwatch plays a crucial role in `infrastructure monitoring`
        * real-life metrics: 
            * `CPU Utilization` is the default metrics in Cloudwatch
        * custom metrics:
            * By default, Cloudwatch tracks the `CPU Utilization` of ec2 instances but does not track the `memory utilization` by default
            * To get this, we need to enhance the Cloudwatch i.e., we need to send the `custom metrics` to Cloudwatch
        * alarms
            * By configuring `alarms`, respective teams can be notified accordingly with the help of `Simple Notification Service (SNS)` topic in alarms
    * alerting 
    * reporting 
    * scaling
        * As said that Cloudwatch is a gatekeeper, it keeps a watch on the activities that are happening and informs to other AWS resources like `Auto Scailng Groups` to scale tha running instances
        * It integrates with other AWS resources to sort of notify them whenever necessary
    * logging
        * log insights: logging is basically a capability of providing you the insights of which service is accessing the other service
    * cost optimization: 
        * `Cost optimization` is nothing but reducing the cost of AWS resources and `Cloudwatch` plays a crucial role in doing this

### Log Groups

* Cloudwatch automatically creates a group for the `logs`
* If we have some 100 projects inside a resource, for each project it will create a `log group` so that it will be easy to identify and differentiate between the logs 