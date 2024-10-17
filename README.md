# pixipin

pixipin is an experimental drop-in replacement for pixi.

pixipin runs in two modes
1. If the file `.pixipinrc`exists next to `pixi.toml`, then `pixipin` will update pixi to the speicfied version and execute pixi.
2. Otherwise, `pixipin` will update to the latest pixi version and execute `pixi`.

Usage:
```
    # Installation
    sudo curl -o /usr/local/bin/pixi https://raw.githubusercontent.com/Ali-Piccioni/pixipin/main/pixipin
    sudo chmod a+x /usr/local/bin/pixi

    # Make sure pixi points to /usr/local/bin/pixi
    # If not, then you need to either remove the standard pixi or promote pixipin in your PATH.
    which pixi
```

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
