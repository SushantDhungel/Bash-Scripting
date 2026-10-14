# Bash Scripting Practice

This repository contains small Bash scripts I wrote while learning shell scripting. Each one focuses on a specific concept, so I can practice it, run it in the terminal, and see how it works.

The scripts are simple learning exercises rather than production tools. I may add more as I learn new Bash commands and techniques.

## What's Included?

| Script | What it covers |
|---|---|
| `01_exit_status_demo.sh` | Checking whether a command succeeded or failed with `$?` |
| `02_directory_and_file_operations.sh` | Creating, listing, writing to, and removing files and directories |
| `03_print_argument.sh` | Reading command-line arguments with `$1` and checking the number of arguments with `$#` |
| `04_export_&_env_variables.sh` | Working with environment variables and `export` |
| `05_functions.sh` | Defining and calling Bash functions |
| `06_calculator_using_functions.sh` | Using functions and command-line arguments to do basic calculations |
| `07_log_file_analysis.sh` | Finding recent `.log` files and searching for `ERROR`, `FATAL`, and `CRITICAL` messages |
| `08_string_operations.sh` | Comparing strings, checking values, and finding string lengths |
| `09_case_statenment.sh` | Using a `case` statement to convert a month number to its name and handle invalid input |
| `10_random _variable.sh` | Using `$RANDOM` to add a random number to a word |

## What You Need

You'll need:

- Linux, macOS, or Windows with WSL
- Bash
- A terminal

The scripts also use common command-line tools such as `find`, `grep`, `ls`, `mkdir`, `touch`, and `rm`.

## Running a Script

First, open a terminal and move into the project directory.

You can run a script directly with Bash:

```bash
bash 01_exit_status_demo.sh
```

Or, make it executable and run it:

```bash
chmod +x 01_exit_status_demo.sh
./01_exit_status_demo.sh
```

Replace `01_exit_status_demo.sh` with the script you want to try.

## A Few Examples

### Passing an argument

This example passes `Hello` to the script, which reads it as a command-line argument:

```bash
bash 03_print_argument.sh Hello
```

### Using the calculator

The calculator takes an operation (`a`, `s`, `m`, or `d`) followed by two numbers:

```bash
bash 06_calculator_using_functions.sh a 10 5
bash 06_calculator_using_functions.sh s 10 5
bash 06_calculator_using_functions.sh m 10 5
bash 06_calculator_using_functions.sh d 10 5
```

These examples demonstrate addition, subtraction, multiplication, and division.

### Trying string operations

```bash
bash 08_string_operations.sh hello world
```

### Generating a random number

The filename contains a space, so keep the quotation marks when running it:

```bash
bash "10_random _variable.sh" practice
```

## A Quick Safety Note

These scripts are meant for practice, and some of them change files or directories. For example, `02_directory_and_file_operations.sh` creates and removes a directory, while `01_exit_status_demo.sh` creates and deletes `demo.txt`.

Take a look at a script before running it, and use a separate practice directory if you're unsure what it will change.

## What I'm Practising

By working through these examples, I'm getting more comfortable with:

- Bash syntax and running scripts from the terminal
- Variables and command-line arguments
- Functions, conditionals, loops, and `case` statements
- Exit statuses and environment variables
- Basic file operations and log-file searches

This is a work in progress, and I'll keep updating the repository as I learn more about Bash scripting.
