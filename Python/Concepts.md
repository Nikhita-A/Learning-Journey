Function in Python
------------------

* Function is a basic piece of logic which can be re-used
* Functions 
    * take input 
    * perform the required logic and
    * returns the output
* Whenever we write a function in python, we need to explicitly invoke/call the function. Only then it displays the output 
* Advantages of functions in python
    * Readability of the code
    * Re-usability (modularity)
    * Debugging
* Python functions usecase in DevOps POV: 
    * to create s3 buckets, ec2 instances etc..
    * to list out issues and pull requests in a repository
    * to create jira tickets
* Sample `Calculator program`
```python
# calc.py
num1 = 10
num2 = 5

def addition():
    add = num1 + num2
    print("Value of addition is " + str(add))

def sub():
    subtract = num1 - num2
    print("Value of subtraction is " + str(subtract))

def mul():
    multiply = num1 * num2
    print("Value of multiplication is " + str(multiply))

def div():
    division = num1 / num2
    print("Value of division is " + str(division))

# call/invoke the functions
addition()
sub()
mul()
div()
```

Modules in Python
-----------------

* Modules --> Re-usability
* Modules = group of functions
* Any python program is by default a module
* To use modules, we use the keyword `import`

```python
import calc  # import calc.py

calc   # invoke/call the function

# assigning an alias name to calc.py
import calc as calculator

calculator
```
* Sample `Calculator program` using modular approach

```python
def addition(num1, num2):
    add = num1 + num2
    return add
    
def sub(num1, num2):
    subtract = num1 - num2
    return subtract
    
def mul(num1, num2):
    multiply = num1 * num2
    return multiply
    
def div(num1, num2):
    division = num1 / num2
    return division

# call/invoke the functions inside print statements
print("Value of addition is " + str(addition(5, 10)))
print("Value of subtraction is " + str(sub(10, 5)))
print("Value of multiplication is " + str(mul(10, 5)))
print("Value of division is " + str(div(10, 5)))
```

Packages in Python
------------------

* Packages --> collection of modules/python files
* If a code is written in multiple python files, we can bundle all of the files into a `package`
* PYPI - Python Package Index : to download python modules
* Using `pip` we can download anything from PYPI

```bash
# to download modules
pip install boto3
pip install jira
pip install github
```
```bash
# to list out all the packages that are downloaded/available in the system
pip list
```

Virtual Environment (venv)
--------------------------

* This is useful when we run multiple projects in the same machine
* venv creates a logical separation on the machine for python packages
* venv allows you to isolate dependencies and packages for different projects, avoiding conflicts with system-wide packages

```bash
# creates virtual environment for project-1
python -m venv project-1

# creates virtual environment for project-2
python -m venv project-2

# switches to project-1 venv (Linux OS)
source project-1/bin/activate

# switches to project-1 venv (Windows OS)
project-1\Scripts\activate

# to quit from venv
deactivate
```