# pixipin

pixipin is a simple launcher for pixi.

## About pixipin
pixipin is a thin wrapper for pixi that provides helpful guarnatees on the version of pixi that will run.

1. If the file `.pixipinrc`exists next to `pixi.toml`, then `pixipin` will update pixi to the speicfied version and execute pixi.
2. Otherwise, `pixipin` will update to the latest pixi version and execute `pixi`.

## Installation
```
    # Installation
    sudo curl -o /usr/local/bin/pixi https://raw.githubusercontent.com/Ali-Piccioni/pixipin/main/pixipin
    sudo chmod a+x /usr/local/bin/pixi

    # Make sure pixi points to /usr/local/bin/pixi
    # If not, then you need to either remove the standard pixi or promote pixipin in your PATH.
    which pixi
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
