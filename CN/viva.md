

**📝 Linux Viva Q\&A (Basics to Scripting)**

---

**1. What is Linux?**
Linux is an open-source, Unix-like operating system kernel used in a wide range of devices from servers to smartphones.

**2. What is the Linux kernel?**
The kernel is the core part of the operating system that manages hardware, memory, processes, and system calls.

**3. What are Linux distributions?**
Distributions (distros) are Linux-based operating systems built using the Linux kernel. Examples include Ubuntu, Fedora, CentOS, Debian.

**4. Name some popular Linux distributions.**
Ubuntu, Debian, Fedora, CentOS, Arch Linux, Kali Linux, Red Hat.

**5. What is a shell in Linux?**
A shell is a command-line interface that allows users to interact with the operating system.

**6. What are some commonly used shells?**

* Bash (Bourne Again Shell)
* sh (Bourne Shell)
* zsh (Z Shell)
* csh (C Shell)
* ksh (Korn Shell)

**7. What is Bash?**
Bash stands for Bourne Again SHell and is the default shell in most Linux distributions.

**8. What is shell scripting?**
Shell scripting is writing a series of commands in a file to automate tasks in the Linux shell.

**9. What is the purpose of `#!/bin/bash` (Shebang)?**
The shebang tells the system which interpreter to use to run the script (e.g., Bash).

**10. How do you make a script executable?**
Use: `chmod +x script.sh`

**11. How do you run a shell script?**
`./script.sh` or `bash script.sh`

**12. What is the difference between `=` and `==` in shell scripting?**

* `=` is used for string comparison inside `[ ]`.
* `==` is also used for string comparison, but only in `[[ ]]`.

**13. What does `-eq` mean in shell scripting?**
It means "equal to" for integers. Example: `[ $a -eq $b ]`

**14. What are other integer comparison operators?**

* `-ne` : Not equal
* `-gt` : Greater than
* `-lt` : Less than
* `-ge` : Greater or equal
* `-le` : Less or equal

**15. What is the lifespan of a variable in shell scripting?**
By default, variables are temporary and last only for the life of the shell in which they were created.

**16. How do you declare a variable in shell?**

```bash
name="John"
```

**17. How do you access a variable’s value?**

```bash
echo "$name"
```

**18. What is the `read` command used for?**
To take input from the user.

**19. Example of taking input from user:**

```bash
read -p "Enter your name: " name
echo "Hello, $name"
```

**20. What is an `if` statement?**
Used for conditional execution of code.

```bash
if [ $a -gt 10 ]; then
  echo "Greater than 10"
fi
```

**21. What is `if-elif-else` used for?**
For multiple condition checking:

```bash
if [ $a -gt 10 ]; then
  echo "Big"
elif [ $a -eq 10 ]; then
  echo "Equal"
else
  echo "Small"
fi
```

**22. What is a `while` loop?**
A loop that runs while a condition is true.

```bash
i=1
while [ $i -le 5 ]; do
  echo $i
  ((i++))
done
```

**23. How is a `for` loop written in shell?**

```bash
for i in 1 2 3 4 5; do
  echo $i
done
```

**24. What is the use of `break` in loops?**
To exit the loop early.

**25. What is the use of `continue` in loops?**
To skip the current iteration.

**26. What is the `test` command used for?**
To evaluate expressions (can also use `[ expression ]`).

**27. What is the `wc` command?**
Used to count lines, words, and characters in a file.

**28. Common `wc` options:**

* `wc -l` : lines
* `wc -w` : words
* `wc -m` : characters
* `wc -c` : bytes
* `wc -L` : length of the longest line

**29. How do you check if a file exists?**

```bash
if [ -f "file.txt" ]; then
  echo "File exists"
fi
```

**30. How do you check if a directory exists?**

```bash
if [ -d "dir" ]; then
  echo "Directory exists"
fi
```

**31. What is `tr` used for?**
To translate characters:

```bash
tr 'A-Z' 'a-z' < file.txt
```

**32. What does `echo` do in shell?**
It displays messages or variable values.

**33. What is the difference between `$0`, `$1`, `$@`, `$#`?**

* `$0` : script name
* `$1` : first argument
* `$@` : all arguments
* `$#` : number of arguments

**34. What is `exit` used for?**
To exit from a script or program.

**35. What is a comment in shell scripting?**
Starts with `#`, used to explain code.

**36. How do you write multiline comments?**
Using `: <<'END'` syntax:

```bash
: <<'END'
This is
a multiline comment
END
```

**37. What is a function in shell scripting?**
Reusable block of code:

```bash
greet() {
  echo "Hello $1"
}
greet "User"
```

**38. What does `local` mean in a function?**
It limits the variable scope to the function only.

**39. How do you redirect output to a file?**
Use `>` to overwrite, `>>` to append.

```bash
echo "Hello" > file.txt
```

**40. What is the `cat` command used for?**
To display file contents.

**41. What is the `chmod` command?**
Used to change file permissions.

**42. What is the use of `ls` command?**
List directory contents.

**43. What is `pwd`?**
Prints the present working directory.

**44. What does `cd` do?**
Changes the current directory.

**45. What is `man` command used for?**
To view manual pages of commands. Example: `man ls`

**46. How do you declare an array in Bash?**

```bash
arr=(one two three)
echo ${arr[1]} # Outputs: two
```

**47. How do you get the length of a string in Bash?**

```bash
str="hello"
echo ${#str}  # Outputs: 5
```

**48. How do you check if a variable is empty?**

```bash
if [ -z "$var" ]; then
  echo "Empty"
fi
```

**49. What is the default shell in most Linux systems?**
Bash

**50. How do you debug a Bash script?**
Use: `bash -x script.sh`
.
