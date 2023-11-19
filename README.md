# dotfiles

> Dotfiles configuration and system bootstrapping, applicable to macOS and Linux.

My dotfiles configurations are based on [chezmoi](https://www.chezmoi.io/).

## 🚀 Bootstrap It

Depending on the availability of `curl` or `wget`, use one of the following commands:

```bash
# wget, e.g. on a freshly installed Debian system
bash -c "$(wget -qO - https://raw.githubusercontent.com/n4tht4n/dotfiles/main/remote-bootstrap)"

# curl, e.g. on a frehsly installed macOS system
bash -c "$(curl -fsSL https://raw.githubusercontent.com/n4tht4n/dotfiles/main/remote-bootstrap)"
```

Basically, this will install `pkgx` and use a temporary installation of `git` and `chezmoi` to
apply the configurations.

`chezmoi` will also generate further "install scripts" for `pkgx` depending on the concrete
machine. That's one of the main benefits of `chezmoi`!

## 🚧 POST Bootstrap Steps

There is one manual step right now 🤬. Let's see how I can resolve this in the long run.

### Zellij Plugin Installation

_Zellij_ is already configured to use the [zjstatus](https://github.com/dj95/zjstatus) plugin. But
that plugin must be installed manually in the latest version, as I don't use _Nix_!

Run `zellij setup --check` to see where the `PLUGIN DIR` is located and thus where to put the
downloaded `zjstatus.wasm`.

## 🔄 Basic chezmoi Usage

Once bootstrapped, this repository should be used and edited the [chezmoi](https://www.chezmoi.io) way.

### Add New Files to chezmoi

When a file is not yet managed by chezmoi, add it like this:

```bash
# simply add a file as is
chezmoi add ~/.config/any/file

# add a file as a template
chezmoi add --template ~/.config/any/file

# convert an already managed file to a template
chezmoi chattr +template ~/.config/any/managed/file
```

### Edit Managed Files

If a file is already managed and you want to edit it:

```bash
chezmoi edit ~/.config/any/managed/file
```

### Applying Changes to Another Machine

To pull the latest changes and apply them (e.g. on server machines), simply run:

```bash
chezmoi update
```
