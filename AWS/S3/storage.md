AWS Simple Storage Service (S3)
--------------------------------

[Refer here for detailed notes](https://github.com/iam-veeramalla/aws-devops-zero-to-hero/tree/main/day-9)  `MUST READ`


* Amazon S3 (Simple Storage Service) is
    * Scalable 
        * Unlimited amount of storage for bucket (individual file size not greater than 5 TiB)
    * Highly available and durable
        * Creates copies of the objects in all the availability zones of the region
    * Secure
        * S3 provides policies, access control and encrytion settings ae appropriately configured
    * Cost effective
    * Efficient performance
    * Reliable (99.99999999999% - 11 9's assurance)
* In S3, we have `buckets` to store `objects` which is globally accessed through a web (http) url
* AWS S3 provides `default encrytion` and `object locking` features as well


### Storage Classes

* Standard:
    * High Storage cost
    * low access cost
    * default storage class
* Infrequent Access:
    * Low storage cost
    * High access cost
* Glacier:
    * No access
    * cheapest storage cost

### Bucket Versioning

* AWS S3 supports `versioning` (like git)
* If versioning is not enabled, the object (file) gets over-rided and if versioning is enabled different versions of the object are stored with the same name
* This way, we can create multiple versions without any restrictions

### Static Website Hosting

* AWS S3 is the cheapest service to host `Static Websites`
* We can host our static websites i.e., upload our `index.html` files to S3 buckets and the website can be accessed over the internet using the S3 url
* We need to give the `public access` and attach necessary policies to the bucket with `index.html` file so that it can be accessed over the internet by everyone