# NIX playground

## Check if flake.nix is good

```bash
nix flake show
```

## Build and run the program

```bash
nix run
```

## When change thie flake.nix

```bash
nix flake update
```

## Set the nix development environment accordingly

```bash
nix develop
mkdir build
cd build/
cmake ..
make -j 20
```
