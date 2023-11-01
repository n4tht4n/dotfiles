# dotfiles
 
> Dotfiles configuration and system bootstrapping, applicable to macOS and Linux.

My dotfiles configurations are based on [chezmoi](https://www.chezmoi.io/). To install all my
tools, I use the new [pkgx](https://pkgx.sh) 😎 👍.

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
