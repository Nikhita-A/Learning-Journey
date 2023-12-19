JENKINS
--------

* Jenkins is a self-contained, open source automation server which can be used to automate all sorts of tasks related to building, testing, and delivering or deploying software.
* Jenkins is a Java-based open-source automation platform with plugins designed for continuous integration. 
* It is used to continously create and test software projects, making it easier for developers and DevOps engineers to integrate changes to the project and for consumers to get a new build.


### Static Code Analysis:

* Static code analysis, or static analysis, is a software verification activity that analyzes source code for quality, reliability, and security without executing the code. Using static analysis, you can identify defects and security vulnerabilities that can compromise the safety and security of your application. Static analysis can be a cost-effective approach to measure and track software quality metrics without the overhead of writing test cases or instrumenting your code.

* Static code analysis is generally good at finding coding issues such as:
    * Programming errors
    * Coding standard violations
    * Undefined values
    * syntax violations
    * Security vulnerabilities
    * Error detection
    * Low cost
    * Compliancd to coding standards
    * Proving the absence of critical run time errors
    

### Jenkins Workspace

* In the context of Jenkins, a workspace refers to a directory on the Jenkins build agent (or node) where the code is checked out and where the build and other related activities take place. When Jenkins starts a build job, it creates a dedicated workspace for that job on the build agent.

* The workspace is essentially a working directory where Jenkins performs various tasks, such as checking out the source code from version control, compiling code, running tests, and ultimately creating the build artifacts. Each build job in Jenkins has its own isolated workspace, preventing interference between different jobs running concurrently on the same build agent.

* By using workspaces, Jenkins enables parallel execution of multiple build jobs on the same build agent without conflicts. It also allows for easy integration with version control systems, as the source code is typically checked out into the workspace before the build process begins.


### Jobs

* Whenever we create a jenkins project, the project definition is stored in `~/jobs/<project-name>`
```
~/jobs/spring-petclinic
```
* In this location, the `config.xml` file will have the steps defined in the job written in xml format 


### Workspace

* The source code from git will be cloned to the `~/Workspaces/<project-name>` location

```
~/Workspaces/spring-petclinic
```

### Build and Package the code

* Build the code:
    * Converting the code from human readable format to machine understandable format i.e. converting the code into and executable that OS understands(C, C++ etc) or converting the code into bycode that runtime understands (Java, .net etc)

* Package the code:
    * Packaging the code refers to converting the source code into some 'jar file/war file/dll file/zip file' etc so that the end user can use the packaged version of code to download/install and run the application in enduser environment 
  
* Compile a code:
    * Compiling is the transformation from Source Code (human readable) into machine code (computer executable). 

* Makefile:
    * Makefile is a tool to simplify or to organize code for compilation. 
    * It is a set of commands (similar to terminal commands)
    * Makefiles are used to help decide which parts of a large program need to be recompiled. 
    * In the vast majority of cases, C or C++ files are compiled.


### What is ANT and how did it help in building java code?

* Apache ANT is a software tool for automating software build processes
* The main known usage of ANT is built of java applications
* Ant supplies a number of built-in tasks allowing to compile, assemble, test and run Java applications. 
* Ant can also be used effectively to build non Java applications, for instance C or C++ applications.


# Why maven over ant?

* ANT expects the dependencies to be present in the same location of the source code
* And every time when there is any change, the `xml` file needs to be configured manually for every project
* Handling dependencies become easy with _Maven_
* Maven has a central repository from where it downloads all the dependencies 
