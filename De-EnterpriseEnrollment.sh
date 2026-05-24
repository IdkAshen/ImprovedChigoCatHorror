#!/bin/bash
# The line above is the "shebang" - it tells the system to use the Bash interpreter.

# 1. Using a variable
GREETING="Hello"

# 2. Taking user input
echo "What is your name?"
read USER_NAME

# 3. Printing a message
echo "$GREETING, $USER_NAME! Welcome to shell scripting."

# 4. Performing a simple command
echo "The current date and time is:"
date
