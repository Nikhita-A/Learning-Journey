Pipeline as a Code
------------------


[Refer here for detailed notes](https://directdevops.blog/2023/11/27/devops-classroom-notes-27-nov-2023/)

* Pipeline Syntax

![image-2](https://github.com/Nikhita-A/Learning-Journey/assets/148535211/5f2edf3a-72bc-4447-866f-15562830d4b7)


### Sonar Scanner

* To integrate sonarqube analysis with the jenkins pipeline, the `sonar scanner` is to be installed on the `jenkins node` where the pipeline is to be run
* `Sonar Scanner` can be used for static and dynamic analysis of a code to detect common code issues such as bugs and vulnerabilities.

### Quality Gate

* _Quality gate_ basically means stopping the build if there are any code quality issues

### Multi node projects

* In jenkins, diiferent parts of the project can be built on different nodes by configuring `agent` on th nodes. These agents could also be configured using `labels`
* Stash and Unstash
    * Stash: Stash is like copy from one place (say node)
    * Unstash: Unstash is like paste to other place (say node)

NOTE
----

* __While building a java project, the jar or war file can either be built in the Dockerfile itself by adding the `mvn package` command in RUN instruction OR it can be built by adding `sh 'mvn package'` in the buildstage in Jenkinsfile, stash the jar or war file obtained and unstash it in the dockerbuild stage__