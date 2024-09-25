Conditional Handling
---------------------

[Refer here for explanation](https://github.com/Nikhita-A/python-for-devops/blob/main/Day-07/README.md)

### if-else condition

* Python program with `if-else` condition to check for the ec2 instance type

```python
import sys       # to read the command line arguments

instance_type = sys.argv[1]

if instance_type == "t2.micro":
    print("Ok, your instance is being created")
else:
    print("Only 't2.micro' instance type supported. Hence instance creation failed")
```

### if-else-elif condition

* Python program with `if-else-elif` condition to check for the ec2 instance type

```python
import sys       # to read the command line arguments

instance_type = sys.argv[1]

if instance_type == "t2.micro":
    print("This is a free tier instance")
elif instance_type == "t2.medium":
    print("This will charge 2 dollars per day")
elif instance_type == "t2.large":
    print("This will charge 4 dollars per day")
elif instance_type == "t2.xlarge":
    print("This will charge 8 dollars per day")
else:
    print("Please provide a valid instance type")
```


