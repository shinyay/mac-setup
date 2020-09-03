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
<img width="640" alt="input-source" src="https://user-images.githubusercontent.com/3072734/91958684-a203bd80-ed42-11ea-9b19-1137e496e298.png">
</div></details>

## Computer Name (Hostname)
System Preference - Sharing

<details><summary>Computer Name</summary><div>
<img width="" alt="input-source" src="https://user-images.githubusercontent.com/3072734/91960809-50a8fd80-ed45-11ea-9838-cdbc78137565.png">
</div></details>


## Fish shell
### Fish Install
```
$ brew install fish
$ echo /usr/local/bin/fish | sudo tee -a /etc/shells
$ chsh -s /usr/local/bin/fish
```
### Fisherman Install
```
$ curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
```

```
$ fisher -v
fisher version 3.3.2 ~/.config/fish/functions/fisher.fish
```

### SDKMAN! for fish
```
$ fisher add reitzig/sdkman-for-fish
```
