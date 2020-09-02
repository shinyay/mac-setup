# MacBook Pro (16-inch 2019)
---
# 1. Initial Setup
## Homebrew
```
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

## Google IME
```
$ brew cask install google-japanese-ime
```

<details><summary>Keyboard - Input Source</summary><div>
![input-source](https://user-images.githubusercontent.com/3072734/91958684-a203bd80-ed42-11ea-9b19-1137e496e298.png)
</div></details>


# Fish shell
## Install
```
$ curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
```

```
$ fishr -v

fisher version 3.2.10 ~/.config/fish/functions/fisher.fish
```

### SDKMAN! for fish
```
$ fisher add reitzig/sdkman-for-fish
```
