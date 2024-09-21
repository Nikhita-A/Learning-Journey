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