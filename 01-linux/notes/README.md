Linux & DevOps Fundamentals
Virtualization

Virtualization enables multiple operating systems to run on a single physical machine while sharing the same hardware resources. Each operating system remains isolated, ensuring stability and security. This technology is foundational to modern cloud platforms such as AWS and Microsoft Azure.

Linux File Management

Linux provides powerful command-line tools for working with files and directories.

The cat command is used to display file contents, combine multiple files into one, or append the contents of one file to another.

Pipes allow the output of one command to be passed directly as input into another, enabling efficient command chaining.

The cp command is used to copy files, with recursive options available for copying directories and their contents.

Vim Text Editor

Vim is a widely used terminal-based text editor in Linux environments.

It operates in multiple modes, including command mode for executing editor commands, insert mode for editing text, and visual mode for selecting text.

Common operations include saving and exiting files, navigating by words or line numbers, undoing and redoing changes, and enabling line numbering for easier code navigation.

User Management

Linux provides administrative tools for managing system users.

Administrators can create new users, assign or change passwords, modify user attributes, and remove users when they are no longer required. These capabilities are essential for access control and system security.

File Permissions

Linux uses a permission system to control access to files and directories.

Permissions are assigned at three levels: user, group, and others. Each level can be granted read, write, or execute access.

Permissions are commonly represented using octal notation, such as 755 or 644, which simplifies permission management in scripts and deployments.

Environment Variables

Environment variables store configuration values that affect system and application behavior.

They are commonly used for system paths, application configuration, and sensitive values such as API keys. Variables can be made persistent by defining them in shell configuration files and reloading the shell environment.

Command-Line Shortcuts and Symbols

Linux provides several shortcuts to improve efficiency.

Executables in the current directory can be run explicitly, wildcard characters can match multiple files, and tab completion allows fast and accurate command entry.

Text Processing and Sorting

Linux includes powerful text-processing utilities.

Tools such as awk enable pattern matching and structured text processing, while sorting utilities allow files to be ordered alphabetically or numerically for easier analysis.

Searching and Error Handling

Linux allows precise control over command output and error handling.

Error messages can be redirected or suppressed when needed. File-searching utilities enable users to locate files within a directory or across the entire filesystem.

File System Structure

Linux follows a hierarchical filesystem structure.

The root directory represents the top level of the filesystem, while relative paths allow navigation based on the current working directory.