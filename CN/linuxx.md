man ls

echo -e "God bless you \n Welcome"


🧾 ls Command Options – Quick Reference
| Command    | Description                                                       |
| ---------- | ----------------------------------------------------------------- |
| `ls`       | List files and directories in current directory (default view).   |
| `ls -l`    | Long listing format (shows permissions, owner, size, date, etc.). |
| `ls -c`    | Sort by last status change time.                                  |
| `ls -t`    | Sort by **modification time**, newest first.                      |
| `ls -r`    | Reverse the order of sort (use with other options).               |
| `ls -ltr`  | Long listing, sorted by time in **reverse** (oldest first).       |
| `ls -la`   | Combine long format and show hidden files.                        |
| `ls -h`    | Show sizes in **human-readable** format (use with `-l`).          |
| `ls -lh`   | Long listing + human-readable sizes.                              |                     
| `ls -s`    | Show file size in blocks.                                         |
| `ls -S`    | Sort by file **size**, largest first.                             |

| `ls -a`    | List **all** entries including hidden files (`.` and `..`).       |
| `ls -x`    | List entries **horizontally** across the screen.                  |
| `ls -1`    | List one file per line (digit one).                               |
| `ls -R`    | List **recursively**, including subdirectories.                   |
| `ls -i`    | Show inode number of each file.                                   |
| `ls -d */` | Show only directories.                                            |
| `ls -F`    | Add indicator (`/` for dir, `*` for exec) at end of names.        |
| `ls -u`    | Sort by last access time.                                         |
| `ls -p`    | Append `/` to directory names.                                    |
| `ls -v`    | Sort files **naturally** (1, 2, 10 instead of 1, 10, 2).          |


read -p "enter your name" name
enter your name ram
echo $name


📄 more vs less – Key Differences
| Feature         | `more`                         | `less`                          |
| --------------- | ------------------------------ | ------------------------------- | 
| Basic Function  | View file page by page         | View file page by page          |   
| Navigation      | Only forward                   | Forward **and backward**        |    
| Search          | Limited                        | Powerful search (`/`, `?`)      |       
| Performance     | Slower with large files        | Faster, even with large files   |        
| File loading    | Loads full file before viewing | Loads as you scroll (on demand) |       
| Editing         | No                             | No                              |        
| Exit            | `q` to quit                    | `q` to quit                     |        


🐱 cat – Concatenate and display files
The cat command is used to read, combine, and display the contents of files.

| Command                   | Description                             |
| ------------------------- | --------------------------------------- |
| `cat file.txt`            | Display contents of a file              |
| `cat file1.txt file2.txt` | Show contents of both files together    |
| `cat > file.txt`          | Create a new file (overwrite if exists) |
| `cat >> file.txt`         | Append text to an existing file         |
| `cat -n file.txt`         | Show content with line numbers          |
| `cat -b file.txt`         | Line numbers (non-blank lines only)     |

cat file1.txt file2.txt > combined.txt -> combines 2 files to one
cat bigfile.txt | less  -> To scroll and search through big files easily.



### 🔎 `find` – Search for files/directories

find [path] [options]
```
find /home - desktop"*.txt"


| Example                           | Description                                         |
| --------------------------------- | --------------------------------------------------- |
| `find . -name "*.txt"`            | Find all `.txt` files in current and subdirectories |
| `find /home -type d -name "Test"` | Find directory named `Test` inside `/home`          |
| `find . -size +1M`                | Find files larger than 1MB                          |

---

### 📂 `mv` – Move or rename files/directories


mv [source] [destination]
```

| Example                      | Description            |
| ---------------------------- | ---------------------- |
| `mv file1.txt newdir/`       | Move file to `newdir/` |
| `mv oldname.txt newname.txt` | Rename a file          |

---

### 📄 `cp` – Copy files/directories


cp [options] source destination
```

| Example                     | Description                |
| --------------------------- | -------------------------- |
| `cp file1.txt backup.txt`   | Copy file                  |
| `cp -r dir1/ dir2/`         | Copy directory recursively |
| `cp -i file1.txt file2.txt` | Prompt before overwriting  |

---

### 🗑️ `rm` – Delete files/directories


rm [options] file_or_dir
```

| Example          | Description                                    |
| ---------------- | ---------------------------------------------- |
| `rm file.txt`    | Remove file                                    |
| `rm -i file.txt` | Prompt before deleting                         |
| `rm -r dir/`     | Recursively delete directory                   |
| `rm -rf dir/`    | Force delete directory without confirmation ⚠️ |

---

### 📦 `tar` – Archive and compress files


