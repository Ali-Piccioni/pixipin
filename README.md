# pixipin

pixipin is a simple launcher for the pixi package manager.

## About pixipin
pixipin is a thin wrapper for pixi that provides helpful guarnatees on the version of pixi that will run.

1. When `.pixipinrc` exists, pixipin will use the version of pixi specific in that file.
2. Otherwise, pixipin defaults to the latest `pixi` version.

pixipin automatically downloads and caches the pixi executibles.

## Installation
```
    curl -sSL https://raw.githubusercontent.com/Ali-Piccioni/pixipin/main/install.sh | sudo bash
```

## Usage
```
    # Execute pixi commands normally
    # This will use the latest version of pixi.
    pixi --version
```

```
    # Always use version 0.32.0 in the current project.
    # Write the pixipinrc in the same directory as your pixi.toml.
    echo "v0.32.0" > .pixipinrc
    pixi --version
```
