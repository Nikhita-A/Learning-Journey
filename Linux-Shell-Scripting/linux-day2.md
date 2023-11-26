Shell-Scripting
----------------


### Variable types (scalar) 

```bash
studentname=Henry
echo "The next student is $studentname"
Output: The next student is Henry
```

### Variable types (array) 

```bash
student names=("Teja", "ravi", "Hari")
echo "$studentnames[*]"
```
The above command Prints all the names
```bash
echo "$studentnames[0]"
```
The above command Prints the 1st name "Teja"
```bash
echo "$studentnames[1]"
```
 The above command Prints the 2nd name "ravi"

### More commands

* $$ : prints the process id(pid)
* $? : It will give the status of last passed command (status code with 0(success) or 1(failure))

* We can execute any of these commands to run the script
`sh example.sh` or `./example.sh`
** When we want to pass run time values, use `read -p`
** It will be passed as env variable while executing the script
** `readonly` will read from the system related information.
```bash
readonly SHELL
echo $SHELL
Output: /bin/bash
```

### 'for loop' function

* For items in a list
* Pick from the list
list=("Ram", "Teja")
do
    echo "$iteam"
    sudo apt update
 done

* Script 1

```bash
#!/bin/bash
numbers="1 2 3 4 5 6"
for num in $numbers
do
     echo "number:$num"
done
```
img ref ************************

* Script 2

```bash
#!/bin/bash
for file in $(ls)
do
echo "file:$file"
done
```

* Script 3

```bash
#!/bin/bash
for file in $(ls)
do
     echo "file us shown below"
     echo "$file"
done
```

### 'while' loop function

Operations:
=    -eq
!=   -ne
>    -gt
<    -lt
<=   -le
>=   -ge

* Script 1

```bash
#!/bin/bash
count=1
while [$count -le 5]; do
     echo "Iteration $count"
     count=$((count +1))
done
```

### 'case' statement

```bash
#!/bin/bash
read -p "enter a tool name:" tool
case $tool in
           "ansible")
                 echo "selected toolname is ansible"
              ;;
            "terraform")
                 echo "infra tool terraform is selected "
              ;;
             *)
               echo "invalid name of tool "
              ;;
 esac
 ```

### 'if else' condition

```bash

#!/bin/bash
number=15
if [ number -gt 10 ]; then
   echo "$number is greater than 10."
else
     echo "$number is not greater than 10."
fi
```
** Syntax
```bash
if [ <condition> ] ; then
    <Commands>
elif [ <condition> ] ; then
     <Commands>
else
    <Commands>
 fi
```
### Nested 'if else' condition
img ****************************

### function

```bash
addnames() {
     echo "first name is $1"
     echo "last name is $2"
     echo "Full name is $1 $2"
}
```
* `addnames "Ram" "Krishna"`