Ansible
---------

* Ansible is majorly used in DevOps to deploy applications into servers across various environments.

[Refer here for detailed notes](https://directdevops.blog/2023/10/03/devops-classroomnotes-03-oct-2023/) `MUST READ COMPLETELY TO COVER ALL THE TOPICS`

### Configuration Management Types

* pull based Configuration Management
    * Nodes communicate with Configuration Management Server to deploy configuration
    * Examples: Chef, Puppet
* push based Configuration Management:
    * Configuration Management Server communicates with Nodes to deploy configuration
    * Examples: Ansible, Salt

### Declarative programming

* Idempotance: 
    * The result of execution of Configuration Management Script is same when we execute it once or multiple times
* Configuration Drift: 
    * Difference between desired state and actual state.


### Ansible Adhoc-command

* Basic adhoc command with `ping` module to check connection between servers

```bash
ansible -m ping -i hosts all
```

### Ansible Playbook Structure

![Ansible Playbook Structure](https://github.com/Nikhita-A/Learning-Journey/assets/148535211/b699e6f6-283d-4291-95fe-b9688e8c7fae)

```yaml
---
- name: <name of playbook - text>
  hosts: <where to execute-text>
  become: <need sudo permissions -bool>
  tasks: # <list of task>
  - name: Ensure apache is at the latest version # name of task
    ansible.builtin.yum: # module name
      name: httpd # module arguments
      state: latest # state
```

### Basic Ansible Commands

```bash
ansible-playbook --syntax-check -i hosts activity1.yaml
ansible-playbook --check -i hosts activity1.yaml
ansible-playbook -i hosts activity1.yaml
```

### Project

[Refer here for the project](https://directdevops.blog/2023/10/21/devops-classroom-notes-21-oct-2023-2/)
