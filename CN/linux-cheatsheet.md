### Linux Commands Cheatsheet for MCA NSA Lab

#### 1. `man` - Display manual for a command

**Example:** `man ls`
**Flags:** `-k` (search keyword), `-f` (show short desc)

#### 2. `pwd` - Print working directory

**Example:** `pwd`
**Description:** Shows the current directory path.

#### 3. `ls` - List directory contents

**Example:** `ls -l`
**Flags:** `-a` (all files), `-l` (long list)

#### 4. `echo` - Display message or variable

**Example:** `echo "Hello"`
**Flags:** `-n` (no newline), `-e` (interpret escapes)

#### 5. `read` - Read input from user

**Example:** `read name`

#### 6. `more` / `less` - View file page-by-page

**Example:** `less filename.txt`

#### 7. `cat` vs `touch`

* `cat file.txt` – View file content
* `touch file.txt` – Create empty file or update timestamp

#### 8. `cd` - Change directory

**Example:** `cd /home/user`

#### 9. `mkdir` - Make new directory

**Example:** `mkdir newdir`
**Flags:** `-p` (make parent dirs)

#### 10. `mv` - Move or rename files

**Example:** `mv old.txt new.txt`

#### 11. `cp` - Copy files/directories

**Example:** `cp a.txt b.txt`
**Flags:** `-r` (recursive), `-i` (confirm before overwrite)

#### 12. `rm` - Remove files/directories

**Example:** `rm file.txt`
**Flags:** `-r` (recursive), `-f` (force)

#### 13. `tee` - Read from stdin and write to file

**Example:** `echo "data" | tee file.txt`

#### 14. `wc` - Word/line/char count

**Example:** `wc file.txt`
**Flags:** `-l` (lines), `-w` (words), `-c` (chars)

#### 15. `cut` - Remove sections from lines

**Example:** `cut -d":" -f1 /etc/passwd`

#### 16. `paste` - Merge lines of files

**Example:** `paste file1.txt file2.txt`

#### 17. `head` - First 10 lines of file

**Example:** `head file.txt`
**Flags:** `-n` (number of lines)

#### 18. `tail` - Last 10 lines of file

**Example:** `tail file.txt`
**Flags:** `-n` (number of lines), `-f` (follow live output)

#### 19. `grep` - Search for patterns

**Example:** `grep "text" file.txt`
**Flags:** `-i` (ignore case), `-r` (recursive)

#### 20. `find` vs `grep`

* `find . -name "file.txt"` – Locate files in directory hierarchy
* `grep "text" *.txt` – Search text inside files

#### 21. `expr` - Evaluate expressions

**Example:** `expr 5 + 3`

#### 22. `chmod` - Change file permissions

**Example:** `chmod 755 script.sh`

#### 23. `chown` - Change file owner

**Example:** `chown user:group file.txt`

#### 24. `>` `>>` - Redirect output (overwrite / append)

**Example:** `echo Hello > file.txt`, `echo Again >> file.txt`

#### 25. `|` - Pipe output from one command to another

**Example:** `ls | grep txt`

#### 26. `useradd` - Add a new user

**Example:** `sudo useradd newuser`
**Flags:** `-m` (create home dir), `-s` (shell)

#### 27. `usermod` - Modify a user

**Example:** `sudo usermod -aG sudo user1`

#### 28. `userdel` - Delete a user

**Example:** `sudo userdel user1`
**Flags:** `-r` (remove home dir)

#### 29. `passwd` - Set/change user password

**Example:** `passwd user1`

#### 30. `df` - Disk usage of filesystems

**Example:** `df -h`

#### 31. `top` - Real-time process info

**Example:** `top`
**Flags:** `-u user` (user specific)

#### 32. `ps` - Show running processes

**Example:** `ps aux`
**Flags:** `-e` (all processes), `-f` (full)

#### 33. `scp` - Secure file copy

**Example:** `scp file.txt user@remote:/home/user/`

#### 34. `tar` - Archive files

**Example:** `tar -cvf archive.tar file1 file2`
**Flags:** `-c` (create), `-x` (extract), `-v` (verbose), `-f` (filename)

#### 35. `ssh` - Connect to remote host

**Example:** `ssh user@host`

#### 36. `ssh-keygen` - Generate SSH keys

**Example:** `ssh-keygen -t rsa`

#### 37. `ssh-copy-id` - Copy public key to remote host

**Example:** `ssh-copy-id user@host`

---

### File Extensions (Right Side Reference)

| Extension | Meaning                |
| --------- | ---------------------- |
| `.sh`     | Shell script           |
| `.txt`    | Text file              |
| `.tar`    | Tarball archive        |
| `.gz`     | Gzip compressed file   |
| `.conf`   | Configuration file     |
| `.log`    | Log file               |
| `.out`    | Output file            |
| `.bashrc` | Bash shell config file |


39.* > vs >> - Output Redirection
*>: Overwrites file content
Example: echo "hi" > file.txt

*>>: Appends to file
Example: echo "hi" >> file.txt

40. cat vs less
cat file.txt: Displays full file (good for small files)

less file.txt: Paged view with scroll (better for large files)

41. ps vs top
ps aux: Snapshot of current processes

top: Live updating view of running processes

42. grep vs find
grep "text" *.txt: Search content inside files

find . -name "*.txt": Locate files by name

43. scp vs rsync
scp: Securely copy file (no resume support)

rsync: Efficient syncing (supports resume, diff)

