# MacBook Pro (16-inch 2019)
---
# 1. Initial Setup
## Homebrew
```
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```
### Authority for Homebrew
```
$ sudo chown -R $(whoami):admin /usr/local/*
$ sudo chmod -R g+w /usr/local/*
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
$ fisher install oh-my-fish/theme-bobthefish

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
$ fisher install oh-my-fish/plugin-peco
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
$ fisher install reitzig/sdkman-for-fish@v1.4.0

$ sdk
You don't seem to have SDKMAN! installed. Install now? [y/N] y
```

### nvm.fish
Designed for Fish, this tool helps you manage multiple active versions of Node on a single local environment.

- [jorgebucaran/nvm.fish](https://github.com/jorgebucaran/nvm.fish)

```
$ fisher install jorgebucaran/nvm.fish
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

#### git log
```
$ git config --global alias.plog "log --pretty='format:%C(yellow)%h %C(green)%cd %C(reset)%s %C(red)%d %C(cyan)[%an]' --date=iso"
$ git config --global alias.glog "log --pretty='format:%C(yellow)%h %C(green)%cd %C(reset)%s %C(red)%d %C(cyan)[%an]' --date=format:'%c' --all --graph"
```

#### commit count
```
$ git config --global alias.count 'shortlog -e -s -n'
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
### General
- Sidebar icon size: `Small`

### Trackpad
#### Point & Click
- Tap to click: `ON`
- Tracking speed: `Fast`

#### More Gestuers
- Swipe between full-screen apps: `4 fingers`
- Mission Control: `4 fingers`

### Dock
- Size: `Small`
- Magnification: `ON`
- Show recent application in Dock

### Accessibility - Speech
- System Preferences > Speech
  - System Voice: Samantha
  - Speak selected text when the key is pressed: `ON`

## Finder
### View
- Show Path Bar
- Show Status Bar

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

### Maven

```
$ sdk install maven 3.6.3
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

### Resources configuration
- Memmory
  - Default: 2GB to 12 GB (at least 6 GB)
  - Default size causes out-of-memory error to build GrateVM Native image with Spring Build Native Image (Buildpacks)

<details><summary>Memory Allocation</summary><div>
<img width="" alt="memory-12g" src="https://user-images.githubusercontent.com/3072734/95179863-2d69e600-07fc-11eb-8892-46b5d4ce7ab5.png">
</div></details>


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

## Google Cloud SDK
```shell script
$ brew cask install google-cloud-sdk
```
```
$ gcloud components list

Your current Cloud SDK version is: 308.0.0
The latest available version is: 311.0.0

┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│                                                   Components                                                  │
├──────────────────┬──────────────────────────────────────────────────────┬──────────────────────────┬──────────┤
│      Status      │                         Name                         │            ID            │   Size   │
├──────────────────┼──────────────────────────────────────────────────────┼──────────────────────────┼──────────┤
│ Update Available │ Cloud SDK Core Libraries                             │ core                     │ 15.9 MiB │
│ Not Installed    │ App Engine Go Extensions                             │ app-engine-go            │  4.8 MiB │
│ Not Installed    │ Appctl                                               │ appctl                   │ 18.5 MiB │
│ Not Installed    │ Cloud Bigtable Command Line Tool                     │ cbt                      │  7.6 MiB │
│ Not Installed    │ Cloud Bigtable Emulator                              │ bigtable                 │  6.6 MiB │
│ Not Installed    │ Cloud Datalab Command Line Tool                      │ datalab                  │  < 1 MiB │
│ Not Installed    │ Cloud Datastore Emulator                             │ cloud-datastore-emulator │ 18.4 MiB │
│ Not Installed    │ Cloud Firestore Emulator                             │ cloud-firestore-emulator │ 41.0 MiB │
│ Not Installed    │ Cloud Pub/Sub Emulator                               │ pubsub-emulator          │ 34.9 MiB │
│ Not Installed    │ Emulator Reverse Proxy                               │ emulator-reverse-proxy   │ 14.5 MiB │
│ Not Installed    │ Google Cloud Build Local Builder                     │ cloud-build-local        │  5.9 MiB │
│ Not Installed    │ Google Container Registry's Docker credential helper │ docker-credential-gcr    │  1.8 MiB │
│ Not Installed    │ Kind                                                 │ kind                     │  4.4 MiB │
│ Not Installed    │ Kustomize                                            │ kustomize                │ 22.8 MiB │
│ Not Installed    │ Minikube                                             │ minikube                 │ 23.9 MiB │
│ Not Installed    │ Nomos CLI                                            │ nomos                    │ 17.6 MiB │
│ Not Installed    │ Skaffold                                             │ skaffold                 │ 15.3 MiB │
│ Not Installed    │ anthos-auth                                          │ anthos-auth              │ 15.9 MiB │
│ Not Installed    │ gcloud app Java Extensions                           │ app-engine-java          │ 59.5 MiB │
│ Not Installed    │ gcloud app PHP Extensions                            │ app-engine-php           │ 21.9 MiB │
│ Not Installed    │ gcloud app Python Extensions                         │ app-engine-python        │  6.1 MiB │
│ Not Installed    │ gcloud app Python Extensions (Extra Libraries)       │ app-engine-python-extras │ 27.1 MiB │
│ Not Installed    │ kpt                                                  │ kpt                      │ 11.7 MiB │
│ Not Installed    │ kubectl                                              │ kubectl                  │  < 1 MiB │
│ Installed        │ BigQuery Command Line Tool                           │ bq                       │  < 1 MiB │
│ Installed        │ Cloud SQL Proxy                                      │ cloud_sql_proxy          │  7.3 MiB │
│ Installed        │ Cloud Storage Command Line Tool                      │ gsutil                   │  3.5 MiB │
│ Installed        │ gcloud Alpha Commands                                │ alpha                    │  < 1 MiB │
│ Installed        │ gcloud Beta Commands                                 │ beta                     │  < 1 MiB │
└──────────────────┴──────────────────────────────────────────────────────┴──────────────────────────┴──────────┘
To install or remove components at your current SDK version [308.0.0], run:
  $ gcloud components install COMPONENT_ID
  $ gcloud components remove COMPONENT_ID

To update your SDK installation to the latest version [311.0.0], run:
  $ gcloud components update
```

### Google Cloud SQL Proxy
```shell script
$ sudo gcloud components install cloud_sql_proxy
```

## MySQL Client
```shell script
$ brew install mysql-client
$ echo 'set -g fish_user_paths "/usr/local/opt/mysql-client/bin" $fish_user_paths' >> ~/.config/fish/config.fish
$ echo 'set -gx LDFLAGS "-L/usr/local/opt/mysql-client/lib"' >> ~/.config/fish/config.fish
$ echo 'set -gx CPPFLAGS "-I/usr/local/opt/mysql-client/include"' >> ~/.config/fish/config.fish
```

## watch command
```shell script
$ brew install watch
```

```shell script
$ echo '# watch command' >> ~/.config/fish/config.fish
$ echo 'set -g fish_user_paths "/usr/local/opt/ncurses/bin" $fish_user_paths' >> ~/.config/fish/config.fish
$ echo 'set -gx LDFLAGS "-L/usr/local/opt/ncurses/lib"' >> ~/.config/fish/config.fish
$ echo 'set -gx CPPFLAGS "-I/usr/local/opt/ncurses/include"' >> ~/.config/fish/config.fish
```

## asciinema
### Installation
```
$ brew install asciinema
```

### Recording
```
$ asciinema rec demo.cast
```

### Playing
```
$ asciinema play demo.cast
```

### asciicast2gif
This cli converts asciinema movie to GIF animation

```
$ docker run --rm -v $PWD:/data asciinema/asciicast2gif demo.cast demo.gif
```

#### asciicast2gif options
```
-t <theme>        color theme, one of: asciinema, tango, solarized-dark, solarized-light, monokai (default: asciinema)
-s <speed>        animation speed (default: 1)
-S <scale>        image scale / pixel density (default: 2)
-w <columns>      clip terminal to specified number of columns (width)
-h <rows>         clip terminal to specified number of rows (height)
```
