AWS Cloudwatch
---------------

* Cloudwatch is a service that is watching activities on the AWS cloud
* Cloudwatch is like a _gatekeeper_ for AWS which helps in understanding  
    * monitoring 
        * Cloudwatch plays a crucial role in `infrastructure monitoring`
        * real-life metrics: 
            * `CPU Utilization` is the default metrics in Cloudwatch
        * custom metrics:
            * By default, Cloudwatch tracks the `CPU Utilization` of ec2 instances but does not track the `memory utilization` by default
            * To get this, we need to enhance the Cloudwatch i.e., we need to send the `custom metrics` to Cloudwatch
        * alarms
    * alerting 
    * reporting 
    * logging
        * log insights: logging is basically a capability of providing you the insights of which service is accessing the other service
    * cost optimization: 