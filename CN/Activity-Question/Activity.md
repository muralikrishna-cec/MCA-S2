# Linux Command Activity Log

```bash
echo -e "hello \n hai"                # Prints 'hello' and 'hai' on separate lines (-e enables interpretation of backslash escapes)
man ls /alpha n N                     # Shows the manual for 'ls'; '/alpha', 'n', 'N' are search commands in man
read -p "enter your name " name       # Prompts the user to enter their name (-p shows prompt text)
echo $name                            # Prints the value of the variable 'name'

mkdir -p dir1/dir4 dir1/dir2/dir3 && cd dir1/dir2/dir3  # Creates nested directories and navigates into dir3

vi text                               # Opens the file 'text' in vi editor
vi text2                              # Opens the file 'text2' in vi editor

pwd                                   # Prints the current working directory

ls -R                                 # Lists all files and subdirectories recursively
ls / ls -v                            # Lists directory contents; -v sorts naturally
ls -t                                 # Sorts files by modification time, newest first
ls -s                                 # Lists files with their size in blocks
ls -r                                 # Reverses the order of the sort
ls -sr                                # Sorts by file size and reverses order
ls -lSr                               # Lists files with details, sorts by size in reverse
ls -lh                                # Lists files with human-readable file sizes

ls > lsoutput                         # Redirects output of 'ls' to a file
head text                             # Displays the first 10 lines of 'text'
more +10 text                         # Starts displaying 'text' from line 11
less text                             # Opens 'text' with scrollable navigation
ls -l >> lsoutput                     # Appends long listing output of 'ls' to lsoutput
ls -l | less                          # Pipes long listing output of 'ls' into less

cp text newfile                       # Copies 'text' to 'newfile'
cp -n text newfile                    # No overwrite if destination exists
cp -i text newfile                    # Prompts before overwrite
cp -u text newfile                    # Only copies if source is newer

ln -s text new                        # Creates a symbolic link 'new' pointing to 'text'

cp -r dir1 dir5                       # Recursively copies directory dir1 to dir5
mkdir dir6                            # Creates directory 'dir6'
mv dir5/* dir1/dir6                   # Moves all contents from dir5 to dir1/dir6

rm -v [a,e,i,o,u,A,E,I,O,U]*          # Removes files starting with a vowel, verbose
rm -v ???*                            # Removes files with 3+ characters, verbose

vi testfile1                          # Opens 'testfile1' in vi editor
ls -l                                 # Lists files in long format

chmod o+r testfile2                   # Adds read permission for others
chmod u-w testfile2                   # Removes write permission from user
chmod g=x testfile2                   # Sets execute-only permission to group
chmod u+w,o-r,g=r testfile2           # Multiple symbolic permission changes
chmod a+rw testfile2                  # Gives read/write permission to all

chmod 666 testfile3                   # Sets read/write for all using numeric mode
chmod 754 testfile3                   # Sets rwx for user, r for group, r for others
chmod --reference testfile3 testfile2 # Copies permissions from one file to another

cat /etc/passwd | head -n 12          # Shows first 12 lines of /etc/passwd (first 12 users)
cat /etc/passwd | tail -n 7           # Shows last 7 lines (last 7 users)
cat /etc/passwd | tail -n +4          # Skips first 3 lines, shows rest
cat /etc/passwd | head -n -5          # Shows all lines except last 5
cat /etc/passwd | head -n 9 | tail -n 1 # Displays only the 9th line

grep "adoor" testfile1                # Finds lines containing 'adoor'
grep -v "adoor" testfile1             # Finds lines NOT containing 'adoor'

sudo useradd -m -d /user1 -s /bin/bash user1 # Adds user1 with home dir and bash shell
getent passwd user1                   # Displays info about user1 from passwd database
sudo chage -E 2025-12-12 user1        # Sets account expiry date for user1

sudo chown -R user1:user1 dir2        # Changes ownership of dir2 and its contents

sudo userdel user1                    # Deletes user1 without removing home directory
sudo userdel -r user1                 # Deletes user1 and removes home directory

top                                   # Opens process monitor
# Inside top:
#   Press N to sort by PID
#   Press P to sort by CPU usage

ps                                    # Shows processes associated with the current terminal
ps -e                                 # Shows all processes in the system

df                                    # Displays disk space usage of mounted partitions

tar -czvf mydir1.tar.gz dir1          # Compresses dir1 into mydir1.tar.gz using gzip
tar -xzvf mydir1.tar.gz -C dir5       # Extracts mydir1.tar.gz into dir5
