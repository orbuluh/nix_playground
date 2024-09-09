# NIX playground

## Check if flake.nix is good

```bash
nix flake show
```

## Build and run the program

```bash
nix run
```

## When change the flake.nix

```bash
nix flake update
```

## Autocomplete to update individual deps

- From [YT video](https://www.youtube.com/watch?v=wtVZk1X2_CQ&ab_channel=nixhero)

```bash
# fzf for fuzzy search, cool
nix flake metadata  --json | jq --raw-output ".locks.nodes.root.inputs[]" | fzf | xargs nix flake lock --commit-lock-file --update-input
```

## Set the nix development environment accordingly

```bash
nix develop
mkdir build
cd build/
cmake ..
make -j 20
```
