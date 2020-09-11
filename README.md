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

### Fish Theme - bobthefish
```
$ fisher add oh-my-fish/theme-bobthefish

$ git clone https://github.com/powerline/fonts.git
$ ./fonts/install.sh
$ rm -rf ./fonts
```

#### bobthefish Configuration
```
$ vim ~/.config/fish/config.fish

set -g theme_display_git_master_branch yes
set -g theme_display_git yes
set -g theme_display_git_dirty yes
set -g theme_display_git_untracked yes
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_stashed_verbose yes
set -g theme_git_worktree_support no
set -g theme_use_abbreviated_branch_name no

set -g theme_display_vagrant no
set -g theme_display_docker_machine no
set -g theme_display_k8s_context no
set -g theme_display_hg no
set -g theme_display_virtualenv no
set -g theme_display_nix no
set -g theme_display_ruby no
set -g theme_display_nvm no
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_display_vi no
set -g theme_display_date yes
set -g theme_display_cmd_duration yes

set -g theme_title_display_process no
set -g theme_title_display_path yes
set -g theme_title_display_user no
set -g theme_title_use_abbreviated_path no

set -g theme_date_format "+%F %H:%M"
set -g theme_date_timezone Asia/Tokyo
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts no
set -g theme_show_exit_status yes
set -g theme_display_jobs_verbose yes
set -g default_user your_normal_user
set -g theme_color_scheme loght
set -g fish_prompt_pwd_dir_length 0
set -g theme_project_dir_length 1
set -g theme_newline_cursor yes
set -g theme_newline_prompt '$ '
```

#### ITerm 2 Font configuration
- iTerm2 -> Preferences -> Profiles -> Text -> Font
  - Meslo LG L DZ for Powerline

## Fish Plugin
### Peco
By pushing ctrl + r, you can search shell history

```
$ brew install peco
$ fisher add oh-my-fish/plugin-peco
$ vim ~/.config/fish/config.fish

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end
```

### z
By z, it tracks the directory you have visited

```
$ fisher add jethrokuan/z
```

### fish-bd
By bd, you can quickly go back to a parent directory in your current working directory tree

```
$ fisher add 0rax/fish-bd
```

### SDKMAN! for fish
Makes command sdk from SDKMAN! usable from fish, including auto-completion. Also adds binaries from installed SDKs to the PATH.

```
$ fisher add reitzig/sdkman-for-fish@v1.4.0

$ sdk
You don't seem to have SDKMAN! installed. Install now? [y/N] y
```

## Fish Completion
- [completion list](https://github.com/fish-shell/fish-shell/tree/master/share/completions)
  - Git

```
# Git
$ curl https://raw.githubusercontent.com/fish-shell/fish-shell/master/share/completions/git.fish > ~/.config/fish/completions/git.fish
```

## Git
### Git Global Configuration
```
$ git config --global user.name "shinyay"
$ git config --global user.email ""
$ git config --global core.quotepath false
$ git config --global core.safecrlf true
$ git config --global core.autocrlf false
$ git config --global core.editor 'vim -c "set fenc=utf-8"'
$ git config --global color.diff auto
$ git config --global color.status auto
$ git config --global color.branch auto
```

### Git Alias
#### git status
```
$ git config --global alias.st status
```

### git log
```
$ git config --global alias.plog "log --pretty='format:%C(yellow)%h %C(green)%cd %C(reset)%s %C(red)%d %C(cyan)[%an]' --date=iso"
$ git config --global alias.glog "log --pretty='format:%C(yellow)%h %C(green)%cd %C(reset)%s %C(red)%d %C(cyan)[%an]' --date=format:'%c' --all --graph"
```

### GitHub SSH Key
```
$ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
$ cat ~/.ssh/id_rsa.pub
```

- [GitHub SSH Keys](https://github.com/settings/keys)

## ITerm2
### Iterm2 Preferences
- iTerm2 -> Preferences -> Profiles -> Text -> Font
  - Source Code Pro for Powerline

- iTerm2 -> Preferences -> Profiles -> Window
  - Columns: 120
  - Rows 25
  - Screen: Screen with Cursor
  - Space: All spaces

- iTerm2 > Preferences > General > Window
  - Native full screen windows: OFF

- iTerm2 -> Preferences -> Profiles -> Colors
  - Color Presets -> Import
    - [iTerm2-Color-Schemes](https://github.com/mbadolato/iTerm2-Color-Schemes)
      - Solarized Dark - Patched
      - Dracula
    - [iterm2-material-design](https://www.martinseeler.com/iterm2-material-design)
      - `curl -O https://cdn.jsdelivr.net/gh/MartinSeeler/iterm2-material-design/material-design-colors.itermcolors`
### Shell Integration
- [Shell Integration](https://iterm2.com/documentation-shell-integration.html)
```
$ curl -L https://iterm2.com/shell_integration/fish -o ~/.iterm2_shell_integration.fish
$ source ~/.iterm2_shell_integration.(basename $SHELL)
```

## MacOS System Preferences
### Trackpad
#### Point & Click
- Tap to click: `ON`
- Tracking speed: `Fast`

#### More Gestuers
- Swipe between full-screen apps: `4 fingers`
- Mission Control: `4 fingers`

### Accessibility - Speech
- System Preferences > Speech
  - System Voice: Samantha
  - Speak selected text when the key is pressed: `ON`

# 2. Tools
## VS Code
### Shell Integration
- `Command + Shift + P`
  - `Shell`

<details><summary>Shell Command: Install</summary><div>
<img width="" alt="vscode" src="https://user-images.githubusercontent.com/3072734/92596916-86b82580-f2e1-11ea-95d4-1f7f089246aa.png">
</div></details>

## SDKMAN!
### Enable Beta Channel
```
$ sed -ie "s/sdkman_beta_channel=false/sdkman_beta_channel=true/g" ~/.sdkman/etc/config
```

### Java
- AdoptOpenJDK
  - 11.0.8.hs
  - 14.0.2.hs

```
$ sdk install java 11.0.8.hs-adpt
$ sdk install java 14.0.2.hs-adpt
```

### Gradle
- 6.6.1

```
$ sdk install gradle 6.6.1
```

### Flush
```
$ sdk flush broadcast
$ sdk flush archives
$ sdk flush temp
```

## Docker
- Download Docker installation image
  - [Docker Desktop](https://www.docker.com/get-started)


## pack - Buildpack CLI
```
$ brew install buildpacks/tap/pack
```

## Dive
A tool for exploring a docker image, layer contents, and discovering ways to shrink the size of your Docker/OCI image.

- For Mac
```
$ brew install dive

$ dive <CONTAINER_IMAGE:TAG>
```

- For Docker
```
$ docker pull wagoodman/dive

$ docker run --rm -it \
      -v /var/run/docker.sock:/var/run/docker.sock \
      wagoodman/dive:latest <CONTAINER_IMAGE:TAG>
```

## emc - Enhanced JVM Meomry Calculator

```
$ curl -L https://github.com/wreulicke/emc/releases/download/v0.0.2/emc_0.0.2_darwin_amd64 -o /usr/local/bin/emc
$ chmod +x /usr/local/bin/emc
```
