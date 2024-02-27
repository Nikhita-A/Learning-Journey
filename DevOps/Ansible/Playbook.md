Ansible Playbook
-----------------

* Ansible automation can be executed using two approaches
    * imperative: using ansible commands (adhoc)
    * declartive: writing playbooks

### Ansible Adhoc-command

* Ansible Adhoc-command structure

```bash
ansible -i <inventory> -m "<module name>" -a "parameter1=value1 parameter2=value2"
```

* Basic adhoc command with `ping` module to check connection between servers

```bash
ansible -m ping -i hosts all
```

* Adhoc-command for uninstalling ansible

```bash
ansible -i hosts -m apt -a "name=nginx purge=true state=absent"
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

### Sample Ansible Playbook

* Playbook to install __apache__ on all the servers

```yaml
---
- name: install apache
  become: yes
  hosts: all
  tasks:
    - name: install apache server
      ansible.builtin.apt:
        name:
          - apache2
        state: present
        update_cache: yes
```


