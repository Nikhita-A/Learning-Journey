Azure DevOps
-------------

* Azure DevOps was earlier called as Visual Studio Team Services
* Continous Intergration practice is recommended to avoid integration failures during later stages of the project
* Big bang integrtion leads to lot of technical debts.
* The idea of Continuous integration is do give immedieate feedback to the developer.
* Artifact: Result of the build.

### Azure Pipelines

* Azure Pipelines is collection of
    * Stages
        * Jobs
            * Steps
                * tasks
                * bash

* Azure DevOps allows us to create reusable steps where we fill the yaml and it does the rest. This is done by `Task`.

### Agent

* Microsoft hosted agent
```yaml
---
pool:
  name: "Azure Pipelines"
  vmImage: "ubuntu-22.04"
```
* Self hosted agent

```yaml
---
pool: default
```

### Triggers

* When should the project be built
    * option 1: Whenever code is pushed to some branch
    * option 2: At schedule time
    * option 3: On Pull Request
* Sections in Azure DevOps pipeline yaml
    * trigger (option 1) Refer Here
    * schedules (option 2) Refer Here and Refer Here
    * pr (option 3)

### Variables in Azure DevOps Pipelines

* Types of variables
    * user-defined variables
    * System variables Refer Here and Refer Here for predefined variables
    * Environment variables
    * Syntax for using variables: `$(Variable-Name)`

### Parallel jobs

* Parallel jobs can be run with different agents for each job
* To execute one job after the completion of previous job, we use `dependsOn`
* Failure in the parent job will stop executing all the child jobs

### Azure DevOps Service Connections

* Azure DevOps Service Connections gives options to integrate/connect with different providers/registries (Example: GitHub, DockerHub etc...) 

### Parameters and Variables

* We use paramters to give flexibility to the user to change values

```yaml
# Passing values to parameters
parameters:
  - name: containerRegistry
    displayName: Service Connection For Docker Image
    default: 'mydockerhub'
  - name: vmImage
    displayName: Microsoft Hosted Agent Name
    default: 'ubuntu-22.04'
    values:
      - windows-2022
      - windows-2019
      - ubuntu-22.04
      - ubuntu-20.04

# defining parameters
containerRegistry: "${{ parameters.containerRegistry }}"
vmImage: "${{ parameters.vmImage }}"

```
* Variables

```yaml
# Passing values to parameters
variables:
  dockerfilelocation: '**/Dockerfile'

# defining variables
Dockerfile: "$(dockerfilelocation)"
```

### Azure DevOps MarketPlace

* Azure DevOps Market place gives us external tasks developed by community and use them in your pipelines 


### Locking Branches in Azure Devops

* Locking a branch prevents other users from changing the existing commit history. 
* Locking also blocks any new commits from being added to the branch by others.

### Azure DevOps Artifacts Feed

* Artifacts Feeds are organizational constructs that allow you to store, manage, and group your packages and control who to share it with. 
* Feeds are not package-type dependent. 
* You can store all the following package types in a single feed: npm, NuGet, Maven, Python, and Universal packages.

### Project

[Refer here for the project overview](https://directdevops.blog/2023/11/07/devops-classroom-notes-07-nov-2023/)