MAVEN
------

[More info on Maven](https://en.wikipedia.org/wiki/Apache_Maven)

* Maven is a build automation tool used primarily in Java projects and any other java based programming languages.
    * Any language that generates a java bytecode is called _java-based programming language_.
    * Eg: groovy, scala(used in big data) etc...
* Maven follows the _convention over configuration_ approach.
    * Convention over configuration: The convention over configuration approach makes the developers' tasks easier as they don't need to create any project build process. 
    * Maven creates the build process and automates it. 
    * Also, the developers don't need to store the configuration details within the pom.
* Plugins:
    * Most of Maven's functionality is in plug-ins. 
    * A plugin provides a set of goals that can be executed using the command `mvn <plugin-name>:<goal-name>`. 
    * For example, a Java project can be compiled with the compiler-plugin's compile-goal by running `mvn compiler:compile`


### Project Object Model(POM)

* Maven projects are configured using a Project Object Model (POM) in a pom.xml file.
    * POM: [Project Object Model](https://maven.apache.org/guides/introduction/introduction-to-the-pom.html)
    * A Project Object Model or POM is the fundamental unit of work in Maven. 
    * It is an XML file that contains information about the project and configuration details used by Maven to build the project. 
    * A Project Object Model (POM) provides all the configuration for a single project. 
    * General configuration covers the project's name, its owner and its dependencies on other projects.

* The source directory for a _java_ project would be `src/main/java` and the test source directory would be `src/test/java`
* The source directory for a _mulesoft_ project would be `src/main/mule` and the test source directory would be `src/test/mule` and so on.



### Maven Phases and Goals

[Maven Goals and Phases](https://maven.apache.org/guides/introduction/introduction-to-the-lifecycle.html) `MUST READ - Official documentation`

[Maven Goals and phases](https://www.baeldung.com/maven-goals-phases) `MUST READ - for easy understanding`

* There are three built-in build lifecycles: 
    * default: 
        * The _default_ lifecycle handles your project deployment
        * This is the main lifecycle, as it’s responsible for project deployment
    * clean: 
        * The _clean_ lifecycle handles project cleaning
        * This phase is to clean the project and remove all files generated by the previous build
    * site: 
        * The _site_ lifecycle handles the creation of your project's web site
        * This phase is to create the project’s site documentation
* When the `default` lifecycle is used, Maven will first 
    * `validate` the project, then will try to 
    * `compile` the sources 
        * If the _mvn compile_ is success, it will create the `.class` files in the `target/classes/<project-name>.class` location
        ```
        target/classes/hello-world.class
        ```
    * run the sources against the `tests`
        * _mvn test_ will run unit tests and creates test reports in xml format
        * test results will be store in `target/surefire-reports/TEST-*.xml`
    * `package` the binaries (e.g. jar) 
        * When we run _mvn package_, it creates a jar or war file in the _target_ folder `target/<project-name>-<version-name>.jar`, in the `<project-name>-<version-name>.jar` format
        
        ```
        hello-world-1.0.0.jar
        springpetclinic-1.1.0-SNAPSHOT.jar
        calc-2.0.0-SNAPSHOT.jar
        ```
    * run integration tests against that package 
    * `verify` the integration tests 
    * `install` the verified package to the local repository
        * this will copy the artifacts to local repo
    * `deploy` the installed package to a remote repository.
        * this will copy the artifacts to remote repo


### Maven repositories

![image-1](https://github.com/Nikhita-A/Learning-Journey/assets/148535211/441bacfd-fbcf-4ffa-99b4-53f7768c7b65)


[Three types of maven repositories](https://directdevops.blog/2023/11/24/devops-classroom-notes-24-nov-2023/)

### Maven central repository

* Maven has a central repository from where it downloads all the dependencies 
* Using _maven central repository_, we can search for required dependencies, copy the _xml_ code to the dependency section of pom.xml and execute the compile and package
* When we specify a required dependency in the _pom.xml_ file, maven downloads those dependencies from the _maven central repository_ to `~/.m2/repository/<dependency-folder>`
```
~/.m2/repository/org/springframework/boot/spring-boot-starter/3.1.5/<dependency-files>
```
* When we run `mvn compile`, the code from the `src/main/java/org/springframework/boot/spring-boot-starter/3.1.5/<dependency-files>` location will be compiled


### Unit tests and Integration tests

* Unit testing:
    * Unit means small amount of code (For example, _add functionality_ w.r.t calculator project)
    * If we write a code to test the _add functionality_ in the same project, it is called _unit testing_
    * When you test any functionality of the code written by developer, it is _unit testing_
    * Unit tests focus on internal functionality
* Integration testing:
    * _Integration tests_ checks whether the code is able to communicate with external components or not (For example, to check whether an SMS is sent or not w.r.t texting applications)
    * It is a type of software testing where components of the software are gradually integrated and then tested as a unified group.


### Environmental Variables

* To set environmental variables to all the users in the machine
```bash
sudo vi /etc/environment
TEST=123
source /etc/environment
```
* To set environmental variables to a specific user in the machine
```bash
sudo vi ~/.bashrc
export TEST=345
```
* To set java home to PATH variable
```bash
sudo vi /etc/environment
JAVA_HOME=/usr/lib/jvm/java-1.17.0-openjdk-amd64
PATH="$JAVA_HOME/bin:"
source /etc/environment
```

