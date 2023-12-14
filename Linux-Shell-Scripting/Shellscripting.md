SHELL SCRIPTING
----------------

* Difference between parameters and variables
* What are positional and named arguments?
* Difference between parameters and arguments
* What are static and interactive scripts?
* Whenever we call one script from another script, one thing to remember is to _export the variables_, so that the variable can be defined in both the scripts
* `-v`: verbose mode and `-x`: debug mode


### Enhancing interactive scripts

```bash
# to limit the number of characters to be entered
read -n1 -p "Do you want to continue (y/n)"
 
# hiding text for sensitive information like pin/password
read -s -p "Enter password"
```

### Status codes

* The $? variable represents the exit status of the previous command.
* Exit status is a numerical value returned by every command upon its completion. 
* As a rule, most commands return an exit status of 0 if they were successful, and 1 if they were unsuccessful.


### Test commands

[Refer here for test command explaination](https://directdevops.blog/2020/08/31/linux-classroom-series-31-aug-2020/)