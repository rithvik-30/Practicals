# Strace Analysis

## Command Executed

strace cat sample.txt

## System Call Analysis

| System Call | Purpose | Kernel Service |
|---|---|---|
| execve() | Loads and executes the cat program | Process Management |
| brk() | Adjusts the process heap | Memory Management |
| mmap() | Maps files and memory into the process address space | Virtual Memory Management |
| openat() | Opens sample.txt and required libraries | File Management |
| fstat() | Retrieves file information | File System Service |
| read() | Reads the contents of sample.txt | File I/O Service |
| write() | Writes the file contents to the terminal | I/O Management |
| close() | Closes opened file descriptors | File Management |
| munmap() | Releases mapped memory | Memory Management |
| exit_group() | Terminates the process | Process Management |

## Sequence of Important System Calls

1. `execve()` starts the `cat` program.
2. `mmap()` and related calls load required libraries and memory.
3. `openat()` opens `sample.txt` in read-only mode.
4. `fstat()` obtains information about the file.
5. `read()` reads `Operating Systems` from the file.
6. `write()` sends the contents to the terminal.
7. A second `read()` returns 0, indicating the end of the file.
8. `munmap()` releases the mapped memory.
9. `close()` closes the file and standard descriptors.
10. `exit_group()` terminates the `cat` process.

## Kernel Services Involved

The system calls demonstrate several operating-system services:

- **Process Management:** `execve()`, `exit_group()`
- **Memory Management:** `brk()`, `mmap()`, `munmap()`
- **File Management:** `openat()`, `fstat()`, `close()`
- **File and I/O Services:** `read()`, `write()`

The trace demonstrates how the `cat` command interacts with the Linux kernel through system calls to access a file, read its contents, display them on the terminal, and terminate.
