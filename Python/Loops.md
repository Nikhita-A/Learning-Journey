Loops
-----

[Loops full notes](https://github.com/Nikhita-A/python-for-devops/tree/main/Day-09)

* We use `loops` to perform a repetitive action on a block of code 

Types of loops
--------------

### for loop

* __for loop:__ definite/static number of executions. We define how many number of times the program is to be executed
* When we know that we need to execute a particular block of code for a __definite number of times__, we use `for loop`
* In python, _for loops_ execute against  sequence beacause sequence are a definite number of things (lists, tuples, range etc..). 
* `range` is a _sequence_ datatype. 
* `range(10)` means list of numbers from 0 to 9
* 'for loop' `Syntax:
```python
for variable in sequence:
...
...
...
```
```python
# print the name 'python' 100 (0 to 99) times

for i in range(100):
    print("python")
```
```python
colours = ["violet", "indigo", "blue", "green"]

for x in colours:
    print(x)
```

### while loop

* __while loop:__ dynamic number of executions
* When we are not aware of the number of executions, we use `while loop`
'while loop' depends on `condition`
* 'while loop' Syntax:
```python
while condition
...
...
...
```
* 'while loop' usecase: __print a statement("deleting files") till all the files in a particular folder get deleted__

### Loop Control Statements

* [Loop Control Statements notes](https://github.com/Nikhita-A/python-for-devops/blob/main/Day-09/02-loop-controls.md) `MUST READ`

* `break` statement
* `continue` statement