```bash
$ devcontainer build --config .devcontainer/devcontainer.json --workspace-folder .

$ devcontainer up --config .devcontainer/devcontainer.json --workspace-folder .
```

```bash
# List installed packages
$ pacman -Q

# List package information
$ pacman -Qi

# Search package
$ pacman -Ss

# Install package
$ sudo pacman -S <package>

# Remove package
$ sudo pacman -Rns <package>

# Update package database
$ sudo pacman -Sy

# Upgrade packages
$ sudo pacman -Su

# Clean package cache
$ sudo pacman -Sc

# Remove orphan packages
$ sudo pacman -Qdt
$ sudo pacman -Rns $(pacman -Qdtq)
```
