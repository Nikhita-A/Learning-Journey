Jenkins Concepts
-----------------

### Tools Section

* Tools section in jenkins help in finding tool locations like jdk,maven etc..
* The advantage is we can configure multiple versions (Eg: MAVEN 3.9.5, MAVEN 3.8.8, JAVA 17, JAVA 11 etc...)

### More Concepts

* Publish test results
* Archive the artifacts 
    * This activity allows users to download the artifacts directly from jenkins
* Day Build (dev-branch) and Nightly Build (release-branch)
* Triggers:
    * Poll SCM
    * Build Periodically
* Configuring Email notifications 
    * Manage Jenkins => System => Email Notification
* Environmental variables in jenkins
    * Run `print env` in the bash to get the list of environmental variables


### Parameters in jenkins
    
* This feature allows users to pass arguments/parameters while building the code
* We can add different parameters like `string parameter`, `choice parameter` etc...

### Executors in jenkins

* In jenkins every node will have executors.
* The number of parallel projects which you can build depend on number of executors
* By default Jenkins has 2 executors. But we can increase the no of executors

### Distributed builds in jenkins (nodes)

[Refer here for more info on nodes and executors](https://directdevops.blog/2023/11/26/devops-classroom-notes-26-nov-2023/)

* On Linux nodes, Jenkins expects JDK to be present
