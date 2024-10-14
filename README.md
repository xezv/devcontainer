# Repository Overview

This repository is designed to set up a robust development environment using **DevContainers** with **Arch Linux** as the base operating system. It leverages Docker and Docker Compose to create isolated and reproducible development environments tailored to your project's needs.

## Key Features

- **Arch Linux Base**: Utilizes the latest Arch Linux image to ensure access to the most recent packages and updates.

- **Customizable Configuration**: Easily modify the operating system, default username, and environment variables to suit your preferences.(In Progress)

- **Comprehensive Package Installation**: Installs a wide range of development tools and utilities to streamline your workflow.

- **Shell Configuration**: Configures the Fish shell with the Pure theme for an enhanced command-line experience.

- **Dotfiles Management**: Clones and sets up your dotfiles repository to maintain consistent configurations across environments.

- **User Management**: Creates and configures a non-root user with sudo privileges for secure and efficient development.

## Configuration Details

### Operating System and Default User

- **Operating System**: The base image is `archlinux:latest`. You can change this to another Linux distribution by modifying the `arch` field in the `README.md` and updating the `docker-compose.yml` and `Dockerfile` accordingly.

- **Default Username**: The default user is set to `x`. You can customize this by altering the `USERNAME` argument in the `.devcontainer/Dockerfile` and updating related scripts (`setup.sh`, `dotfiles.sh`, etc.).

- **Environment Variables**: The `.env` file holds various environment-specific configurations. Feel free to modify this file to adjust settings such as user credentials, repository URLs, and other customizable parameters.

### Installed Packages

The setup script (`.devcontainer/scripts/install.sh`) installs a comprehensive list of packages essential for development:

- **Development Tools**:
  - `base-devel`: Essential development tools for building packages.
  - `git`: Version control system.
  - `gcc`, `clang`: Compilers for C/C++ and other languages.
  - `gdb`: GNU Debugger for debugging applications.
  - `cmake`: Build system generator.
  - `make`: Build automation tool.
  - `rust`: Programming language for system-level development.

- **Utilities**:
  - `helix`: A modern text editor.
  - `inetutils`: Network utilities like `ftp`, `telnet`, `ping`, etc.
  - `traceroute`: Network diagnostic tool.
  - `openbsd-netcat`: Networking utility for reading and writing data across network connections.
  - `iproute2`: Networking tools replacing many traditional net-tools.
  - `vim`: Highly configurable text editor.
  - `github-cli`: GitHub's command-line tool.

These packages provide a solid foundation for software development, debugging, networking, and version control.

## Scripts and Setup

### Docker Configuration

- **Dockerfile (`.devcontainer/Dockerfile`)**: Defines the Docker image based on Arch Linux and includes ARGs for customizable parameters. It copies and executes setup scripts to configure the environment.

- **Docker Compose (`.devcontainer/docker-compose.yml`)**: Manages the Docker service, defining the build context, environment variables, volumes, ports, and network configurations.

### Shell and User Configuration

- **Setup Scripts (`.devcontainer/scripts/`)**:
  - `setup.sh`: Creates a new user with specified UID and GID, adds the user to the `wheel` group, and configures sudo privileges without requiring a password.
  - `dotfiles.sh`: Clones the dotfiles repository and executes the setup script to apply configurations.
  - `fish.sh`: Installs the Fish shell and the Pure theme, sets Fish as the default shell, and ensures it's registered in `/etc/shells`.

### Environment Management

- **Environment Variables (`.env`)**: Stores sensitive and configurable data such as usernames, repository URLs, and setup scripts. Modify this file to customize your development environment.

## Customization

- **Changing the Operating System**: Update the `arch` field in `README.md`, modify the base image in `Dockerfile`, and adjust any OS-specific configurations as needed.
- **Modifying the Default Username**: Change the `USERNAME`, `USER_GID`, and `USER_UID` ARGs in the `Dockerfile`. Ensure consistency across all scripts that reference the username.
- **Adjusting Environment Variables**: Edit the `.env` file to modify or add environment-specific variables. This includes changing repository URLs, script names, and other configurations.

## .gitignore

The repository includes a `.gitignore` file that excludes various system, development tool, and IDE-specific files to ensure a clean version-controlled codebase. It covers:

- **OS-specific files**: macOS, Linux, etc.
- **Development Tools**: Node, Python, Rust, Go, etc.
- **IDE Configurations**: JetBrains IDEs, VS Code, WebStorm, etc.
- **Build and Cache Directories**: CMake, Go modules, Python cache, etc.
- **Sensitive Information**: `.env` files and other configuration files containing secrets.

Feel free to modify the `.gitignore` to include or exclude files based on your project's requirements.
