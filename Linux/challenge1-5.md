## level 0 > 1

**Challenge:** Find the password stored in a file in the current directory.

**Solution:**#
used `ls` to list the files in the current directory and `cat` to read the file containing the password.

## level 1 > 2

**Challenge:** Read the password stored in a file named `-`.

**Solution:**#
used `ls` to confirm the file existed and `cat ./-` to read it, since `-` is treated specially by many commands.

## level 2 > 3

**Challenge:** Read the hidden file in the current directory.

**Solution:**#
used `ls -a` to display hidden files and `cat` to read the hidden file containing the password.

## level 3 > 4

**Challenge:** Read the password stored in a file located in the `inhere` directory.

**Solution:**#
used `cd inhere` to enter the directory, `ls` to view its contents, and `cat` to read the password file.

## level 4 > 5

**Challenge:** Find the only human-readable file in the `inhere` directory.

**Solution:**#
used `cd inhere` and `file ./*` to determine the type of each file, identified the human-readable file, and used `cat` to read the password.

## level 5 > 6

**Challenge:** Find the file that is human-readable, 1033 bytes in size, and not executable.

**Solution:**#
used `find . -type f -size 1033c ! -executable` to locate the correct file and then used `cat` to display the password.

**What I learned:**#
The `find` command is extremely powerful for searching files based on different criteria. You can combine options such as `-type` to specify files or directories, `-size` to filter by file size, and `! -executable` to exclude executable files. Learning how to combine these filters makes it much easier to locate specific files in large directory structures.
