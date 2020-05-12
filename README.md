# zsh-setup for sup39
## Usage
### Full setup
```zsh
curl https://raw.githubusercontent.com/sup39/zsh-setup/master/setup.sh | sh -
source $HOME/.zshrc
```
Alternatively, use the shortened url:
```zsh
# Try the following command
# until the first line of the content becomes `#!/bin/sh`
curl -L pr8.work/0/sup39-zsh
# and then execute the setup script
curl -L pr8.work/0/sup39-zsh | sh -

# Finally, source the zshrc file
source $HOME/.zshrc
```

### zshrc only
```zsh
curl https://raw.githubusercontent.com/sup39/zsh-setup/master/zshrc >> $HOME/.zshrc
source $HOME/.zshrc
```

## Content
### zshrc
- `~/.zshrc`

:warning: *OVERWRITE* if exists

### [vimrc](https://github.com/sup39/vimrc)
- `~/.vim/sup39`
- `~/.vimrc`

:bulb: No overwriting
