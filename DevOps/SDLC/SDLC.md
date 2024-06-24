Software Development Lifecycle
------------------------------

### Waterfall model

![Waterfall model](https://www.tutorialspoint.com/sdlc/images/sdlc_waterfall_model.jpg)

* Drawbacks
    * Longer release time
    * No Feedback Path
    * Difficult to accommodate Change Requests
    * Limited Flexibility
    * Limited client Involvement
    * Late Defect Detection
    * Lengthy Development Cycle

### Agile methodology

* Requirements
* Analysis
* Design
* Implementation
* Testing
* Deployment
* Maintenance

[Refer here for detailed notes](https://datarob.com/content/images/2019/08/SDLC-stages.png)

![SDLC](https://datarob.com/content/images/2019/08/SDLC-stages.png)

* Agile --> flexible
* `Scrum` is a popular agile framework
* Every release made in agile should be usable by customers

### Roles in Scrum

* __Product Owner__
    * Tells what should be done
    * Prioritizing tasks/sprints
    * Approval or rejection of work results
* __Scrum Master__
    * Facilitates everything needed to complete the tasks
    * eg: credentials, resources etc.. 
    * Facilitates Scrum events like `Sprint planning, Daily scrum, sprint review and Sprint retrospective`
* __Team member__
    * Who does the tasks 
    * basic size of scrum team should not be more than 9
* __Srum Board__
    * To-do
    * In-progress
    * Done
* __Sprint Burndown Charts__
    * A graphical representation of the sprint workflow
* All the requirements are added to something called `Product Backlog`
* All the prioritized tasks from the _Product Backlog_ will be added to something called `Sprint Backlog`
* Each item from _sprint backlog_ will be broken down into some smaller tasks and the estimated time required to complete the whole sprint
* After every sprint, we give a demo to the customer

### Project management tools

* Azure DevOps scrum boards
* Rally scrum boards
* Jira scrum boards

Web Applications
-----------------

* Web applications serve using __http__ protocols
* `Internet` and `Worldwide web` are completely two different things
    * Internet is an infrastructure (road)
    * WWW is a web of sites or a protocol that runs on internet (car/bus/bike etc..)

### Server types and purposes

* Web Server
    * Anything that responds to http requests and display a web page
    * Apache, nginx etc..
    * web servers are light weight

* Database Server
    * To store and manage data

* Application Server
    * All the code written by developers will be hosted on the application servers
    * Tomcat, JBoss, Wildfly, Microsoft .NET etc..
    * This can understand high level languages like python, java, node.js etc..
    * This is where all the business logic exists
* File Server
    * This server storage can be accessed over the network
    * Data will  be present in the file servers and the other servers can access it so that the data need not be copied on all the servers
    * Windows file server, Samba etc..