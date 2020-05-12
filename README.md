# zsh-setup for sup39
## Usage
### Full setup
```zsh
curl https://raw.githubusercontent.com/sup39/zsh-setup/master/setup.sh | sh -
```
Alternatively, use the shortened url:
```zsh
curl -L http://pr8.work/0/sup39-zsh | sh -
```
However, it may fails to redirect. You may print the content before execute it.
```
curl -L http://pr8.work/0/sup39-zsh
```
Check if the first line is `#/bin/sh`.

### zshrc only
```zsh
curl https://raw.githubusercontent.com/sup39/zsh-setup/master/zshrc >> $HOME/.zshrc
```

## Content
### zshrc
- `~/.zshrc`

:warning: *OVERWRITE* if exists

### [vimrc](https://github.com/sup39/vimrc)
- `~/.vim/sup39`
- `~/.vimrc`

:bulb: No overwriting
