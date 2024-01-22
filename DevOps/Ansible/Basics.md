Ansible
-------

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

### Limitations of Ansible

![Limitations](https://cdn.ttgtmedia.com/rms/onlineImages/networking-4_limitations_of_ansible-f_mobile.png)

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

* Diff between adhoc commands and playbook
    * For one or two tasks: adhoc commands
    * For multiple tasks: playbook