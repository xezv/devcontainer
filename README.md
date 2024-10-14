# Devcontainer

## Usage


open the vscode and install the devcontainer extension

then follow these steps to setup

```bash
$ git clone https://github.com/xezv/devcontainer <directory-as-you-hope>

$ cd <directory-as-you-hope>

$ git remote remove origin

$ git remote add origin <your-repository-url>
```

now you can build the container with the command in vscode

open the command palette(`CMD + SHIFT + P` or `CTRL + SHIFT + P` on windows) and search `Rebuild and Reopen in Container`

wait a few seconds to build the container, and then you can start coding

all the environment automatically setup by the script will be applied

## Supported Editors

- Vscode

devcontainer is primarily designed for vscode, other editors may not work properly

- Cursor

but other than that, cursor is also supported

because cursor is port of vscode, most of the time it will work properly

So you could use cursor to code

---

## Warning

- When opening the editor, make sure to open it from a directory where .devcontainer is located at depth 1.

Otherwise, the "Reopen in Container" feature in VSCode will not work properly.