Elastic Search
---------------

[Refer here for Elastic Search](https://directdevops.blog/2023/09/14/devops-classroomnotes-14-sep-2023/)

* Elastic Cloud offers Elastic Search as a Service.

###  Why use ELK if Prometheus and Grafana are already there?

*  ELK (Elasticsearch, Logstash, and Kibana) and Prometheus with Grafana are both open-source tools that provide similar observability and monitoring, but they have different use cases. 
* ELK is better for centralized logging, troubleshooting, and monitoring application logs, while Prometheus is better for metrics. 
* ELK can handle large volumes of log data and provide real-time insights. Prometheus excels in real-time metric-based monitoring. 
* Most major productions require using both ELK and Prometheus, each for their own specialty.
* ELK is important for log analytics, as more IT infrastructure moves to public clouds. ELK can monitor server logs, application logs, and clickstreams. 
* ELK also has advanced log management and analysis capabilities, while Prometheus does not.
* You can choose one or integrate both ELK and Prometheus to create a comprehensive solution, depending on your monitoring and logging needs.
* Prometheus and Grafana can be used for querying and dashboarding, and are more customizable than AWS CloudWatch.
* Prometheus is more customizable, so you can build unique dashboards that boost your productivity.
* CloudWatch, however, charges for each additional dashboard. So we prefer them over Cloudwatch.

### Shards and Replicas

* Shards: Partitions
* Replicas: Duplicates

[Refer here for detailed view on shards and replicas](https://www.baeldung.com/java-shards-replicas-elasticsearch)

![Shards and Replicas](https://i0.wp.com/directdevops.blog/wp-content/uploads/2023/09/mon9.png?w=800&ssl=1)

### Timeout Errors

* HTTP protocols are stateless and every client waits for a period of time called as TIMEOUT to get response. 
* If server doesn’t respond we see an error `Your request has been timed out`