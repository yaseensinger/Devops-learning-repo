## level 0 > 1

**Challenge:** Find the password stored in a file in the current directory.

**Solution:**
used `ls` to list the files in the current directory and `cat` to read the file containing the password.

## level 1 > 2

**Challenge:** Read the password stored in a file named `-`.

**Solution:**
used `ls` to confirm the file existed and `cat ./-` to read it, since `-` is treated specially by many commands.

## level 2 > 3

**Challenge:** Read the hidden file in the current directory.

**Solution:**
used `ls -a` to display hidden files and `cat` to read the hidden file containing the password.

## level 3 > 4

**Challenge:** Read the password stored in a file located in the `inhere` directory.

**Solution:**
used `cd inhere` to enter the directory, `ls` to view its contents, and `cat` to read the password file.

## level 4 > 5

**Challenge:** Find the only human-readable file in the `inhere` directory.

**Solution:**
used `cd inhere` and `file ./*` to determine the type of each file, identified the human-readable file, and used `cat` to read the password.

## level 5 > 6

**Challenge:** Find the file that is human-readable, 1033 bytes in size, and not executable.

**Solution:**
used `find . -type f -size 1033c ! -executable` to locate the correct file and then used `cat` to display the password.

**What I learned:**
The `find` command is used for searching files based on different criteria. Combined options such as `-type` to specify files or directories, `-size` to filter by file size, and `! -executable` to exclude executable files. Learning how to combine these filters makes it much easier to locate specific files.
## level 6 > 7

**Challenge:** Find the file that is 33 bytes in size, owned by user `bandit7`, owned by group `bandit6`, and read the password from it.

**Solution:**
used `find / -type f -user bandit7 -group bandit6 -size 33c 2>/dev/null` to search the entire system while hiding permission errors. After finding the correct file, used `cat` to read the password.

**What I learned:**#
The `find` command can filter files by ownership as well as size. Options like `-user`, `-group`, and `-size` can be combined to create specific searches. Redirecting errors with `2>/dev/null` is also useful when searching system-wide to hide "Permission denied" messages.

## level 7 > 8

**Challenge:** Find the password stored in the file `data.txt` next to the word `millionth`.

**Solution:**
used `grep "millionth" data.txt` to search for the line containing the word `millionth` and retrieve the password from the same line.

**What I learned:**
The `grep` command is a fast way to search for text within files. It can search for words, patterns, or regular expressions, i think this will be useful for processing logs, configuration files, and large datasets I would use this at work if we used linux.

## level 8 > 9

**Challenge:** Find the password stored in `data.txt`, where it is the only line that occurs only once.

**Solution:**
used `sort data.txt | uniq -u` to sort the file and print only the line that appears exactly once, revealing the password.

**What I learned:**
The `uniq` command only works on adjacent duplicate lines, so it is often combined with `sort` first. The `-u` option prints only unique lines, which is useful for finding values that appear only once.

## level 9 > 10

**Challenge:** Find the password stored in `data.txt` among the few human-readable strings, preceded by several `=` characters.

**Solution:**
used `strings data.txt | grep "==="` to extract readable text from the binary file and filter for the line containing the password.

**What I learned:**#
The `strings` command extracts printable text from binary files, making it useful when inspecting unknown files. Combining it with `grep` allows you to quickly search for specific patterns.

## level 10 > 11

**Challenge:** The password is stored in `data.txt` and is encoded using Base64.

**Solution:**
used `base64 -d data.txt` to decode the file and reveal the password.

**What I learned:**
Base64 is an encoding scheme used to represent binary data as text. The `base64` command with the `-d` flag decodes encoded data back into its original form.

## level 11 > 12

**Challenge:** The password is stored in `data.txt`, where all lowercase and uppercase letters have been rotated by 13 positions (ROT13).

**Solution:**
used `cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'` to translate the characters and decode the password.

**What I learned:**
The `tr` command translates or replaces characters from standard input. It is useful for simple text transformations like ROT13, converting case, or removing unwanted characters. I did initially start with writing the whole aphabet but one google searh later i realosed you can use - to shorten it.

## level 12 > 13

**Challenge:** The password is hidden inside a file that has been repeatedly compressed and archived in different formats.

**Solution:**
used `xxd -r` to reverse the hex dump into a binary file, then repeatedly identified each file type with `file` and extracted it using the appropriate tool (`gzip`, `bzip2`, `tar`, etc.) until reaching the final text file containing the password.

**What I learned:**
The `file` command is perfect for determining a file's format before trying to extract it. I also learned that Linux has different tools for different archive and compression types, such as `gzip`, `bzip2`, and `tar`, also that `xxd -r` can reconstruct binary data from a hexadecimal dump. too much extracting in this challenge almost gave up to see if i was doing it correct.

## level 13 > 14

**Challenge:** The password for the next level can be retrieved by using the current password to log in via SSH on localhost.

**Solution:**
saved the private SSH key to a file  and connected with `ssh -i sshkey.private bandit14@localhost`. Once logged in, used `cat /etc/bandit_pass/bandit14` to read the password.

**What I learned:**#
SSH key authentication is an alternative to password authentication. Using the `-i` option allows you to specify a private key, which is often more secure and commonly used for automated access and server administration.(I guess this is what people actually use instead of passwords)

## level 14 > 15

**Challenge:** Submit the password for the current level to a service listening on port `30000` on localhost to receive the password for the next level.

**Solution:**
used `cat /etc/bandit_pass/bandit14 | nc localhost 30000` to send the current password to the service and receive the password for the next level.

**What I learned:**
`nc` can open TCP or UDP connections, send data, and listen on ports. google calls it the Swiss Army knife of networking because it is useful for testing services and communicating directly. I guess the powerhsll equivalent of this is Test-NetConnection

PASS : 8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo
## level 15 > 16


**Challenge:** Submit the current password to a service listening on port `30001` using SSL/TLS encryption.

**Solution:**
used `openssl s_client -connect localhost:30001`, entered the current password after the connection was established, and received the password for the next level.

**What I learned:**
`openssl s_client` can be used to establish encrypted SSL/TLS connections to servers for testing and debugging. Unlike `nc`, it handles the TLS handshake before allowing data to be exchanged securely.


## level 16 > 17
**Challenge:** 
find out which port out of a reang has a server listening on them. Then find out which of those speak SSL/TLS and which dont. then submit the current passowrd to to receve the pass for the next level. 
**Solution:**
I used `namp -sV ` to search the port range for for ports that speak ssl. then used `openssl s_client -connect localhost` to connect to the and enter the. as before i used vim to save the key and chmod to change its permissions.
![alt text](image-1.png)

**What I learned:**
nmap can be used to scan though a reange of ports and sv can be used for version detection. 


## level 17 > 18
**Challenge:** 
 compare the two files and find which line is diffrent
**Solution:**
used `diff` to find the lines 

**What I learned:** 
diff is cool 

## level 18 > 19
**Challenge:**
read the file in the home directory before i am logged out 
**Solution:**
used the ssh command to add the comand `"cat readme"` 

**What I learned:** 

you can specify a command after i have specied the destination when using a ssh. !
[alt text](image-2.png)


