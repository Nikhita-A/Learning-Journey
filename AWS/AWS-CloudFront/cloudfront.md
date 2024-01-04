AWS Cloud Front
---------------

[Refer herefor detailed notes](https://github.com/iam-veeramalla/aws-devops-zero-to-hero/tree/main/day-19)

* Cloud front is a managed AWS service that provides a solution for `CDN (Content Delivery Network)`
* The CDN service in AWS is `Cloud front`
* CDN solves the problem of more `latency`, It provides the `lowest possible latency`
* CDN will `cache` the content in the nearest `edge locations`
* CDN will be mapped to the application DNS and whenever a user accesses the application (say images or videos), CDN creates local copies of the images or videos which will be viewed by the user
* Here, the images or videos are stored not only in the `central location` but their multiple copies are stored in different `edge locations`
* So that the contents of the application can be accessed for the users in their respective _edge locations_
* This way CDN solves the problem of _latency_ by maintaining multiple `local copies`

### Activity - Setting Up CloudFront on AWS for Static website hosting

* Create an S3 Bucket
* Upload Content to the S3 Bucket
* Create a CloudFront Distribution
* Update Website URLs 