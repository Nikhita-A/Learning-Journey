INTRODUCTION TO PYTHON
----------------------

### Why python? (or) shell vs python

[Refer here for detailed explanation](https://github.com/Nikhita-A/python-for-devops/blob/main/Day-01/01-shell-vs-python.md)

* The `primary purpose` of shell scripting is to interact with , manage and get some data from the linux machines
* `shell` is restricted only to `linux` whereas `python` can work both on `linux and windows` machines (this is not the only or important reason)
* When we want to perform some complex tasks or write complex programs, interact with APIs, we use `python` over shell script 

### Datatypes

[Refer here for detailed explanation](https://github.com/Nikhita-A/python-for-devops/tree/main/Day-02) `MUST READ`

* Everything we write in a file is a `data` for the compiler and interpreter
* It needs to know which type of data it is. So every programming language has data types
* In python, we don't need to declare a datatype explicitly. Python identifies datatypes based on `syntax`
* These type of programming languages are called `dynamic typed programming languages`
* Some common data types in python:
    * String: "python", 'python'
	* Numeric
	    * Int: 6, 8
		* Float: 7.3, 0.001
	* Sequence
	    * List
		* Tuple
	* Mapping
	* Boolean
* Python as a programming language supports some `inbuilt functions` which are written and managed by python itself
* Each data type in python has inbuilt functions

* `split` function

```python
# Split the username

arn = "arn:aws:iam::123456789012:user/johndoe"

print(arn.split("/")[1])

# Output
johndoe

print(arn.split("/")[0])

# Output
arn:aws:iam::123456789012:user

```

* [Examples for all the other inbuilt functions](https://github.com/Nikhita-A/python-for-devops/tree/main/Day-02/examples)



### Regex (Regular expression) function

* This function is used `to find particular patterns in a function`
* DevOps usecase: 
    * Consider a huge `log file` where we can use this _regex function_ to filter out the `error logs` or `warning logs`


### Keywords

[Keywords full notes](https://github.com/Nikhita-A/python-for-devops/blob/main/Day-03/keywords.md) `MUST MUST READ`
 
* Keywords are used `to build and implement the logic in python`
* Eg: 'for' in for loop, if/else, try/except etc..\
* Without keywords we cannot write a program/build a logic in python

### Variables

[Variables full notes](https://github.com/Nikhita-A/python-for-devops/blob/main/Day-03/variables.md)

* Variables are used to parameterize the values in a program instead of hardcoding them
* Reducing the time, efforts and errors
* Types of variables:
    * Global variables: applicable for all the functions in a program
	* Local variables: applicable to only specific functions in a program
* Naming convention : 
    * It is a good practice to declare variable names in `lower case`
    * Snake casing: `cloud_instance_type`
	* Camel casing: `cloudInstanceType`
	* Declare variables as descriptive as possible (name = "python" and not n = "python")