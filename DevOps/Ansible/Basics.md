Ansible
-------

* Ansible is majorly used in DevOps to deploy applications into servers across various environments.
* Before the advent of Ansible, managing servers (on-premises) was done by writing `shell scripts` which also had many drawbacks
    * Managing servers include:
        * upgrades
        * secure patches
        * default installations
* Ansible solves the biggest problem of managing servers
* Configuration Management aims to solve the problem of managing configurations of multiple servers
* Ansible modules are written in `python language`
* One of the advantages of ansible is we can write own ansible modules and share them in something called `ansible galaxy` so that others could also use those modules
* To setup Ansible, there need to be a `passwordless authentication` between the servers

[Refer here for detailed notes](https://directdevops.blog/2023/10/03/devops-classroomnotes-03-oct-2023/) `MUST READ COMPLETELY TO COVER ALL THE TOPICS`


### Configuration Management Types

* pull based Configuration Management
    * Nodes communicate with Configuration Management Server to deploy configuration
    * Examples: Chef, Puppet
* push based Configuration Management:
    * Configuration Management Server communicates with Nodes to deploy configuration
    * Examples: Ansible, Salt

### Declarative programming

* Configuration Management tools are generally `idempotent`
    * `Idempotency`: An operation is idempotent _if the result of performing it once is exactly the same as the result of performing it repeatedly without any intervening actions_.
    * This means that if you run a playbook with the same set of inputs, you should not expect it to make any changes on the system.
* Idempotance: 
    * The result of execution of Configuration Management Script is same when we execute it once or multiple times
* Configuration Drift: 
    * Difference between desired state and actual state.
* Playbook:
    * This is the deployment expressed in declarative format

### Limitations of Ansible

![Limitations](https://cdn.ttgtmedia.com/rms/onlineImages/networking-4_limitations_of_ansible-f_mobile.png)


### Passwordless Authentication between servers

* [Refer here for the steps](https://directdevops.blog/2024/02/22/devops-classroom-notes-22-feb-2024/)


### Project

[Refer here for the project](https://directdevops.blog/2023/10/21/devops-classroom-notes-21-oct-2023-2/)

### Q/A

* Does ansible supports linux and windows or only linux?
    * Ansible supports both linux and windows
    * For linux servers, it uses a protocol called `ssh` to connect to servers
    * For windows servers, it uses a protocol called `winRM` to connect to servers

* Diff between chef/puppet and ansible (or) Why ansible over other CM tools (or) Why ansible is so popular?

    ![Differences table](https://www.veritis.com/wp-content/uploads/Infographics/chef-vs-puppet-vs-ansible-what-are-the-differences-it-infographic.png)

* Is ansible push based CM or pull based CM?
    * Push based CM

* Does ansible supports all the cloud providers?
    * For ansible, it does not matter what the cloud provider is
    * What matters to ansible is the public ip and whether the ssh/winRM is enabled to instance or not,

* What is inventory file?
    * This is list of servers where we want to deploy applications
    * An Ansible inventory is a collection of managed hosts we want to manage with Ansible for various automation and configuration management tasks.
    * Typically, when starting with Ansible, we define a static list of hosts known as the inventory.
    * The Ansible inventory file defines the hosts and groups of hosts upon which commands, modules, and tasks in a playbook operate. 

* Diff between adhoc commands and playbook
    * For one or two tasks: adhoc commands
    * For multiple tasks: playbook