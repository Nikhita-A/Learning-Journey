Lists and Tuples
-----------------

[Lists and Tuples complete notes](https://github.com/Nikhita-A/python-for-devops/tree/main/Day-08/01-Notes) `MUST READ`

* List is a `sequence` data type
* Lists DevOps usecase: list and print all the s3 buckets
* `Lists` are `mutable` whereas `Tuples` are `immutable` i.e., once a tuple is created, it cannot be resized(remove or add elements) whereas lists can be resized
* We can say `tuple is a list that cannot be resized`
* Tuples DevOps usecase: list of AWS user that have administrative privileges
* Tuples have better memory footprint (memory allocation) than lists
* `list syntax`
```python
student_names = ["ram", "shiv", "geetha", "siri"]

# add elements to the list
student_names.append("hari")

# remove elements from the list
student_names.remove("geetha")

print(student_names)

# to get the number of elemnts
print(len(student_names))
```
* `tuple syntax`
```python
student_names = ("ram", "shiv", "geetha", "siri")

# cannot add or remove elements in tuple

# to get the number of elemnts
print(len(student_names))
```

* Lists are `heterogeneous` in nature i.e., they can also be created with different data types
```python
random_list = [1, 2 , "ram", 52, "shiv"]
```