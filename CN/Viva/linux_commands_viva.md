**Linux Commands -  Description, Usage, Flags, and Example**

1. **man** – Displays the manual of a command.

   * **Example**: `man ls`
   * **Flags**: `-k` (search), `-f` (whatis)

2. **ls** – Lists directory contents.

   * **Example**: `ls -l`
   * **Flags**: `-l` (long listing), `-a` (show hidden), `-h` (human-readable)

3. **echo** – Displays a line of text or variable value.

   * **Example**: `echo "Hello"`
   * **Flags**: `-n` (no newline), `-e` (enable escapes)

4. **read** – Reads input from the user.

   * **Example**: `read name`
   * **Flags**: `-p` (prompt), `-s` (silent for passwords)

5. **more/less** – View file content page by page.

   * **Example**: `less filename`
   * **Flags** (less): `-N` (line numbers), `-S` (chop long lines)

6. **cat** – Concatenates and displays file content.

   * **Example**: `cat file.txt`
   * **Flags**: `-n` (number lines), `-E` (show \$ at end)

7. **cd** – Changes the current directory.

   * **Example**: `cd /home/user`
   * **Flags**: None

8. **mkdir** – Creates a new directory.

   * **Example**: `mkdir mydir`
   * **Flags**: `-p` (make parent dirs), `-v` (verbose)

9. **mv** – Moves or renames files/directories.

   * **Example**: `mv file1.txt file2.txt`
   * **Flags**: `-i` (prompt), `-v` (verbose)

10. **cp** – Copies files and directories.

    * **Example**: `cp a.txt b.txt`
    * **Flags**: `-r` (recursive), `-i`, `-v`

11. **rm** – Removes files/directories.

    * **Example**: `rm file.txt`
    * **Flags**: `-r`, `-f` (force), `-i`

12. **touch** – Creates an empty file or updates timestamp.

    * **Example**: `touch file.txt`
    * **Flags**: `-c` (no create), `-a` (access time)

13. **wc** – Word, line, byte, and char count.

    * **Example**: `wc file.txt`
    * **Flags**: `-l` (lines), `-w` (words), `-c` (bytes)

14. **cut** – Cuts sections from lines of files.

    * **Example**: `cut -d":" -f1 /etc/passwd`
    * **Flags**: `-d` (delimiter), `-f` (field)

15. **paste** – Merges lines from files.

    * **Example**: `paste file1 file2`
    * **Flags**: `-d` (delimiter), `-s` (serial)

16. **head** – Displays first lines of a file.

    * **Example**: `head file.txt`
    * **Flags**: `-n 5` (first 5 lines)

17. **tail** – Displays last lines of a file.

    * **Example**: `tail file.txt`
    * **Flags**: `-n 5` (last 5 lines), `-f` (follow)

18. **grep** – Searches for patterns in text.

    * **Example**: `grep "root" /etc/passwd`
    * **Flags**: `-i` (ignore case), `-r` (recursive), `-n` (line numbers)

19. **expr** – Evaluates expressions.

    * **Example**: `expr 5 + 3`
    * **Flags**: Used with math/logic operations

20. **chmod** – Changes file permissions.

    * **Example**: `chmod 755 script.sh`
    * **Flags**: `-R` (recursive), numeric or symbolic

21. **chown** – Changes file owner.

    * **Example**: `chown user file.txt`
    * **Flags**: `-R`, `--from`

22. **> / >>** – Redirects output to file (overwrite/append).

    * **Example**: `echo "hi" > file.txt`

23. **| (pipe)** – Passes output of one command to another.

    * **Example**: `ls | grep txt`

24. **useradd** – Adds a new user.

    * **Example**: `useradd john`
    * **Flags**: `-m` (home dir), `-s` (shell)

25. **usermod** – Modifies an existing user.

    * **Example**: `usermod -aG sudo john`
    * **Flags**: `-a`, `-G`, `-s`, `-L`, `-U`

26. **userdel** – Deletes a user.

    * **Example**: `userdel john`
    * **Flags**: `-r` (remove home)

27. **passwd** – Changes user password.

    * **Example**: `passwd john`
    * **Flags**: `-l` (lock), `-u` (unlock), `-d` (delete passwd)

28. **df** – Shows disk space usage.

    * **Example**: `df -h`
    * **Flags**: `-h`, `-T`, `-i`

29. **top** – Displays real-time process info.

    * **Example**: `top`
    * **Flags**: `-u` (specific user)

30. **ps** – Displays current running processes.

    * **Example**: `ps aux`
    * **Flags**: `-e`, `-f`, `-u`, `-aux`

31. **ssh** – Connects to remote server securely.

    * **Example**: `ssh user@host`

32. **ssh-keygen** – Generates SSH key pair.

    * **Example**: `ssh-keygen -t rsa`

33. **ssh-copy-id** – Copies SSH key to remote server.

    * **Example**: `ssh-copy-id user@host`

---