tar [options] archive_name.tar file_or_directory
```

| Example                            | Description                      |
| ---------------------------------- | -------------------------------- |
| `tar -cvf archive.tar folder/`     | Create archive                   |
| `tar -xvf archive.tar`             | Extract archive                  |
| `tar -czvf archive.tar.gz folder/` | Create compressed archive (gzip) |
| `tar -xzvf archive.tar.gz`         | Extract compressed archive       |

---

### 🧠 Tip: Common Flags

| Flag | Meaning                          |
| ---- | -------------------------------- |
| `-c` | Create archive (`tar`)           |
| `-x` | Extract archive (`tar`)          |
| `-v` | Verbose (show process)           |
| `-f` | File name used in `tar`          |
| `-r` | Recursive (for `cp`, `rm`)       |
| `-i` | Interactive (ask before)         |
| `-z` | Compress using gzip (with `tar`) |



| Command | Used For                  | Key Options/Examples                           |
| ------- | ------------------------- | ---------------------------------------------- |
| `wc`    | Count lines, words, bytes | `wc -l`, `wc -w`, `wc -c`, `wc -m`             |
| `cut`   | Extract text by columns   | `cut -d',' -f1`, `cut -c1-4`, `cut -f2`        |
| `paste` | Merge files line-by-line  | `paste file1 file2`, `paste -d',' file1 file2` |





### 📄 `head` – Show the first lines of a file


| Example               | Description                   |
| --------------------- | ----------------------------- |
| `head file.txt`       | Show first 10 lines (default) |
| `head -n 5 file.txt`  | Show first 5 lines            |
| `head -c 20 file.txt` | Show first 20 bytes           |

---

### 📃 `tail` – Show the last lines of a file

| Example               | Description                                |
| --------------------- | ------------------------------------------ |
| `tail file.txt`       | Show last 10 lines (default)               |
| `tail -n 5 file.txt`  | Show last 5 lines                          |
| `tail -f logfile.log` | Follow file in real time (useful for logs) |

---

### 🔍 `grep` – Search for patterns in files (text search)

| Example                       | Description                         |
| ----------------------------- | ----------------------------------- |
| `grep "error" file.txt`       | Search for "error" in file          |
| `grep -i "error" file.txt`    | Case-insensitive search             |
| `grep -r "main" /path/to/dir` | Recursive search in directory       |
| `grep -n "error" file.txt`    | Show line numbers                   |
| `grep -v "success" file.txt`  | Show lines **not** matching pattern |

---

### 🧮 `expr` – Evaluate expressions (arithmetic and string operations)

| Example                    | Description                               |
| -------------------------- | ----------------------------------------- |
| `expr 5 + 3`               | Add two numbers (output: 8)               |
| `expr 10 \* 2`             | Multiply (note the backslash for `*`)     |
| `expr length "hello"`      | Length of string (output: 5)              |
| `expr substr "abcdef" 2 3` | Substring starting at 2, length 3 (`bcd`) |


# chmod – Change file permissions

# Symbolic mode examples:
chmod u+x file.sh        # Add execute permission to user
chmod go-w file.txt      # Remove write permission from group and others
chmod a+r file.txt       # Add read permission to all

# Numeric mode examples:
chmod 755 script.sh      # Owner: rwx, Group: r-x, Others: r-x
chmod 644 file.txt       # Owner: rw-, Group: r--, Others: r--

# chown – Change owner and group

chown alice file.txt             # Change owner to 'alice'
chown alice:developers file.txt # Change owner to 'alice' and group to 'developers'
chown :developers file.txt       # Change group to 'developers' only

# Recursive option (for directories):
chown -R alice:developers /var/www/html

# === Redirection and Piping ===

# Redirect standard output (stdout) to a file (overwrite file)
command > file.txt

# Append standard output to a file (keep existing content)
command >> file.txt

# Use a file as standard input (stdin) for a command
command < file.txt

# Redirect standard error (stderr) to a file
command 2> error.log

# Redirect both stdout and stderr to a file
command &> output.log

# Use pipe to send output of command1 as input to command2
command1 | command2

--------------------------------------------------

# === User Management Commands ===

# Add a new user named 'username' (creates user without home directory by default)
sudo useradd username

# Delete a user 'username'
sudo userdel username

# Delete user and their home directory and mail spool
sudo userdel -r username

# Modify user account details

# Change username from oldname to newname
sudo usermod -l newname oldname

# Change user's home directory to /new/home/dir
sudo usermod -d /new/home/dir username

# Change user’s default shell to bash
sudo usermod -s /bin/bash username

# Change user password (prompts for new password)
sudo passwd username

--------------------------------------------------

# === Disk and Process Monitoring ===

# Show disk usage of all mounted filesystems in human-readable format (e.g., GB, MB)
df -h

# Interactive process viewer; shows CPU, memory, processes usage updated in real time
top

# Display a snapshot of all running processes with details like CPU, memory usage
ps aux

--------------------------------------------------

# === SSH and Secure Copy ===

# Connect securely to remote machine via SSH
ssh user@remote_host

# Copy file from local to remote host
scp local_file.txt user@remote_host:/remote/directory/

# Copy file from remote host to local machine
scp user@remote_host:/remote/file.txt /local/directory/

# Generate SSH key pair for passwordless authentication (RSA 4096-bit key)
ssh-keygen -t rsa -b 4096

# Copy your SSH public key to remote server for passwordless SSH login
ssh-copy-id user@remote_host
