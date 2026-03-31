Bash Scripts Project

This repository contains a few bash scripts that I created while learning how shell scripting actually works in a practical way. The goal was to understand how different system-level operations can be automated using simple scripts.

The scripts cover things like checking system information, working with directories, analyzing logs, and even generating a small interactive output.

What’s inside:

* audit_report.sh
  Gives basic system details like kernel version, uptime, user info, etc.

* package_check.sh
  Checks if a package (like python3) is installed and shows some details about it.

* directory_audit.sh
  Looks at important directories and prints their permissions and size.

* log_analyzer.sh
  Reads a log file, counts how many times a keyword appears (default is "error"), and shows recent matches.

* manifesto_generator.sh
  A small interactive script that asks a few questions and creates a text-based manifesto.

How to run:

Open terminal and go to the folder where the scripts are saved.

Give permission:
chmod +x *.sh

Then run any script like:
./audit_report.sh

Some scripts also take input, for example:
./log_analyzer.sh warning

Why I made this:

This was mainly to get comfortable with bash scripting and understand how things actually work behind the scenes in a Linux environment. Instead of just reading theory, I wanted to try things out and build something small but useful.

That’s pretty much it.
