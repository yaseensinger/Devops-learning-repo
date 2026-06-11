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
