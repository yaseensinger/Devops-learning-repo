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
